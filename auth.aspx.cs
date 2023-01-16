using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;

namespace popova
{
    public partial class auth : System.Web.UI.Page
    {

        DataClasses1DataContext data = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            var user = (from u in data.Users
                        where u.log.Equals(TextBox1.Text) &
                        u.pass.Equals(TextBox2.Text)
                        select u).ToArray();



            if (user.Count() > 0)
            {

                FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, true);



                if (TextBox2.Text == "admin")

                {
                    Response.Redirect("adminka.aspx");




                }

                else
                {
                    Response.Redirect("index.aspx");
                }
            }




            else
            {
                Label3.Text = "Неверный логин или пароль";
            }


        }
    }
}
