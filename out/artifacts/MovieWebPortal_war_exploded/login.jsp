<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 01.03.2019
  Time: 0:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.4.2.min.js" type="text/javascript"></script>
    <script src="js/cufon-yui.js" type="text/javascript"></script>
    <script src="js/cufon-replace.js" type="text/javascript"></script>
    <script src="js/Gill_Sans_400.font.js" type="text/javascript"></script>
    <script src="js/script.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/ie_png.js"></script>
    <script type="text/javascript">ie_png.fix('.png, .link1 span, .link1');</script>
    <link href="css/ie6.css" rel="stylesheet" type="text/css" />
</head>
<body id="page5">
<form action="/login" method="post">

    Email: <input type="text" name="email" /><br>
    Password: <input type="password" name="password" /><br>
    <input type="submit" value="Login"><br><br>

</form>
<div class="tail-top">
    <div class="tail-bottom">
        <div id="main">
            <div id="header">
                <div class="row-1">
                    <div class="fleft"><a href="#">Cinema <span>World</span></a></div>
                    <ul>
                        <li><a href="#"><img src="images/icon1.gif" alt="" /></a></li>
                        <li><a href="#"><img src="images/icon2-act.gif" alt="" /></a></li>
                        <li><a href="#"><img src="images/icon3.gif" alt="" /></a></li>
                    </ul>
                </div>
                <div class="row-2">
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li><a href="about-us.html">About</a></li>
                        <li><a href="movies.jsp">Articles</a></li>
                        <li><a href="contact-us.html" class="active">Contacts</a></li>
                        <li class="last"><a href="allGanres.jsp">Sitemap</a></li>
                    </ul>
                </div>
            </div>
            <div id="content">
                <div class="line-hor"></div>
                <div class="box">
                    <div class="border-right">
                        <div class="border-left">
                            <div class="inner">
                                <h3>Our <span>Contacts</span></h3>
                                <div class="address">
                                    <div class="fleft"><span>Zip Code:</span>50122<br />
                                        <span>Country:</span>USA<br />
                                        <span>Telephone:</span>+354 5635600<br />
                                        <span>Fax:</span>+354 5635610</div>
                                    <div class="extra-wrap"><span>Miscellaneous info:</span><br />
                                        Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur.</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="content">
                    <h3>Contact <span>Form</span></h3>
                    <form id="contacts-form" action="#">
                        <fieldset>
                            <div class="field">
                                <label>Your Name:</label>
                                <input type="text" value=""/>
                            </div>
                            <div class="field">
                                <label>Your E-mail:</label>
                                <input type="text" value=""/>
                            </div>
                            <div class="field">
                                <label>Your Website:</label>
                                <input type="text" value=""/>
                            </div>
                            <div class="field">
                                <label>Your Message:</label>
                                <textarea cols="1" rows="1"></textarea>
                            </div>
                            <div class="wrapper"> <a href="#" class="link2"> <span> <span>Send Your Message</span> </span> </a> </div>
                        </fieldset>
                    </form>
                </div>
            </div>
            <div id="footer">
                <div class="left">
                    <div class="right">
                        <div class="footerlink">
                            <p class="lf">Copyright &copy; 2010 <a href="#">SiteName</a> - All Rights Reserved</p>
                            <p class="rf">Design by <a href="http://www.templatemonster.com/">TemplateMonster</a></p>
                            <div style="clear:both;"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript"> Cufon.now(); </script>
</body>
</html>