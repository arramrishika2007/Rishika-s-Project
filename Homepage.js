import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import Navbar from "./Navbar";
import './App.css';

function Homepage() {
  const [cat, setCategory] = useState('');
  const [result, setResult] = useState(null);
  const navigate = useNavigate();
  const handleSubmit = async (e) => {
    e.preventDefault();
    const data = { Category: cat };
    const response = await fetch("http://localhost:4000/getdetails", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(data)
    });
    const msg = await response.json();
    setResult(msg);
  };

  const handleAddToCart = async (item) => {
      const userEmail = localStorage.getItem("useremail");
        console.log("Email from localStorage:",userEmail);
    if (!userEmail) {
    alert("Please log in to add items to cart.");
    return;
  }
    const cartItem = {
      id: item.id,
      user_email: userEmail,
      quantity: 1
    };
    try {
      const response = await fetch("http://localhost:4000/addtocart", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(cartItem)
      });
      const text = await response.text();
      console.log("Cart insert response:", text);
      alert("Added to cart!");
    } catch (error) {
      console.error("Error adding item to cart:", error);
      alert("Failed to add to cart.");
    }
  };

  return (
    <div className="container">
      <Navbar />
      <div className="container mt-4">
      <form className="row mb-4" onSubmit={handleSubmit}>
        <div className="col-auto">
          <select className="form-select" value={cat} onChange={(e) => setCategory(e.target.value)}>
            <option value="">-- Select Category --</option>
            <option value="Dress">Dress</option>
            <option value="Blazer">Blazers</option>
            <option value="Jacket">Jacket</option>
            <option value="Kurti">Kurti</option>
            <option value="Saree">Sarees</option>
            <option value="Track Pants">Track Pant</option>
            <option value="Palazzo">Palazzo</option>
            <option value="Top">Top</option>
            <option value="T-Shirt">T-Shirt</option>
            <option value="Jeans">Jeans</option>
          </select>
        </div>
        <div className="col-auto">
          <button type="submit" className="btn btn-outline-secondary">Filter</button>
        </div>
      </form>
       {result?.length > 0 ? (
      <div className="row">
        {result && result.map((x, i) => (
          <div key={i} className="col-md-4 mb-4">
            <div className="card h-100">
              <img src={x.image_address} className="card-img-top fixed-size-img" alt={x.brand} />
              <div className="card-body">
                <h5 className="card-title">{x.brand}</h5>
                <p className="card-text">Rs.{x.cost}</p>
                <p className="card-text">{x.fit}</p>
                <button className="btn btn-success w-100" onClick={() => handleAddToCart(x)}>Add to cart</button>
              </div>
            </div>
          </div>
        ))}
      </div>
       ):(
        <div className="text-center mt-4">
            <p className="text-muted">No items to display. Select a category above.</p>
          </div>
        )}
      </div>
    </div>
  );
}

export default Homepage;

