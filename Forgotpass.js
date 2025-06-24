import React, { useState } from "react";
import "bootstrap/dist/css/bootstrap.min.css";
import "./Loginpage.css";

function Forgotpass() {
  const [mail, setMail] = useState("");
  
  const handleSubmit = async (e) => {
    e.preventDefault();

    const data = { Email: mail };

      const response = await fetch("http://localhost:4000/forgot", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify(data)
      });

      const result = await  response.text();
      alert(result);
  };


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
            <h3 className="text-center mb-4">Forgot Password</h3>
            <form onSubmit={handleSubmit}>
              <div className="mb-3">
                <label>Email</label>
                <input
                  type="email"
                  className="form-control"
                  onChange={(e) => setMail(e.target.value)}
                />
              </div>
              <button type="submit" className="btn btn-primary w-100">Reset Password</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  );
}

export default Forgotpass;
