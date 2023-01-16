using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace popova
{
    public partial class menu : System.Web.UI.Page
    {

        DataClasses1DataContext data = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected IEnumerable<Goods> GetData()
        {
            var row = (from line in data.Goods
                       select line).ToArray();
            return row;
        }
    }
}