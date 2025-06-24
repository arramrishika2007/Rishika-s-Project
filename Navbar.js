import React, { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import { FaShoppingCart } from "react-icons/fa";
import "bootstrap/dist/css/bootstrap.min.css";
import "./Navbar.css";

const Navbar = () => {
  const userEmail = localStorage.getItem("useremail");
  const navigate = useNavigate();
  const handleLogout = () => {
    localStorage.clear(); // Clear session data
    navigate("/"); // Redirect to login or home
  };
  return (
    <nav className="navbar navbar-expand-lg navbar-light bg-light w-100">
      <div className="container-fluid">
        <a className="navbar-brand" href="#">
          <img
            src="https://bing.com/th/id/BCO.3c80d4fb-56ac-4779-b17d-a9f0eb38207b.png"
            alt="Logo"
            width="80"
            height="80"
          />
        </a>
        <button
          className="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarNav"
        >
          <span className="navbar-toggler-icon"></span>
        </button>
        <div className="collapse navbar-collapse" id="navbarNav">
          <ul className="navbar-nav me-auto">
            <li className="nav-item">
              <a className="nav-link" href="#">Home</a>
            </li>
            <li className="nav-item">
              <a className="nav-link" onClick={() => navigate("/orders")}>Orders</a>
            </li>
            <li className="nav-item">
              <a className="nav-link" href="#">Profile</a>
            </li>
          </ul>
          <div className="d-flex align-items-center gap-3=4">
            <span className="text-muted fw-bold">
              {userEmail}
            </span>
            <div
              className="position-relative me-3"
              style={{ cursor: "pointer" }}
              onClick={() => navigate("/cart")}
            >
              <FaShoppingCart size={25} />
            </div>
            <button className="btn btn-danger" onClick={handleLogout}>Logout</button>
          </div>
        </div>
      </div>
    </nav>
  );
};

export default Navbar;


