<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forma.aspx.cs" Inherits="popova.forma" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Сайт</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/style.css">
</head>

<body>

    <div class="container">
        <header>
            <div class="burger" onclick="document.querySelector('.main-menu').classList.toggle('menuHide');"><img src="images/menu.svg" alt=""></div>
            <nav class="main-menu menuHide">
                <ul>
                    <li><a href='index.aspx'>Главная</a></li>
                    <li><a href='index.aspx#it'>Почему они?</a></li>
                    <li><a href='menu.aspx'>Меню</a></li>
                    <li><a href='forma.aspx'>Сделать заказ</a></li>
                </ul>
            </nav>
        </header>

        <section id="mail" class="mail">
            <h2 class="animate__animated animate__lightSpeedInRight">
                    <p class="page-title silver">Форма заказа</p>
                </h2>
            <div class="mail-items">
                
                    <div class="row">
                        <div class="col-md-12 mail-title">Имя:</div>
                        <div class="col-md-12 "><input class="form-control" id="first" type="text" required /></div>
                        <div class="col-md-12"><span id="first_Check"></span></div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 mail-title">Фамилия:</div>
                        <div class="col-md-12"><input class="form-control" id="last" type="text"  required /></div>
                        <div class="col-md-12"><span id="last_Check"></span></div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 mail-title">Номер телефона:</div>
                        <div class="col-md-12"><input class="form-control" id="phone" type="text"  placeholder="x(xxx)-хxx-xx-хx" required /></div>
                        <div class="col-md-12"><span id="phone_Check"></span></div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 mail-title">Дата:</div>
                        <div class="col-md-12">
                            <input class="form-control" id="date" type="date" required />
                        </div>
                        <div class="col-md-12"></div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-12 mail-title">Ваш заказ:</div>
                        <div class="col-md-12"><input class="form-control" id="last" type="text"  required /></div>
                        <div class="col-md-12"><span id="last_Check"></span></div>
                        
                    </div>
                    <button type="submit" class="btn btn-form">ОТПРАВИТЬ ЗАЯВКУ!</button>
                    <div class="col-md-12"></div>
                </div>
        </section>
    </div>

</body>

</html>
