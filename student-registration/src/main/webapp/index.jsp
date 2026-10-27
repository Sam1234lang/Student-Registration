<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Student Registration</title>
</head>
<body>
    <h2>Student Registration</h2>
    <form action="register" method="post">
        <label for="studentName">Name:</label>
        <input id="studentName" type="text" name="studentName" required>
        <br><br>

        <label for="email">Email:</label>
        <input id="email" type="email" name="email" required>
        <br><br>

        <label for="department">Department:</label>
        <select id="department" name="department" required>
            <option value="CSE">CSE</option>
            <option value="IT">IT</option>
            <option value="ECE">ECE</option>
            <option value="CYBER">Cyber Security</option>
        </select>
        <br><br>

        <button type="submit">Register</button>
    </form>
</body>
</html>
