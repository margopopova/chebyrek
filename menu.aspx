<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="popova.menu" %>

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
    <script type="text/javascript" src="jquery-min.js"></script>
    <script type="text/javascript" src="script.js"></script>
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

        <div class="menu-content">
            <div class="row menu-head">
                <h2 class="animate__animated animate__lightSpeedInRight">
                    <p class="page-title red">Чебуреки от Марго <br>вкуснее, чем у бабушки!</p>
                </h2>
                <img src="images/Che_hand.png" alt="">
            </div>
            <div class="row list">
               <div class="animate-grow">
                <h2 class="page-title yellow"> Почему именно мои чебуреки?</h2>
            </div>

            

                  <table id="tab" class="menu-table">

                <tr style="font-weight:bold; text-align:center";>

                    <td style="margin: auto; width:20%; text-align: left;">Наименование</td>

                    <td style="margin: auto; width:20%; text-align: left;">Описание</td>
                    <td style="margin: auto; width:15%; text-align: left;">Цена</td>
                   

                </tr>

                <% foreach (popova.Goods row in GetData())
                 {
                        Response.Write(String.Format(@"

                                
                                                <tr>
                                                 <td>{0}</td>
                                                 <td>{1}</td>
                                                 <td>{2}</td>                                        
                                                </tr>

                            ", row.name, row.descrip, row.coast));

            }%>
             
                            </table>


                
            </div>

            
        </div>



    </div>

</body>

</html>