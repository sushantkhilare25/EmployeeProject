<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <link rel="stylesheet" href="style.css">
    
    
    <style type="text/css">
    /* Reset some default styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Body styling */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* Container for the form */
.container {
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    padding: 30px;
    width: 400px;
}

/* Form heading */
h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

/* Input field styling */
.input-group {
    margin-bottom: 15px;
}

.input-group label {
    display: block;
    font-size: 14px;
    margin-bottom: 5px;
    color: #555;
}

.input-group input,
.input-group select {
    width: 100%;
    padding: 10px;
    border: 1px solid #ddd;
    border-radius: 4px;
    font-size: 14px;
}

.input-group input:focus,
.input-group select:focus {
    border-color: #4CAF50;
    outline: none;
}

/* Button styling */
.button-group {
    text-align: center;
}

.submit-btn {
    width: 100%;
    padding: 12px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 4px;
    font-size: 16px;
    cursor: pointer;
}

.submit-btn:hover {
    background-color: #45a049;
}
    
    
    
    </style>
</head>
<body>
    <div class="container">
        <form action="update"  class="registration-form">
            <h2>Update</h2>
            
            <div class="input-group">
                <label for="id">ID:</label>
                <input type="text" id="id" name="id" value="${data.id}" >
            </div>

            <div class="input-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" value="${data.name}" >
            </div>

            <div class="input-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="uname" value="${data.uname}" >
            </div>

            <div class="input-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="pass" value="${data.pass}" >
            </div>

            <div class="input-group">
                <label for="gender">Gender:</label>
                <select id="gender" name="gender" value="${data.gender}" >
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                    <option value="other">Other</option>
                </select>
            </div>

            <div class="input-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="${data.email}" >
            </div>

            <div class="input-group">
                <label for="salary">Salary:</label>
                <input type="number" id="salary" name="salary" value="${data.salary}">
            </div>

            <div class="button-group">
                <button type="submit" class="submit-btn">Update</button>
            </div>
        </form>
    </div>
</body>
</html>
