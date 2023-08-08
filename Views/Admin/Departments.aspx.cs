using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineSchoolTuto1.Views.Admin
{
    public partial class Departmans : System.Web.UI.Page
    {

        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            ShowDepartments();
        }
        private void ShowDepartments()
        {
            string Query = "select * from DepartmentTbl";
            DepartmentsList.DataSource = Con.GetData(Query);
            DepartmentsList.DataBind();
        }
        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (DepNameTb.Value == "" || RemTb.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data!!!";
                }
                else
                {
                    string Department = DepNameTb.Value;
                    string Remarks = RemTb.Value;

                    string Query = "update DepartmentTbl set DepName='{0}', DepRem='{1}'where DepId={2}";
                    Query = string.Format(Query, Department, Remarks,DepartmentsList.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowDepartments();
                    ErrMsg.InnerText = "Departman Güncellendi!";
                    DepNameTb.Value = "";
                    RemTb.Value = "";



                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }

        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {

            try
            {
                if (DepNameTb.Value == "" || RemTb.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data!!!";
                }
                else
                {
                    string Department = DepNameTb.Value;
                    string Remarks = RemTb.Value;
                  
                    string Query = "insert into DepartmentTbl values('{0}','{1}')";
                    Query = string.Format(Query, Department, Remarks);
                    Con.SetData(Query);
                    ShowDepartments();
                    ErrMsg.InnerText = "Departman Eklendi!";
                    DepNameTb.Value = "";
                    RemTb.Value = "";

                 
                   
                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }









        }

        int Key = 0;
        protected void DepartmentsList_SelectedIndexChanged(object sender, EventArgs e)
        {
           
            DepNameTb.Value = DepartmentsList.SelectedRow.Cells[2].Text;
            RemTb.Value = DepartmentsList.SelectedRow.Cells[3].Text;
          
            if (DepNameTb.Value == "")
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(DepartmentsList.SelectedRow.Cells[1].Text);
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (DepNameTb.Value == "" || RemTb.Value == "")
                {
                    ErrMsg.InnerText = "Missing Data!!!";
                }
                else
                {
                    string Department = DepNameTb.Value;
                    string Remarks = RemTb.Value;

                    string Query = "delete from DepartmentTbl where DepId={0}";
                    Query = string.Format(Query, DepartmentsList.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowDepartments();
                    ErrMsg.InnerText = "Departman Silindi!";
                    DepNameTb.Value = "";
                    RemTb.Value = "";



                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }
    }
}