import React, { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
function Cart() {
  const [cartItems, setCartItems] = useState([]);
  const userEmail = localStorage.getItem("useremail");
   const navigate = useNavigate();
  const fetchCart = () => {
    fetch(`http://localhost:4000/cart?user_email=${userEmail}`)
      .then((res) => res.json())
      .then((data) => setCartItems(data))
      .catch((err) => console.error("Error loading cart:", err));
  };

  useEffect(() => {fetchCart();}, [userEmail]);

  const updateQuantity = async (id, delta) => {
    const updatedQty = cartItems.find(item => item.id === id)?.quantity + delta;
    if (updatedQty < 1) return;
    await fetch("http://localhost:4000/updatecart", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ id, user_email: userEmail, quantity: updatedQty })
    });
    fetchCart();
  };

  const deleteItem = async (id) => {
    await fetch("http://localhost:4000/deletefromcart", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ id, user_email: userEmail })
    }).then(fetchCart());
  };

  const totalPrice = cartItems.reduce((sum, item) => sum + item.cost * item.quantity, 0);

  return (
    <div className="container py-4">
      <h2 className="mb-4">🛒 Your Cart</h2>
      {cartItems.length === 0 ? (
        <p>No items in the cart.</p>
      ) : (
        <div className="row">
          {cartItems.map((item, index) => (
            <div key={index} className="col-md-6 mb-4">
              <div className="card">
                <div className="row g-0 align-items-center">
                  <div className="col-md-4">
                    <img src={item.image_address} alt="Product" className="img-fluid rounded-start" />
                  </div>
                  <div className="col-md-8">
                    <div className="card-body">
                      <h5 className="card-title">{item.brand}</h5>
                      <p className="card-text">Rs.{item.cost}</p>
                      <p className="card-text">{item.fit}</p>
                      <div className="btn-group">
                        <button className="btn btn-outline-secondary" onClick={() => updateQuantity(item.id, -1)}>-</button>
                        <span className="btn btn-light">{item.quantity}</span>
                        <button className="btn btn-outline-secondary" onClick={() => updateQuantity(item.id, 1)}>+</button>
                      </div>
                      <button className="btn btn-danger ms-3" onClick={() => deleteItem(item.id)}>Delete</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          ))}
          <div className="col-12 text-end">
            <h4>Total: ₹{totalPrice}</h4>
            <button className="btn btn-primary mt-3" onClick={() => navigate("/ordersummary")}>Proceed to Order Summary</button>
          </div>
        </div>

      )}
    </div>
  );
}

export default Cart;

