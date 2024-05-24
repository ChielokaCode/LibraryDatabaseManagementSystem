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
    <title>Add Librarian</title>
</HEAD>
<BODY bgcolor="#ffffcc">
<FORM action="librarian?admin=librarian" method="post" name="myform">
    <TABLE style="background-color: #ECE5B6;" WIDTH="30%">
        <TR>
            <TH width="50%">Name</TH>
            <TD width="50%"><INPUT TYPE="text" name="name" required></TD>
        </TR>
        <TR>
            <TH width="50%">Email</TH>
            <TD width="50%"><INPUT TYPE="email" name="email" required></TD>
        </TR>
        <TR>
            <TH width="50%">Days</TH>
            <TD width="50%"><INPUT TYPE="text" name="days" required></TD>
        </TR>
        <TR>
            <TH width="50%">Type</TH>
            <TD width="50%"><INPUT TYPE="text" name="type" required></TD>
        </TR>
        <TR>
            <TH></TH>
            <TD width="50%"><button type="submit" name="btn_add" VALUE="Submit">Submit</button></TD>
        </TR>
    </TABLE>
    <div style="text-align: center;">
        <h2><a href="librarian.jsp">Back</a></h2>
    </div>
</FORM>
</BODY>
</HTML>

