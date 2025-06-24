import React from "react";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";
import Loginpage from "./Myproject/Loginpage";
import Homepage from "./Myproject/Homepage";
import Signup from "./Myproject/Signup";
import Forgotpass from "./Myproject/Forgotpass";
import Cart from "./Myproject/Cart";
import OrderSummary from "./Myproject/OrderSummary";
import Payment from "./Myproject/Payment";

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/" element={<Loginpage />} />
        <Route path="/Homepage" element={<Homepage />} />
          <Route path="/Signup" element={<Signup />} />
          <Route path="/Forgot" element={<Forgotpass />} />
          <Route path="/Cart" element={<Cart/>} />
          <Route path="/ordersummary" element={<OrderSummary />} />
    <Route path="/payment" element={<Payment />} /> 
      </Routes>
    </Router>
  );
}

export default App;

