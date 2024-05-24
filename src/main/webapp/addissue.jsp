<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<HTML>
<HEAD>
    <link rel="stylesheet" href="./css/material-design-iconic-font.css">
    <link rel="stylesheet" href="./css/style.scss">
    <style type="text/css">
        body {
            font-family: verdana, serif;
            color: black;
            background-color: white;
            background-size: cover;
        }
    </style>
    <title>Add Issue</title>
</HEAD>
<BODY bgcolor="#ffffcc">
<FORM action="issued-book?admin=issuedBook" method="post" name="myform">
    <TABLE style="background-color: #ECE5B6;" WIDTH="30%">
        <TR>
            <TH width="50%">Full Name</TH>
            <TD width="50%"><INPUT TYPE="text" name="full_name"></TD>
        </TR>
        <TR>
            <TH width="50%">Book</TH>
            <TD width="50%"><INPUT TYPE="text" name="book"></TD>
        </TR>
        <TR>
            <TH width="50%">Username</TH>
            <TD width="50%"><INPUT TYPE="text" name="user_name"></TD>
        </TR>
        <TR>
            <TH width="50%">Issue Date</TH>
            <TD width="50%"><INPUT TYPE="text" name="issued_date"></TD>
        </TR>
        <TR>
            <TH width="50%">Due Date</TH>
            <TD width="50%"><INPUT TYPE="text" name="due_date"></TD>
        </TR>
        <TR>
            <TH width="50%">Return Date</TH>
            <TD width="50%"><INPUT TYPE="text" name="returned"></TD>
        </TR>
        <TR>
            <TH></TH>
            <TD width="50%"><button type="submit" name="add-issue" VALUE="Submit">Submit</button></TD>
        </TR>
    </TABLE>
    <div style="text-align: center;">
        <h2><a href="issuedbooks.jsp">Back</a></h2>
    </div>
</FORM>
</BODY>
</HTML>

