<%@ page import="org.apache.commons.text.StringEscapeUtils" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registration Result</title>
</head>
<body>
    <h2>Registration received</h2>
    <p>Name: <%= StringEscapeUtils.escapeHtml4((String) request.getAttribute("studentName")) %></p>
    <p>Email: <%= StringEscapeUtils.escapeHtml4((String) request.getAttribute("email")) %></p>
    <p>Department: <%= StringEscapeUtils.escapeHtml4((String) request.getAttribute("department")) %></p>
    <a href="index.jsp">Register another student</a>
</body>
</html>
