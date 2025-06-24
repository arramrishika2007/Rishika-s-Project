import React, { useState } from "react";
import { Link,useNavigate } from "react-router-dom";
import "bootstrap/dist/css/bootstrap.min.css";
import "./Loginpage.css";

function Loginpage() {
  const [mail, setMail] = useState("");
  const [pass, setPass] = useState("");
   const navigate = useNavigate();
  // const [login,setlogin]=useState(false);
  const handleSubmit = async (e) => {
    e.preventDefault();

    const data = { Email: mail, Password: pass };

      const response = await fetch("http://localhost:4000/login", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(data)
      });

      const result =await response.text();
      alert(result);
      if(result=="Login Successful"){
            localStorage.setItem("useremail", mail);
            console.log("Stored in localStorage:", localStorage.getItem("useremail")); 
         navigate("/homepage");
       }
  };
  // if(login){
  //   <Link path="/Myproject.Homepage"></Link>
  // }


  return (
    <div className="login-container d-flex justify-content-center align-items-center">
      <div className="card shadow-lg p-4">
        <div className="row">
          <div className="col-md-6 d-none d-md-block">
            <img
              src="https://bing.com/th/id/BCO.3c80d4fb-56ac-4779-b17d-a9f0eb38207b.png"
              alt="Shopping"
              className="img-fluid rounded"
            />
          </div>
          <div className="col-md-6">
            <h3 className="text-center mb-4">Login</h3>
            <form onSubmit={handleSubmit}>
              <div className="mb-3">
                <label>Email</label>
                <input
                  type="email"
                  className="form-control"
                  onChange={(e) => setMail(e.target.value)}
                />
              </div>
              <div className="mb-3">
                <label>Password</label>
                <input
                  type="password"
                  className="form-control"
                  onChange={(e) => setPass(e.target.value)}
                />
              </div>
                <button type="submit" className="btn btn-primary w-100">Login</button>
            </form>
            <p className="text-center mt-3">
              Don't have an account? <Link to="/Signup">Sign up</Link>
            </p>
            <p className="text-center mt-3">
              If you forgot your password? <Link to="/Forgot">Forgot Password</Link>
            </p>
          </div>
        </div>
      </div>
    </div>
  );
}

export default Loginpage;


