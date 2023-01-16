<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminka.aspx.cs" Inherits="popova.WebForm1" %>

<!DOCTYPE html>
<html lang="ru">

<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Админка</title>
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
                    <li><a href='#it'>Почему они?</a></li>
                    <li><a href='menu.aspx'>Меню</a></li>
                    <li><a href='forma.aspx'>Сделать заказ</a></li>
                </ul>
            </nav>
        </header>
 
              <form id="form1" runat="server">

        <div class="admin-content">



           
            <h1>страница администратора</h1>
            
            
            <h2 class="title" style="margin-bottom:30px;">форма добавления нового пользователя</h2>

             <table cellpadding="2" cellspacing="5" class="table1">
                <tr>
                    <td style="width:30%">

                        <asp:Label ID="label1" runat="server" Text="Логин"></asp:Label>

                    </td>
                    <td>

                        <asp:TextBox ID="TextBox1"  style="color: black;" runat="server" Width="100%"></asp:TextBox>

                    </td>
                </tr>



                 <tr>
                    <td style="width:30%">

                          <asp:Label ID="label2" runat="server" Text="Пароль"></asp:Label>

                    </td>

                     <td>

                         <asp:TextBox ID="TextBox2"  style="color: black;" runat="server" Width="100%"></asp:TextBox>

                    </td>
                </tr>

                 <tr>

                    <td colspan="2" style="text-align:center" >

                         <asp:Button ID="Button1" style="color: black;" runat="server" Text="Добавить"  OnClick="Button1_Click" ></asp:Button>

                    </td>
                </tr>

                 <tr>
                    <td colspan="2">

                 <asp:Label ID="label3" runat="server" Text=""></asp:Label>    

                    </td>
                </tr>



            </table>

            <h2 class="title" style="margin-bottom:30px;">форма удаления существуещего пользователя</h2>

            <table cellpadding="2" cellspacing="5" class="table1">
                <tr>
                    <td style="width:30%">

                        <asp:Label ID="label4" runat="server" Text="Логин"></asp:Label>

                    </td>
                    <td>

                        <asp:TextBox ID="TextBox3" style="color: black;" runat="server" Width="100%"></asp:TextBox>

                    </td>
                </tr>




                 <tr>

                    <td colspan="2" style="text-align:center" >

                         <asp:Button ID="Button2" style="color: black;" runat="server" Text="Удалить" OnClick="Button2_Click"></asp:Button>

                    </td>
                </tr>

                 <tr>
                    <td colspan="2">

                 <asp:Label ID="label6" runat="server" Text=""></asp:Label>    

                      
                       

                      
                    </td>
                </tr>


        

            </table>

                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                     <Columns>

                         <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                         <asp:BoundField DataField="log" HeaderText="log" SortExpression="log" />
                         <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
                     
                     </Columns>
                        </asp:GridView>
            

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString %>" SelectCommand="SELECT * FROM [Users]"></asp:SqlDataSource>
            

        </div>
  </form>  
</body>
</html>
