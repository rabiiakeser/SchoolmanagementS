using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineSchoolTuto1.Views.Admin
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            if (!IsPostBack)
            {
                ShowStudents();
                GetDepartment();
            }
        }
        Models.Functions Con;
        private void ShowStudents()
        {
            string Query = "select SchId as Id,Department as Dep,Day,[8to9] as First,[9to10] as Second,[10to11] as Third , [11to12] as Fourth,[12to13] as Fifth from ScheduleTbl";
            StudentsList.DataSource = Con.GetData(Query);
            StudentsList.DataBind();
        }
        private void GetDepartment()
        {
            string Query = "select *from DepartmentTbl";
            StDepCb.DataTextField = Con.GetData(Query).Columns["DepName"].ToString();
            StDepCb.DataValueField = Con.GetData(Query).Columns["DepId"].ToString();
            StDepCb.DataSource = Con.GetData(Query);
            StDepCb.DataBind();
        }
        protected void StDepCb_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}