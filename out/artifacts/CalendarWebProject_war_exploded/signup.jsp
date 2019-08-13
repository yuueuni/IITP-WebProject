<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>DOGUMENT</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Play-Offs Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <meta charset utf="8">
    <!--bootstrap-->
    <link href="web_page/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!--coustom css-->
    <link href="web_page/css/style.css" rel="stylesheet" type="text/css"/>
    <!--script-->
    <script src="web_page/js/jquery-2.1.4.min.js"></script>
    <script src="web_page/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="web_page/js/move-top.js"></script>
    <script type="text/javascript" src="web_page/js/easing.js"></script>
    <!--fonts-->
    <link href='http://fonts.googleapis.com/css?family=Quicksand:300,400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Jua&display=swap" rel="stylesheet" type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700;" rel="stylesheet" type='text/css'>
    <!--script-->
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},900);
            });
        });
    </script>
    <style>

        .container_2 .half {
            float: none;
            height: 100%;

            width:25em;
        }
        .container_2 h1 {
            font-size: 18px;
            font-weight: 700;
            margin-bottom: 23px;
            text-align: center;
            text-indent: 6px;
            letter-spacing: 7px;
            text-transform: uppercase;
            color: #263238;
        }
        body .container_2 .tabs {
            width: 100%;
            margin-bottom: 29px;
            border-bottom: 1px solid #d9d9d9;
        }
        body .container_2 .tabs .tab {
            display: inline-block;
            margin-bottom: -1px;
            padding: 20px 15px 10px;
            cursor: pointer;
            letter-spacing: 0;
            border-bottom: 1px solid #d9d9d9;
            -moz-userVO-select: -moz-none;
            -ms-userVO-select: none;
            -webkit-userVO-select: none;
            userVO-select: none;
            transition: all 0.1s ease-in-out;
        }
        body .container_2 .tabs .tab a {
            font-size: 11px;
            text-decoration: none;
            text-transform: uppercase;
            color: #d9d9d9;
            transition: all 0.1s ease-in-out;
        }
        body .container_2 .tabs .tab.active a, body .container_2 .tabs .tab:hover a {
            color: #263238;
        }
        body .container_2 .tabs .tab.active {
            border-bottom: 1px solid #263238;
        }
        body .container_2 .content form {
            position: relative;
            height: 287px;
        }
        body .contcontainer_2ainer .content label:first-of-type, body .container_2 .content input:first-of-type, body .container_2 .content .more:first-of-type {
            -moz-animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
            -webkit-animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
            animation: slideIn 0.4s cubic-bezier(0.37, 0.82, 0.2, 1);
        }
        body .container_2 .content label:nth-of-type(2), body .container_2 .content input:nth-of-type(2), body .container_2 .content .more:nth-of-type(2) {
            -moz-animation: slideIn 0.5s cubic-bezier(0.37, 0.82, 0.2, 1);
            -webkit-animation: slideIn 0.5s cubic-bezier(0.37, 0.82, 0.2, 1);
            animation: slideIn 0.5s cubic-bezier(0.37, 0.82, 0.2, 1);
        }
        body .container_2 .content label:nth-of-type(3), body .container_2 .content input:nth-of-type(3), body .container_2 .content .more:nth-of-type(3) {
            -moz-animation: slideIn 0.6s cubic-bezier(0.37, 0.82, 0.2, 1);
            -webkit-animation: slideIn 0.6s cubic-bezier(0.37, 0.82, 0.2, 1);
            animation: slideIn 0.6s cubic-bezier(0.37, 0.82, 0.2, 1);
        }
        body .container_2 .content label {
            font-size: 12px;
            color: #263238;
            -moz-userVO-select: -moz-none;
            -ms-userVO-select: none;
            -webkit-userVO-select: none;
            userVO-select: none;
        }
        body .container_2 .content label:not([for='remember']) {
            display: none;
        }
        body .container_2 .content input.inpt {
            font-size: 14px;
            display: block;
            width: 100%;
            height: 42px;
            margin-bottom: 12px;
            padding: 16px 13px;
            color: #999999;
            border: 1px solid #d9d9d9;
            background: transparent;
            -moz-border-radius: 2px;
            -webkit-border-radius: 2px;
            border-radius: 2px;
        }
        body .container_2 .content input.inpt::-webkit-input-placeholder {
            font-size: 14px;
            color: #999999;
            font-family: 'Lato', sans-serif;
        }
        body .container_2 .content input.inpt:-moz-placeholder {
            font-size: 14px;
            color: #999999;
            font-family: 'Lato', sans-serif;
        }
        body .container_2 .content input.inpt::-moz-placeholder {
            font-size: 14px;
            color: #999999;
            font-family: 'Lato', sans-serif;
        }
        body .container_2 .content input.inpt:-ms-input-placeholder {
            font-size: 14px;
            color: #999999;
            font-family: 'Lato', sans-serif;
        }
        body .container_2 .content input.inpt:focus {
            border-color: #999999;
        }
        body .container_2 .content input.submit {
            font-size: 12px;
            line-height: 42px;
            display: block;
            width: 100%;
            height: 42px;
            cursor: pointer;
            vertical-align: middle;
            letter-spacing: 2px;
            text-transform: uppercase;
            color: #263238;
            border: 1px solid #263238;
            background: transparent;
            -moz-border-radius: 2px;
            -webkit-border-radius: 2px;
            border-radius: 2px;
        }
        body .container_2 .content input.submit:hover {
            background-color: #263238;
            color: #ffffff;
            -moz-transition: all 0.2s;
            -o-transition: all 0.2s;
            -webkit-transition: all 0.2s;
            transition: all 0.2s;
        }
        body .container_2 .content input:focus {
            outline: none;
        }
        body .container_2 .content .checkbox {
            margin-top: 4px;
            overflow: hidden;
            clip: rect(0 0 0 0);
            width: 0;
            height: 0;
            margin: 17px -1px;
            padding: 0;
            border: 0;
        }
        body .container_2 .content .checkbox + label {
            vertical-align: middle;
            display: inline-block;
            width: 50%;
        }
        body .container_2 .content .checkbox + label:before {
            content: "\A";
            color: #999999;
            font-family: Verdana;
            font-weight: bold;
            font-size: 8px;
            line-height: 10px;
            text-align: center;
            display: inline-block;
            vertical-align: middle;
            position: relative;
            -moz-border-radius: 2px;
            -webkit-border-radius: 2px;
            border-radius: 2px;
            background: transparent;
            border: 1px solid #d9d9d9;
            width: 11px;
            height: 11px;
            margin: -2px 8px 0 0;
        }
        body .container_2 .content .checkbox:checked + label:before {
            content: "✓";
        }
        body .container_2 .content .submit-wrap {
            position: relative;
            bottom: 0;
            width: 100%;
            margin-bottom: 30px;
        }
        body .container_2 .content .submit-wrap a {
            font-size: 12px;
            display: block;
            margin-top: 20px;
            text-align: center;
            text-decoration: none;
            color: #999999;
        }
        body .container_2 .content .submit-wrap a:hover {
            text-decoration: underline;
        }
        body .container_2 .content .signup-cont {
            display: none;
        }
    </style>
</head>
<body>
<!--header-part-->

<div >
    <form action="/UserServlet" method="GET" enctype="multipart/form-data">

        <input type="text" name="signupName"  class="inpt" required="required" placeholder="Your Name">

        <input type="text" name="signupId"  class="inpt" required="required" placeholder="Your Id">

        <input type="password" name="signupPassword"  class="inpt" required="required" placeholder="Your password">

        <!--<input type="password" name="signupcomfirmedpassword"  class="inpt" required="required" placeholder="Your comfirmed password">-->

        <div class="submit-wrap">
            <input type="submit" value="Sign in" class="submit">
            <a href="#" class="more">Forgot your password?</a>
        </div>
    </form>
</div>

</body>
</html>