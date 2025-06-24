// OrderSummary.js
import React, { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import Navbar from "./Navbar";

function OrderSummary() {
  const [cartItems, setCartItems] = useState([]);
  const navigate = useNavigate();
  const email = localStorage.getItem("useremail");

  useEffect(() => {
    fetch(`http://localhost:4000/cart?user_email=${email}`)
      .then(res => res.json())
      .then(data => setCartItems(data));
  }, [email]);

  const total = cartItems.reduce((s,i) => s + i.cost * i.quantity, 0);

  return (
    <div className="container py-4">
      <Navbar />
      <h3>🧾 Order Summary</h3>
      <ul className="list-group mb-3">
        {cartItems.map(item =>
          <li key={item.id} className="list-group-item d-flex justify-content-between">
            <div><strong>{item.brand}</strong><br/>Qty: {item.quantity}</div>
            <span>₹{item.cost * item.quantity}</span>
          </li>
        )}
        <li className="list-group-item d-flex justify-content-between">
          <strong>Total</strong><strong>₹{total}</strong>
        </li>
      </ul>
      <button className="btn btn-success" onClick={() => navigate("/payment")}>Proceed to Payment</button>
    </div>
  );
}

export default OrderSummary;
