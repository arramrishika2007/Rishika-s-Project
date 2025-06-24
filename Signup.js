import React, { useState } from "react";
import { Link } from "react-router-dom";
import "bootstrap/dist/css/bootstrap.min.css";
import "./Signup.css";

function Signup() {
  const [formData, setFormData] = useState({
    firstName: "",
    lastName: "",
    email: "",
    phone: "",
    gender: "",
    dob: "",
    address: "",
    city: "",
    state: "",
    zipCode: "",
    country: "India",
    password: ""
  });

  const handleChange = (e) => {
    setFormData({ ...formData, [e.target.name]: e.target.value });
  };

  const handleSubmit = async (e) => {
    e.preventDefault();

    const response = await fetch("http://localhost:4000/submit", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(formData),
    });

    const result =await  response.text();
    alert(result);
    // if (result) {
    //   alert("Signup successful! Please login.");
    // } else {
    //   alert("Signup failed. Try again.");
    // }
  };

  return (
    <div className="signup-container d-flex justify-content-center align-items-center">
      <div className="card shadow-lg p-4 w-75">
        <div className="row">
          <div className="col-md-6 d-none d-md-block">
            <img
              src="https://bing.com/th/id/BCO.3c80d4fb-56ac-4779-b17d-a9f0eb38207b.png"
              alt="Shopping"
              className="img-fluid rounded"
            />
          </div>
          <div className="col-md-6">
            <h3 className="text-center mb-4">Sign Up</h3>
            <form onSubmit={handleSubmit}>
              <div className="row">
                <div className="mb-3 col-md-6">
                  <label>First Name</label>
                  <input type="text" name="firstName" className="form-control" required onChange={handleChange} />
                </div>
                <div className="mb-3 col-md-6">
                  <label>Last Name</label>
                  <input type="text" name="lastName" className="form-control" required onChange={handleChange} />
                </div>
              </div>
              <div className="mb-3">
                <label>Email</label>
                <input type="email" name="email" className="form-control" required onChange={handleChange} />
              </div>
              <div className="mb-3">
                <label>Phone</label>
                <input type="text" name="phone" className="form-control" required onChange={handleChange} />
              </div>
              <div className="mb-3">
                <label>Gender</label>
                <select name="gender" className="form-control" required onChange={handleChange}>
                  <option value="">Select Gender</option>
                  <option value="Male">Male</option>
                  <option value="Female">Female</option>
                  <option value="Other">Other</option>
                </select>
              </div>
              <div className="mb-3">
                <label>Date of Birth</label>
                <input type="date" name="dob" className="form-control" required onChange={handleChange} />
              </div>
              <div className="mb-3">
                <label>Address</label>
                <input type="text" name="address" className="form-control" required onChange={handleChange} />
              </div>
              <div className="row">
                <div className="mb-3 col-md-6">
                  <label>City</label>
                  <input type="text" name="city" className="form-control" required onChange={handleChange} />
                </div>
                <div className="mb-3 col-md-6">
                  <label>State</label>
                  <input type="text" name="state" className="form-control" required onChange={handleChange} />
                </div>
              </div>
              <div className="row">
                <div className="mb-3 col-md-6">
                  <label>Zip Code</label>
                  <input type="text" name="zipCode" className="form-control" required onChange={handleChange} />
                </div>
                <div className="mb-3 col-md-6">
                  <label>Country</label>
                  <input type="text" name="country" className="form-control" value="India" disabled />
                </div>
                <div className="mb-3 col-md-6">
                  <label>Password:</label>
                  <input type="password" name="Password" className="form-control"  required onChange={handleChange} />
                </div>
              </div>
              <button type="submit" className="btn btn-primary w-100">Sign Up</button>
            </form>
            <p className="mt-3">Already have an account? <Link to="/">Login here</Link></p>
          </div>
        </div>
      </div>
    </div>
  );
}

export default Signup;
