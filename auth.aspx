<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="auth.aspx.cs" Inherits="popova.auth" %>

<!DOCTYPE html>
<html lang="ru">

<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Авторизация</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="jquery-min.js"></script>
    <script type="text/javascript" src="script.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <form id="form1" runat="server">

         <div class="container">
        <header>
            <div class="burger" onclick="document.querySelector('.main-menu').classList.toggle('menuHide');"><img src="images/menu.svg" alt=""></div>
            <nav class="main-menu menuHide">
                <ul>
                    <li><a href='index.aspx'>Главная</a></li>
                    <li><a href='#it'>Почему они?</a></li>
                    <li><a href='menu.aspx'>Меню</a></li>
                    <li><a href='forma.aspx'>Сделать заказ</a></li>
                </ul>
            </nav>
        </header>


<div class="auth-content">
    <div style="text-align: center;">

      
</div>
            <table style="margin: auto; " class="auto-style1">
                 
<tr>

<td>
            <asp:Label ID="Label1" runat="server" Text="Логин" value="name" Font-Bold="True" Font-Size="12pt"></asp:Label>

</td>

<td>
            <asp:TextBox ID="TextBox1" runat="server" style="color: black;"></asp:TextBox>
</td>

</tr>

<tr>

<td>
            <asp:Label ID="Label2" runat="server" Text="Пароль" Font-Bold="True" Font-Size="12pt"></asp:Label>
</td>

<td>
            <asp:TextBox ID="TextBox2" runat="server" style="color: black;" TextMode="Password"></asp:TextBox>
</tr>

<tr>

<td colspan="2" align="center">

     
    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>     

               <asp:Button ID="Button1" runat="server" Text="Войти"  OnClick="Button1_Click" style="background: #78BE20;
                                                                           background: none;
                                                                            color: white;
                                                                            outline: 1px solid red;
                                                                            padding: 10px 15px;
                                                                            text-transform: uppercase;
                                                                            margin-top: 25px;
                                                                            width: 100%;"/>

</td>

</tr>

</table>
    


        </div>
    </form>

        
   
</body>
</html>
