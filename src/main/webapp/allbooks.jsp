<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sales Page</title>
    <link rel="stylesheet" href="./css/material-design-iconic-font.css">
    <link rel="stylesheet" href="./css/style.scss">
    <style>
        body {
            color: #008040;
            background: linear-gradient(
                    rgba(0,0,0,0.65),rgba(0,0,0,0.65),rgba(0,0,0,0.38),rgba(0,0,0,0)
            )
            ,url('./img/World War Z.jpg') no-repeat;
            background-size: cover;
        }
        h1 {
            font-family: sans-serif;
            text-align: center;
            font-weight: bold;
            color: #000;
        }
        .right {
            text-align: right;
        }
        #form1 {
            text-align: center;
        }
        .normal {
            text-align: left;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
        .unormal {
            font-family: Arial, Helvetica, sans-serif;
        }
        .center1 {
            text-align: center;
        }
        .image-button {
            border: none;
            background: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
<a href="display.jsp">
    <button type="button" class="btn btn-success mt-3 mb-3">Back
        <i class="zmdi zmdi-arrow-right"></i>
    </button>
</a>
<%--1--%>
<td>
    <table width="251" height="482" border="0">
        <tr>
            <h1>Always remember, your satisfaction is our priority</h1>
        </tr>
        <tr class="normal">
            <td height="27">kids books</td>
        </tr>
<%--        1st tr--%>
        <tr>
            <td height="261">
                <table width="714" height="258" border="0">
                    <tr>
                        <td width="228">
                            <table width="120" height="173" border="0" align="center">
                                <tr>
                                    <td>
                                        <form action="shipment.jsp" method="post">
                                            <input type="hidden" name="product" value="peeny">
                                            <button type="submit" name="buy" value="peeny">
                                                <img src="./img/Your%20soul%20is%20a%20river.jpg" alt="Peeny Butter Fudge" width="114" height="165">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p class="center1">Peeny Butter Fudge</p>
                            <p class="center1">$20.00</p>
                        </td>
                        <td width="240" class="center1">
                            <table width="117" height="173" border="0" align="center">
                                <tr>
                                    <td width="111">
                                        <form action="shipment.jsp" method="post">
                                            <input type="hidden" name="product" value="lucky">
                                            <button type="submit" name="buy" value="lucky">
                                                <img src="./img/World%20War%20Z.jpg" alt="The lucky puppy" width="100" height="165">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p>The lucky puppy</p>
                            <p>$15.99</p>
                        </td>
                        <td width="240" class="center1">
                            <table width="117" height="173" border="0" align="center">
                                <tr>
                                    <td width="111">
                                        <form action="shipment.jsp" method="post">
                                            <input type="hidden" name="product" value="snowy">
                                            <button type="submit" name="buy" value="snowy">
                                                <img src="./img/World%20History.jpg" alt="The Snowy day" width="100" height="165">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p>The Snowy day</p>
                            <p>$15.99</p>
                        </td>
                        <td width="240" class="center1">
                            <table width="117" height="173" border="0" align="center">
                                <tr>
                                    <td width="111">
                                        <form action="shipment.jsp" method="post">
                                            <input type="hidden" name="product" value="winnie">
                                            <button type="submit" name="buy" value="winnie">
                                                <img src="./img/Where%20the%20forest%20meets%20the%20stars.jpg" alt="Finding Winnie" width="100" height="165">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p>Finding Winnie</p>
                            <p>$17.00</p>
                        </td>
                        <td width="224">
                            <table width="120" height="173" border="0" align="center">
                                <tr>
                                    <td>
                                        <form action="shipment.jsp" method="post">
                                            <input type="hidden" name="product" value="mouse">
                                            <button type="submit" name="buy" value="mouse">
                                                <img src="./img/The%20Calculating%20stars.jpg" alt="The mouse that was ..." width="104" height="165">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p class="center1">The mouse that was ...</p>
                            <p class="center1">$10.99</p>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
<%--        1st tr end--%>
    </table>
</td>
<%--2--%>

<td>
    <table width="725" height="684" border="0">
       <tr class="normal">
        <td height="30">Horror books</td>
       </tr>
<%--        2nd tr--%>
        <tr>
            <td height="261">
                <table width="714" height="258" border="0">
                    <tr>
                        <td width="228">
                            <table width="120" height="173" border="0" align="center">
                                <tr>
                                    <td>
                                        <form action="shipment.jsp">
                                            <input type="hidden" name="product" value="IT">
                                            <button name="buy" type="submit" value="IT">
                                                <img src="./img/The%20Silent%20Wife.jpg" alt="IT" width="114" height="165">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p class="center1">IT</p>
                            <p class="center1">$50.00</p>
                        </td>
                        <td width="240" class="center1">
                            <table width="117" height="173" border="0" align="center">
                                <tr>
                                    <td width="111">
                                        <form action="shipment.jsp">
                                            <input type="hidden" name="product" value="pet">
                                            <button name="buy" type="submit" value="pet">
                                                <img src="./img/The%20Snowy%20day.jpg" alt="Pet sematary" width="100" height="165">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p>Pet sematary</p>
                            <p>$69.99</p>
                        </td>
                        <td width="240" class="center1">
                            <table width="117" height="173" border="0" align="center">
                                <tr>
                                    <td width="111">
                                        <form action="shipment.jsp">
                                            <input type="hidden" name="product" value="war">
                                            <button name="buy" type="submit" value="war">
                                                <img src="./img/The%20Shadow%20King.jpg" alt="World War Z" width="100" height="165">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p>World War Z</p>
                            <p>$79.99</p>
                        </td>
                        <td width="240" class="center1">
                            <table width="117" height="173" border="0" align="center">
                                <tr>
                                    <td width="111">
                                        <form action="shipment.jsp">
                                            <input type="hidden" name="product" value="green">
                                            <button name="buy" type="submit" value="green">
                                                <img src="./img/The%20mouse%20that%20was%20....jpg" alt="The Green room" width="100" height="165">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p>The Green room</p>
                            <p>$45.00</p>
                        </td>
                        <td width="224">
                            <table width="120" height="173" border="0" align="center">
                                <tr>
                                    <td>
                                        <form action="shipment.jsp">
                                            <input type="hidden" name="product" value="lies">
                                            <button name="buy" type="submit" value="lies">
                                                <img src="./img/The%20Hunger%20games.jpg" alt="She Lies in Wait" width="104" height="165">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p class="center1">She Lies in Wait</p>
                            <p class="center1">$46.50</p>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
<%--        2nd tr end--%>

        <tr class="normal">
        <td height="31">HISTORY BOOKS</td>
     </tr>
<%--        3rd tr--%>
        <tr>
            <td height="261">
                <table width="714" height="258" border="0">
                    <tr>
                        <td width="228">
                            <table width="120" height="173" border="0" align="center">
                                <tr>
                                    <td>
                                        <form action="shipment.jsp" method="get">
                                            <input type="hidden" name="product" value="world">
                                            <button type="submit" name="buy">
                                                <img src="./img/The%20Calculating%20stars.jpg" alt="World History" width="114" height="165">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p class="center1">World History</p>
                            <p class="center1">$50.00</p>
                        </td>
                        <td width="240" class="center1">
                            <table width="117" height="173" border="0" align="center">
                                <tr>
                                    <td width="111">
                                        <form action="shipment.jsp" method="get">
                                            <input type="hidden" name="product" value="british">
                                            <button type="submit" name="buy">
                                                <img src="./img/Story%20of%20my%20life.jpg" alt="British Black History" width="100" height="165">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p>British Black history</p>
                            <p>$59.99</p>
                        </td>
                        <td width="240" class="center1">
                            <table width="117" height="173" border="0" align="center">
                                <tr>
                                    <td width="111">
                                        <form action="shipment.jsp" method="get">
                                            <input type="hidden" name="product" value="chicago">
                                            <button type="submit" name="buy">
                                                <img src="./img/Sincerely..jpg" alt="Chicago's Great Fire" width="100" height="165">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p>Chicago's Great Fire</p>
                            <p>$65.99</p>
                        </td>
                        <td width="240" class="center1">
                            <table width="117" height="173" border="0" align="center">
                                <tr>
                                    <td width="111">
                                        <form action="shipment.jsp" method="get">
                                            <input type="hidden" name="product" value="battles">
                                            <button type="submit" name="buy">
                                                <img src="./img/She%20Lies%20in%20Wait.jpg" alt="The Battles that Shaped Indian History" width="100" height="165">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p>The Battles that Shaped Indian history</p>
                            <p>$60.00</p>
                        </td>
                        <td width="224">
                            <table width="120" height="173" border="0" align="center">
                                <tr>
                                    <td>
                                        <form action="shipment.jsp" method="get">
                                            <input type="hidden" name="product" value="shadow">
                                            <button type="submit" name="buy">
                                                <img src="./img/Practical%20Programming.jpg" alt="The Shadow King" width="154" height="173">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p class="center1">The Shadow King</p>
                            <p class="center1">$70.50</p>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

    <%--      3rd tr end  --%>
     <tr class="normal">
        <td height="27">Academic books</td>
     </tr>
<%--        4th tr--%>
        <tr>
            <td height="261">
                <table width="714" height="258" border="0">
                    <tr>
                        <td width="228">
                            <table width="120" height="173" border="0" align="center">
                                <tr>
                                    <td>
                                        <form action="shipment.jsp">
                                            <input type="hidden" name="product" value="programming">
                                            <button name="buy" type="submit" value="programming" style="border: none; background: none; padding: 0; margin: 0;">
                                                <img src="./img/Pet%20sematary.jpg" alt="Practical Programming" width="114" height="165">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p class="center1">Practical Programming</p>
                            <p class="center1">$40.00</p>
                        </td>
                        <td width="240" class="center1">
                            <table width="117" height="173" border="0" align="center">
                                <tr>
                                    <td width="111">
                                        <form action="shipment.jsp">
                                            <input type="hidden" name="product" value="marketing">
                                            <button name="buy" type="submit" value="marketing" style="border: none; background: none; padding: 0; margin: 0;">
                                                <img src="./img/Peeny%20Butter%20Fudge.jpg" alt="Book marketing for Academics" width="100" height="165">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p>Book marketing for Academics</p>
                            <p>$50.99</p>
                        </td>
                        <td width="240" class="center1">
                            <table width="117" height="173" border="0" align="center">
                                <tr>
                                    <td width="111">
                                        <form action="shipment.jsp">
                                            <input type="hidden" name="product" value="rock">
                                            <button name="buy" type="submit" value="rock" style="border: none; background: none; padding: 0; margin: 0;">
                                                <img src="./img/If%20You%20Tell.jpg" alt="move the Rock of academic writing" width="100" height="165">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p>move the Rock of academic writing</p>
                            <p>$55.99</p>
                        </td>
                        <td width="240" class="center1">
                            <table width="117" height="173" border="0" align="center">
                                <tr>
                                    <td width="111">
                                        <form action="shipment.jsp">
                                            <input type="hidden" name="product" value="chinese">
                                            <button name="buy" type="submit" value="chinese" style="border: none; background: none; padding: 0; margin: 0;">
                                                <img src="./img/Her%20favorite%20color%20was%20yellow.jpg" alt="The new practical Chinese Reader" width="100" height="165">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p>The new practical Chinese Reader</p>
                            <p>$45.00</p>
                        </td>
                        <td width="224">
                            <table width="120" height="173" border="0" align="center">
                                <tr>
                                    <td>
                                        <form action="shipment.jsp">
                                            <input type="hidden" name="product" value="confucius">
                                            <button name="buy" type="submit" value="confucius" style="border: none; background: none; padding: 0; margin: 0;">
                                                <img src="./img/Moby%20Dick.jpg" alt="Confucius and the World He created" width="104" height="165">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p class="center1">Confucius and the World He created</p>
                            <p class="center1">$70.00</p>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

    <%--        4th tr end--%>
     <tr class="normal">
        <td height="27">Sci-fi books</td>
     </tr>
<%--        5th tr--%>
        <tr>
            <td height="261">
                <table width="714" height="258" border="0">
                    <tr>
                        <td width="228">
                            <table width="120" height="173" border="0" align="center">
                                <tr>
                                    <td>
                                        <form action="shipment.jsp">
                                            <input type="hidden" name="product" value="sun">
                                            <input name="buy" type="image" value="sun" src="./img/Black%20Sun.jpg" width="114" height="165" alt="Black Sun">
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p class="center1">Black Sun</p>
                            <p class="center1">$50.99</p>
                        </td>
                        <td width="240" class="center1">
                            <table width="117" height="173" border="0" align="center">
                                <tr>
                                    <td width="111">
                                        <form action="shipment.jsp">
                                            <input type="hidden" name="product" value="ruin">
                                            <input name="buy" type="image" value="ruin" src="./img/Children%20of%20ruin.jpg" width="100" height="165" alt="Children of Ruin">
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p>Children of ruin</p>
                            <p>$45.55</p>
                        </td>
                        <td width="240" class="center1">
                            <table width="117" height="173" border="0" align="center">
                                <tr>
                                    <td width="111">
                                        <form action="shipment.jsp">
                                            <input type="hidden" name="product" value="hunger">
                                            <input name="buy" type="image" value="hunger" src="./img/The%20Hunger%20games.jpg" width="100" height="165" alt="The Hunger Games">
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p>The Hunger games</p>
                            <p>$65.99</p>
                        </td>
                        <td width="240" class="center1">
                            <table width="117" height="173" border="0" align="center">
                                <tr>
                                    <td width="111">
                                        <form action="shipment.jsp">
                                            <input type="hidden" name="product" value="stars">
                                            <input name="buy" type="image" value="stars" src="./img/The%20Calculating%20stars.jpg" width="100" height="165" alt="The Calculating Stars">
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p>The Calculating stars</p>
                            <p>$49.99</p>
                        </td>
                        <td width="224">
                            <table width="120" height="173" border="0" align="center">
                                <tr>
                                    <td>
                                        <form action="shipment.jsp">
                                            <input type="hidden" name="product" value="vs">
                                            <input name="buy" type="image" value="vs" src="./img/Cats%20Vs%20Robots.jpg" width="104" height="165" alt="Cats Vs Robots">
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p class="center1">Cats Vs Robots</p>
                            <p class="center1">$39.99</p>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

    <%--        5th tr end--%>
     <tr class="normal">
        <td height="27">Drama books</td>
     </tr>
<%--        6th tr--%>
        <tr>
            <td height="261">
                <table width="714" height="258" border="0">
                    <tr>
                        <td width="228">
                            <table width="120" height="173" border="0" align="center">
                                <tr>
                                    <td>
                                        <form action="shipment.jsp">
                                            <input type="hidden" name="product" value="forest">
                                            <button type="submit" name="buy" value="forest" style="background: url('./img/finding Winnie.jpg') no-repeat; width: 114px; height: 165px; border: none;"></button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p class="center1">Where the forest meets the stars</p>
                            <p class="center1">$50.99</p>
                        </td>
                        <td width="240" class="center1">
                            <table width="117" height="173" border="0" align="center">
                                <tr>
                                    <td width="111">
                                        <form action="shipment.jsp">
                                            <input type="hidden" name="product" value="wife">
                                            <button type="submit" name="buy" value="wife" style="background: url('./img/The Silent Wife.jpg') no-repeat; width: 100px; height: 165px; border: none;"></button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p>The Silent Wife</p>
                            <p>$55.55</p>
                        </td>
                        <td width="240" class="center1">
                            <table width="117" height="173" border="0" align="center">
                                <tr>
                                    <td width="111">
                                        <form action="shipment.jsp">
                                            <input type="hidden" name="product" value="pieces">
                                            <button type="submit" name="buy" value="pieces" style="background: url('./img/A Hundred Pieces of me.jpg') no-repeat; width: 100px; height: 165px; border: none;"></button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p>A Hundred Pieces of me</p>
                            <p>$30.99</p>
                        </td>
                        <td width="240" class="center1">
                            <table width="117" height="173" border="0" align="center">
                                <tr>
                                    <td width="111">
                                        <form action="shipment.jsp">
                                            <input type="hidden" name="product" value="moby">
                                            <button type="submit" name="buy" value="moby" style="background: url('./img/Moby Dick.jpg') no-repeat; width: 100px; height: 165px; border: none;"></button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p>Moby Dick</p>
                            <p>$60.99</p>
                        </td>
                        <td width="224">
                            <table width="120" height="173" border="0" align="center">
                                <tr>
                                    <td>
                                        <form action="shipment.jsp">
                                            <input type="hidden" name="product" value="tell">
                                            <button type="submit" name="buy" value="tell" style="background: url('./img/If You Tell.jpg') no-repeat; width: 104px; height: 165px; border: none;"></button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p class="center1">If You Tell</p>
                            <p class="center1">$39.99</p>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

    <%--        6th tr end--%>
     <tr class="normal">
        <td height="27">Poetry books</td>
     </tr>
<%--        7th tr--%>
        <tr>
            <td height="261">
                <table width="714" height="258" border="0">
                    <tr>
                        <td width="228">
                            <table width="120" height="173" border="0" align="center">
                                <tr>
                                    <td>
                                        <form action="shipment.jsp">
                                            <input type="hidden" name="product" value="river">
                                            <button type="submit">
                                                <img src="./img/Your%20soul%20is%20a%20river.jpg" alt="Your soul is a river" width="114" height="165">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p class="center1">Your soul is a river</p>
                            <p class="center1">$19.99</p>
                        </td>
                        <td width="240" class="center1">
                            <table width="117" height="173" border="0" align="center">
                                <tr>
                                    <td width="111">
                                        <form action="shipment.jsp">
                                            <input type="hidden" name="product" value="story">
                                            <button type="submit">
                                                <img src="./img/Story%20of%20my%20life.jpg" alt="Story of my life" width="100" height="165">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p>Story of my life</p>
                            <p>$15.55</p>
                        </td>
                        <td width="240" class="center1">
                            <table width="117" height="173" border="0" align="center">
                                <tr>
                                    <td width="111">
                                        <form action="shipment.jsp">
                                            <input type="hidden" name="product" value="yellow">
                                            <button type="submit">
                                                <img src="./img/Her%20favorite%20color%20was%20yellow.jpg" alt="Her favorite color was yellow" width="100" height="165">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p>Her favorite color was yellow</p>
                            <p>$15.99</p>
                        </td>
                        <td width="240" class="center1">
                            <table width="117" height="173" border="0" align="center">
                                <tr>
                                    <td width="111">
                                        <form action="shipment.jsp">
                                            <input type="hidden" name="product" value="sincerely">
                                            <button type="submit">
                                                <img src="./img/Sincerely..jpg" alt="Sincerely." width="100" height="165">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p>Sincerely.</p>
                            <p>$15.99</p>
                        </td>
                        <td width="224">
                            <table width="120" height="173" border="0" align="center">
                                <tr>
                                    <td>
                                        <form action="shipment.jsp">
                                            <input type="hidden" name="product" value="boat">
                                            <button type="submit">
                                                <img src="./img/Build%20yourself%20a%20boat.jpg" alt="Build yourself a boat" width="104" height="165">
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                            <p class="center1">Build yourself a boat</p>
                            <p class="center1">$19.99</p>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>

    <%--        7th tr end--%>
    </table>
</td>
<form action="index.jsp">
    <button type="submit">Log Out</button>
</form>
</body>
</html>
