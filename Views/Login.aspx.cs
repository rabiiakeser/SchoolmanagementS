using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineSchoolTuto1.Views
{
    public partial class Login : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();

        }
        public static int UId;
        public static string UName;
        public static int Dep;

        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            if (PasswordTb.Value == "" || EmailTb.Value == "")
            {
                ErrMsg.InnerText = "Giriş bilgileri eksik";
            }
            else if (EmailTb.Value == "Admin@gmail.com" && PasswordTb.Value == "123456")
            {

                Response.Redirect("Admin/Teacher.aspx");
            }
            else
            {
                string Query = "select * from StudentTbl where StEmail = '{0}' and StPass = '{1}'";
                Query = string.Format(Query, EmailTb.Value, PasswordTb.Value);
                DataTable dt = Con.GetData(Query);
                if (dt.Rows.Count == 0)
                {
                    ErrMsg.InnerText = "Invalid Student!!!";
                }
                else
                {
                    UName = dt.Rows[0][1].ToString();
                    UId = Convert.ToInt32(dt.Rows[0][0].ToString());
                    Dep = Convert.ToInt32(dt.Rows[0][8].ToString());
                    Response.Redirect("Students/ViewSchedule.aspx");

                }
            }

        }
    }
}
