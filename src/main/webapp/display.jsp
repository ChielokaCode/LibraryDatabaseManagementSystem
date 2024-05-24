<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Main Page</title>
    <link rel="stylesheet" href="./css/material-design-iconic-font.css">
    <link rel="stylesheet" href="./css/style.scss">
    <link rel="stylesheet" href="./css/displayP.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
    <link rel="stylesheet" href="./css/displayp2.css">
    <style>
        .w3-sidebar a {font-family: "Roboto", sans-serif}
        body,h1,h2,h3,h4,h5,h6,.w3-wide {font-family: "Montserrat", sans-serif;}
    </style>
</head>
<body class="w3-content" style="max-width:1200px">

<!-- Sidebar/menu -->
<nav class="w3-sidebar w3-bar-block w3-white w3-collapse w3-top" style="z-index:3;width:250px" id="mySidebar">
    <div class="w3-container w3-display-container w3-padding-16">
        <i onclick="w3_close()" class="fa fa-remove w3-hide-large w3-button w3-display-topright"></i>
        <h3 class="w3-wide"><b>WELCOME</b></h3>
    </div>
    <div class="w3-padding-64 w3-large w3-text-grey" style="font-weight:bold">
        <a href="authors.jsp" class="w3-bar-item w3-button">Authors</a>
        <a onclick="myAccFunc()" href="javascript:void(0)" class="w3-button w3-block w3-white w3-left-align" id="myBtn">
            GENRES <i class="fa fa-caret-down"></i>
        </a>
        <div id="demoAcc" class="w3-bar-block w3-hide w3-padding-large w3-medium">
            <a href="rent.jsp" class="w3-bar-item w3-button w3-light-grey"><i class="fa fa-caret-right w3-margin-right"></i>Rent a book</a>
        </div>
        <a href="allbooks.jsp" class="w3-bar-item w3-button">Kids Books</a>
        <a href="allbooks.jsp" class="w3-bar-item w3-button">Sci-fi Books</a>
        <a href="allbooks.jsp" class="w3-bar-item w3-button">Poetry</a>
        <a href="allbooks.jsp" class="w3-bar-item w3-button">Drama</a>
    </div>
    <a href="contact.jsp" class="w3-bar-item w3-button w3-padding">Contact</a>
    <a href="index.jsp"  class="w3-bar-item w3-button w3-padding">Log out</a>
