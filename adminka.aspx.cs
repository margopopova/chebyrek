using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Security;
using System.Data.Linq.Mapping;
using System.Data;

namespace popova
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        DataClasses1DataContext data = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                Users user1 = new popova.Users();

                user1.log = TextBox1.Text;
                user1.pass = TextBox2.Text;

                data.GetTable<Users>().InsertOnSubmit(user1);
                data.SubmitChanges();
                label3.Text = "Новый пользователь добавлен в БД ";
                GridView1.DataBind();

            }

            catch
            {
                label3.Text = "Что-то пошло не так";
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {

            try
            {
                Users user = (from u in data.Users where u.log.Equals(TextBox3.Text) select u).Single<Users>();

                data.GetTable<Users>().DeleteOnSubmit(user);
                data.SubmitChanges();
                label6.Text = "Пользователь удален из БД";
                GridView1.DataBind();

            }

            catch (Exception exp)
            {

                label6.Text = exp.ToString();
            }


      
        }
    }
}