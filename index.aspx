<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="popova.index" %>

<!DOCTYPE html>
<html lang="ru">

<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Сайт</title>
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
    <div class="container">
        <form id="form1" runat="server">
        <header id="top">
           <div class="burger" onclick="document.querySelector('.main-menu').classList.toggle('menuHide');"><img src="images/menu.svg" alt=""></div>
            <nav class="main-menu menuHide">
                <ul>
                    
                    <li><a href='index.aspx'>Главная</a></li>
                    <li><a href='#it' onclick="document.querySelector('.main-menu').classList.toggle('menuHide');">Почему они?</a></li>
                    <li><a href='menu.aspx' onclick="document.querySelector('.main-menu').classList.toggle('menuHide');">Меню</a></li>
                    <li><a href='forma.aspx' onclick="document.querySelector('.main-menu').classList.toggle('menuHide');">Сделать заказ</a></li>
                    <li><asp:Button runat="server" ID="Button4" Text="Выйти" class="button" OnClick="Button4_Click"/>   </li>
                </ul>
            </nav>
        </header>
       
            <div class="main-content">
                <img src="images/закуски-min.png" alt="xx" class="animate-grow" width="600" height="500">
                <div class="row form">
                    <h2 class="animate__animated animate__lightSpeedInRight">
                        <p class="page-title red">Чебуреки от Марго <br>вкуснее, чем у бабушки!</p>
                    </h2>
                    <button id="button-1" class="button">
                        <i class="fa fa-credit-card"></i>
                        <a href="forma.aspx">Сделать заказ</a>
                    </button>
                </div>
            </div>
        
      
            <div class="row why">
                <div class="animate-grow">
                    <h2 id="it" class="page-title yellow"> Почему именно мои чебуреки?</h2>
                </div>
                <div class="row items">
                    <div class="col-sm-4 item">
                        <img src="images/free-icon-price-962667.png" alt="" class="scale" width="80" height="80">
                        <b class="item-title">Доступные цены</b>
                        <b class="item-text"> Эти чебуреки стоят того!</b>
                    </div>
                    <div class="col-sm-4 item">
                        <img src="images/premium-icon-quality-control-5430373.png" alt="" class="scale" width="80" height="80">
                        <b class="item-title">Высокое качество!</b>
                        <b class="item-text">Только качественные продукты Тесто готовлю сама!</b>
                    </div>
                    <div class="col-sm-4 item">
                        <img src="images/free-icon-handshake-1787039.png" alt="" class="scale" width="80" height="80">
                        <b class="item-title">Индивидуальный подход к каждому клиенту</b>
                        <b class="item-text">Вы можете выбрать абсолютно любую начинку!</b>
                    </div>

                </div>
            </div>

       <a class="top-btn" href="#top">Наверх</a>
    </div>
    
  </form>
</body>

</html>