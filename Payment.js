// Payment.js
import React, { useState } from "react";
import { useNavigate } from "react-router-dom";
import Navbar from "./Navbar";

function Payment() {
  const [address, setAddress] = useState("");
  const navigate = useNavigate();
  const email = localStorage.getItem("useremail");

  const handleOrder = () => {
    fetch(`http://localhost:4000/cart?user_email=${email}`)
      .then(res => res.json())
      .then(items => {
        fetch("http://localhost:4000/placeorder", {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ user_email: email, items, payment_mode: "COD", address })
        })
        .then(res => res.text())
        .then(msg => {
          alert(msg);
          navigate("/homepage");
        });
      });
  };

  return (
    <div className="container py-4">
      <Navbar />
      <h3>💳 Payment (Cash on Delivery)</h3>

      <div className="mb-3">
        <label className="form-label">Delivery Address</label>
        <textarea className="form-control" rows="3" value={address} onChange={e => setAddress(e.target.value)} />
      </div>
      <button className="btn btn-primary" onClick={handleOrder}>Place Order (COD)</button>
    </div>
  );
}

export default Payment;