</nav>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:250px">

    <!-- Top header -->
    <header class="w3-container w3-xlarge">
        <p class="w3-left">General Collection</p>
        <p class="w3-right">
        </p>
    </header>

    <!-- Image header -->
    <div class="w3-display-container w3-container">
        <img src="./img/Cats%20Vs%20Robots.jpg" alt="Kids Books" style="width:100%">
        <div class="w3-display-topleft w3-text-white" style="padding:24px 48px">
            <h1 class="w3-jumbo w3-hide-small">New Arrivals</h1>
            <h1 class="w3-hide-large w3-hide-medium">New Arrivals</h1>
            <h1 class="w3-hide-small">Classics</h1>
            <p><a href="allbooks.jsp" class="w3-button w3-black w3-padding-large w3-large">SHOP NOW</a></p>
        </div>
    </div>

    <div class="w3-row w3-grayscale">
        <div class="w3-col l3 s6">
            <div class="w3-container">
                <a href="shipment.jsp">
                    <img src="./img/move%20the%20Rock%20of%20academic%20writing.jpg" style="width:100%"></a>
                <p>Harry Potter Collection<br><b>$30.99</b></p>
            </div>
            <div class="w3-container">
                <a href="shipment.jsp">
                    <img src="./img/A%20Hundred%20Pieces%20of%20me.jpg" style="width:100%"></a>
                <p>Stephen King Horror Collection<br><b>$60.00</b></p>
            </div>
        </div>
        <div class="w3-col l3 s6">
            <div class="w3-container">
                <div class="w3-display-container">
                    <img src="./img/Battles%20that%20Shaped%20Indian%20history.jpg" style="width:100%">
                    <span class="w3-tag w3-display-topleft">New</span>
                    <div class="w3-display-middle w3-display-hover">
                        <p><a href="rent.jsp" class="w3-button w3-black w3-padding-large w3-large">RENT NOW</a></p>
                    </div>
                </div>
                <p>William Shakespeare Collection<br><b>$50.00</b></p>
            </div>
            <div class="w3-container">
                <a href="shipment.jsp">
                    <img src="./img/Black%20Sun.jpg" style="width:100%"></a>
                <p>Romeo & Juliet<br><b>$30.50</b></p>
            </div>
        </div>
        <div class="w3-col l3 s6">
            <div class="w3-container">
                <a href="shipment.jsp">
                    <img src="./img/Book%20marketing%20for%20Academics.jpg" style="width:100%"></a>
                <p>Macbeth<br><b>$20.50</b></p>
            </div>
            <div class="w3-container">
                <div class="w3-display-container">
                    <img src="./img/Book%20marketing%20for%20Academics.jpg" style="width:100%">
                    <span class="w3-tag w3-display-topleft">Sale</span>
                    <div class="w3-display-middle w3-display-hover">
                        <button class="w3-button w3-black">Buy now <i class="fa fa-shopping-cart"></i></button>
                    </div>
                </div>
                <p>Lord of the Flies<br><b class="w3-text-red">$40.99</b></p>
            </div>
        </div>
        <div class="w3-col l3 s6">
            <div class="w3-container">
                <a href="shipment.jsp">
                    <img src="./img/British%20Black%20history.jpg" style="width:100%" alt=""></a>
                <p>Introduction to Computer Science<br><b>$50.99</b></p>
            </div>
            <div class="w3-container">
                <a href="shipment.jsp">

                    <img src="./img/Build%20yourself%20a%20boat.jpg" style="width:100%" alt=""></a>
                <p>Learn Chinese<br><b>$25.99</b></p>
            </div>
        </div>
    </div>
    <!-- Subscribe section -->
    <div class="w3-container w3-black w3-padding-32">
        <h1>Subscribe</h1>
        <p>To get special offers and VIP treatment:</p>
        <p><input class="w3-input w3-border" type="text" placeholder="Enter e-mail" style="width:100%"></p>
        <button type="button" class="w3-button w3-red w3-margin-bottom">Subscribe</button>
    </div>
    <!-- Footer -->
    <footer class="w3-padding-64 w3-light-grey w3-small w3-center" id="footer">
        <div class="w3-row-padding">
            <div class="w3-col s4">
                <h4>About</h4>
                <p><a href="aboutus.jsp">About us</a></p>
            </div>
            <div class="w3-col s4 w3-justify">
                <h4>Contact Us</h4>
                <p><i class="fa fa-fw fa-map-marker"></i> SiJie's Libraries</p>
                <p><i class="fa fa-fw fa-phone"></i> +86 13591416972,+234 8037417321</p>
                <p><i class="fa fa-fw fa-envelope"></i> stephen.keyen@yahoo.com</p>
                <h4>We Accept</h4>
                <p><i class="fa fa-fw fa-cc-amex"></i> Wechat/Alipay</p>
                <p><i class="fa fa-fw fa-credit-card"></i> Credit Card/Transfer</p>
                <br>
                <a href="#" class="fa fa-facebook-official w3-hover-opacity w3-large"></a>
                <a href="#" class="fa fa-instagram w3-hover-opacity w3-large"></a>
                <a href="#" class="fa fa-snapchat w3-hover-opacity w3-large"></a>
                <a href="#" class="fa fa-pinterest-p w3-hover-opacity w3-large"></a>
                <a href="#" class="fa fa-twitter w3-hover-opacity w3-large"></a>
                <a href="#" class="fa fa-linkedin w3-hover-opacity w3-large"></a>
            </div>
        </div>
    </footer>
    <div class="w3-black w3-center w3-padding-24">Powered by <a href="https://www.Sijielibrary.com" title="W3.CSS" target="_blank" class="w3-hover-opacity">Sijie's Libraries</a></div>

    <!-- End page content -->
</div>

<script>
    // Accordion
    function myAccFunc() {
        var x = document.getElementById("demoAcc");
        if (x.style.display === "block") {
            x.style.display = "none";
        } else {
            x.style.display = "block";
        }
    }

    // Click on the "Jeans" link on page load to open the accordion for demo purposes
    document.getElementById("myBtn").click();
    // Open and close sidebar
    function w3_open() {
        document.getElementById("mySidebar").style.display = "block";
        document.getElementById("myOverlay").style.display = "block";
    }
    function w3_close() {
        document.getElementById("mySidebar").style.display = "none";
        document.getElementById("myOverlay").style.display = "none";
    }
</script>
</body>
</html>


