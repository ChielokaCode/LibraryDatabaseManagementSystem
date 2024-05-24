<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact us</title>
    <link rel="stylesheet" href="./css/contact.css">
</head>
<body>
<div class="container">
    <h1>Contact us</h1>
    <p>We would love to respond to your queries and help you enjoy your
        time at our library.<br>Feel free to get in touch with us.</p>
    <div class="contact-box">
        <div class="contact-left">
            <h3>Send in Your request</h3>
            <form action="#" method="post">
                <div class="input-row">
                    <div class="input-group">
                        <label for="name">Name</label>
                        <input type="text" id="name" name="name" placeholder="Full Name" required>
                    </div>
                    <div class="input-group">
                        <label for="phone">Phone</label>
                        <input type="tel" id="phone" name="phone" placeholder="Phone Number" required>
                    </div>
                </div>
                <div class="input-row">
                    <div class="input-group">
                        <label for="email">Email</label>
                        <input type="email" id="email" name="email" placeholder="xxxxx@xxx.com" required>
                    </div>
                    <div class="input-group">
                        <label for="subject">Subject</label>
                        <input type="text" id="subject" name="subject" placeholder="Issue" required>
                    </div>
                </div>
                <label for="message">Message</label>
                <textarea id="message" name="message" rows="5" placeholder="Your Message" required></textarea>
                <button type="submit">SEND</button>
            </form>
        </div>
        <div class="contact-right">
            <h3>Reach Us</h3>
            <table>
                <tr>
                    <td>Email</td>
                    <td>stephen.keyen@yahoo.com</td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td>+86 13591416972</td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>No 18 puchang road,<br>
                        new shenbei District,<br>
                        Shenyang,Liaoning province.<br>
                        China.
                    </td>
                </tr>
            </table>
        </div>
    </div>
</div>
</body>
</html>
