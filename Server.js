const express = require("express");
const cors = require("cors");
const bodyParser = require("body-parser");
const mysql = require("mysql");
const nodemailer = require("nodemailer");



const app = express();
app.use(cors());
app.use(bodyParser.json());



const transporter=nodemailer.createTransport({
  service:"gmail",
  auth:{user:"",pass:""}
 })



const conn = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: "trendy"
});


app.post("/submit", (req, res) => {
  const data = req.body;
  const sql =`INSERT INTO clothstore( first_name, last_name, email, phone, gender, date_of_birth, address, city, state, zip_code, country,password) VALUES ('${data.firstName}','${data.lastName}','${data.email}','${data.phone}','${data.gender}','${data.dob}','${data.address}','${data.city}','${data.state}','${data.zipCode}','${data.country}','${data.password}')`;
 console.log(sql);
 console.log(data);
  conn.query(sql, (err, result) => {
    if (err) {
      console.log(err);
      res.send("Inserted failed");
    }
    else{  
      const option={
          from:"arramrishika8@gmail.com",
          to:data.email,
          subject:" Registration Details",
          text:`Dear ${data.firstName} ${data.lastName} \n\n welcome to Rishika Cloth Stores \n\n Your credentials are: \n\nUsername:${data.email} \n\nPassword: 12345\n\n Note: Update your credentials`
      }
         transporter.sendMail(option,(err,info)=>{
          if(err){
            console.log("Failed to send")
          }
          res.send("Registered successfully. Sent credentials to your email");
        })

    }

  });
});
app.post("/forgot", (req, res) => {
  const data = req.body;
  const sql =`select first_name,last_name,password from clothstore where email='${data.Email}'`;
  conn.query(sql, (err, result) => {
    console.log(result[0]);
    if (err) {
      console.log(err);
      res.send("Email Verification Failed");
    }
    else{  
      const option={
          from:"arramrishika8@gmail.com",
          to:data.Email,
          subject:"Password Recovery",
          text:`Dear ${result[0].first_name} ${result[0].last_name} \n\n Your Password is : ${result[0].password}`
      }
         transporter.sendMail(option,(err,info)=>{
          if(err){
            console.log("Failed to send")
          }
         res.send("An email has been sent to you with your credentials");
        })

    }

  });
});


app.post("/login",(req,res)=>{
   const data = req.body;
  const sql =  `select password from clothstore where email='${data.Email}'`;
  conn.query(sql, (err, result) => {
    if (err) {
      console.log(err);
       res.send("Login failed");
    }
    res.send("Login Successful");
  });
})

app.post("/getdetails", (req, res) => {
  const data = req.body;
  let sql=`SELECT * FROM products_sample WHERE type = '${data.Category}'`;

  conn.query(sql,(err, result) => {
    if (err) {
      console.error(err);
    }
   res.json(result);
  });
});
app.post("/addtocart", (req, res) => {
  const { id, user_email, quantity } = req.body;
  conn.query("SELECT quantity FROM cart WHERE id = ? AND user_email = ?", [id, user_email], (e,r) => {
    if(e) return res.status(500).send("Error");
    if(r.length) {
      conn.query("UPDATE cart SET quantity = quantity + ? WHERE id = ? AND user_email = ?", [quantity, id, user_email], e2 => e2 ? res.status(500).send("Error") : res.send("Qty updated"));
    } else {
      conn.query("INSERT INTO cart (id, user_email, quantity) VALUES (?,?,?)", [id, user_email, quantity], e2 => e2 ? res.status(500).send("Error") : res.send("Added"));
    }
  });
});

app.get("/cart", (req, res) => {
  const user = req.query.user_email;
  conn.query(`
    SELECT c.id, c.quantity, p.brand, p.cost, p.fit, p.image_address
    FROM cart c JOIN products_sample p ON c.id = p.id
    WHERE c.user_email = ?
  `, [user], (e,r) => e ? res.status(500).send("Error") : res.json(r));
});

app.post("/updatecart", (req, res) => {
  const { id, user_email, quantity } = req.body;
  conn.query("UPDATE cart SET quantity = ? WHERE id = ? AND user_email = ?", [quantity, id, user_email], e => e ? res.status(500).send("Error") : res.send("Updated"));
});

app.post("/deletecart", (req, res) => {
  const { id, user_email } = req.body;
  conn.query("DELETE FROM cart WHERE id = ? AND user_email = ?", [id, user_email], e => e ? res.status(500).send("Error") : res.send("Deleted"));
});

app.post("/placeorder", (req, res) => {
  const { user_email, items, payment_mode, address } = req.body;
  const sql = "INSERT INTO orders (user_email, item_id, quantity, payment_mode, address) VALUES ?";
  const data = items.map(i => [user_email, i.id, i.quantity, payment_mode, address]);

  conn.query(sql, [data], (e) => {
    if(e) return res.status(500).send("Failed");
    conn.query("DELETE FROM cart WHERE user_email = ?", [user_email]);
    let itemsHtml = items.map(item => `
  <tr>
    <td><img src="${item.image_address}" alt="${item.brand}" width="80" /></td>
    <td>${item.brand}</td>
    <td>${item.fit}</td>
    <td>₹${item.cost}</td>
    <td>${item.quantity}</td>
  </tr>
`).join("");
    const mailOptions = {
      from: "your@gmail.com",
      to: user_email,
      subject: "Your Order Placed!",
      html: `
    <h2>Thank you for your order!</h2>
    <p>Here are the details of your purchase:</p>
    <table style="border-collapse: collapse; width: 100%;">
      <thead>
        <tr>
          <th style="border-bottom: 1px solid #ddd; padding: 8px;">Image</th>
          <th style="border-bottom: 1px solid #ddd; padding: 8px;">Brand</th>
          <th style="border-bottom: 1px solid #ddd; padding: 8px;">Fit</th>
          <th style="border-bottom: 1px solid #ddd; padding: 8px;">Price</th>
          <th style="border-bottom: 1px solid #ddd; padding: 8px;">Quantity</th>
        </tr>
      </thead>
      <tbody>
        ${itemsHtml}
      </tbody>
    </table>
    <p><strong>Total:</strong> ₹${items.reduce((sum, i) => sum + i.cost * i.quantity, 0)}</p>
    <p>Payment Method: <strong>Cash on Delivery</strong></p>
    <p>Delivery Address: ${address}</p>
    <p>We will notify you when your items are shipped!</p>
  `
    };
    transporter.sendMail(mailOptions, (err, info) => {
      if(err) console.log(err);
    });
    res.send("Order placed and email sent!");
  });
});

app.listen(4000, () => {
  console.log("Server running at http://localhost:4000/");
});
