using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineSchoolTuto1.Views.Admin
{
    public partial class Scheduler : System.Web.UI.Page
    {
        Models.Functions Con;
        protected void Page_Load(object sender, EventArgs e)
        {
            Con = new Models.Functions();
            if(!IsPostBack) // postback işlemi sonrası yüklenmesi durumunu kontrol etmek
            {
                ShowSchedules();
                GetDepartment();
            }
            
        }
        private void ShowSchedules()
        {
            string Query = "select SchId as Id,Department as Dep,Day,[8to9] as First,[9to10] as Second,[10to11] as Third , [11to12] as Fourth,[12to13] as Fifth from ScheduleTbl";
            ScheduleList.DataSource = Con.GetData(Query);
            ScheduleList.DataBind();
        }
        private void GetDepartment()
        {
            string Query = "select *from DepartmentTbl";
            DepCb.DataTextField = Con.GetData(Query).Columns["DepName"].ToString();
            DepCb.DataValueField = Con.GetData(Query).Columns["DepId"].ToString();
            DepCb.DataSource = Con.GetData(Query);
            DepCb.DataBind();
        }
        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (DepCb.SelectedIndex == -1 || DayCb.SelectedIndex == -1 || Sub1Cb.SelectedIndex == -1 || Sub2Cb.SelectedIndex == -1 || Sub3Cb.SelectedIndex == -1 || Sub4Cb.SelectedIndex == -1 || Sub5Cb.SelectedIndex == -1)
                {
                    ErrMsg.InnerText = "Missing Data!!!";
                }
                else
                {
                    int Department = Convert.ToInt32(DepCb.SelectedValue.ToString());
                    string Day = DayCb.SelectedItem.ToString();
                    string Sub1 = Sub1Cb.SelectedItem.ToString();
                    string Sub2 = Sub2Cb.SelectedItem.ToString();
                    string Sub3 = Sub3Cb.SelectedItem.ToString();
                    string Sub4 = Sub4Cb.SelectedItem.ToString();
                    string Sub5 = Sub5Cb.SelectedItem.ToString();
                    
                    string Query = "Update ScheduleTbl set Department = {0},Day = '{1}',[8to9] = '{2}',[9to10] = '{3}',[10to11] = '{4}',[11to12] = '{5}',[12to13] = '{6}' where SchId = {7}";
                    Query = string.Format(Query, Department, Day, Sub1, Sub2, Sub3, Sub4, Sub5, ScheduleList.SelectedRow.Cells[1].Text);
                    Con.SetData(Query);
                    ShowSchedules();
                    ErrMsg.InnerText = "Schedule Updated!!!";
                    DepCb.SelectedIndex = -1;
                    DayCb.SelectedIndex = -1;
                    Sub1Cb.SelectedIndex = -1;
                    Sub2Cb.SelectedIndex = -1;
                    Sub3Cb.SelectedIndex = -1;
                    Sub4Cb.SelectedIndex = -1;
                    Sub5Cb.SelectedIndex = -1;

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
                if (DepCb.SelectedIndex == -1 || DayCb.SelectedIndex == -1 || Sub1Cb.SelectedIndex == -1 || Sub2Cb.SelectedIndex == -1 || Sub3Cb.SelectedIndex == -1 || Sub4Cb.SelectedIndex == -1 || Sub5Cb.SelectedIndex == -1)
                {
                    ErrMsg.InnerText = "Missing Data!!!";
                }
                else
                {
                    int Department = Convert.ToInt32(DepCb.SelectedValue.ToString());
                    string Day = DayCb.SelectedItem.ToString();
                    string Sub1 = Sub1Cb.SelectedItem.ToString();
                    string Sub2 = Sub2Cb.SelectedItem.ToString();
                    string Sub3 = Sub3Cb.SelectedItem.ToString();
                    string Sub4 = Sub4Cb.SelectedItem.ToString();
                    string Sub5 = Sub5Cb.SelectedItem.ToString();
                    string Query = "insert into ScheduleTbl values({0},'{1}','{2}','{3}','{4}','{5}','{6}')";
                    Query = string.Format(Query, Department, Day, Sub1, Sub2, Sub3, Sub4, Sub5);
                    Con.SetData(Query);
                    ShowSchedules();
                    ErrMsg.InnerText = "Schedule Added!!!";
                    DepCb.SelectedIndex = -1;
                    DayCb.SelectedIndex = -1;
                    Sub1Cb.SelectedIndex = -1;
                    Sub2Cb.SelectedIndex = -1;
                    Sub3Cb.SelectedIndex = -1;
                    Sub4Cb.SelectedIndex = -1;
                    Sub5Cb.SelectedIndex = -1;

                }
            }
            catch (Exception Ex)
            {
                ErrMsg.InnerText = Ex.Message;
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {

        }

        int Key = 0;
        protected void ScheduleList_SelectedIndexChanged(object sender, EventArgs e)
        {

            DepCb.SelectedValue = ScheduleList.SelectedRow.Cells[2].Text;
            DayCb.SelectedItem.Value = ScheduleList.SelectedRow.Cells[3].Text;
            Sub1Cb.SelectedItem.Value = ScheduleList.SelectedRow.Cells[4].Text;
            Sub2Cb.SelectedItem.Value = ScheduleList.SelectedRow.Cells[5].Text;
            Sub3Cb.SelectedItem.Value = ScheduleList.SelectedRow.Cells[6].Text;
            Sub4Cb.SelectedItem.Value = ScheduleList.SelectedRow.Cells[7].Text;
            Sub5Cb.SelectedItem.Value = ScheduleList.SelectedRow.Cells[8].Text;


            if (DepCb.SelectedIndex == -1)
            {
                Key = 0;
            }
            else
            {
                Key = Convert.ToInt32(ScheduleList.SelectedRow.Cells[1].Text);
            }
        }
    }
}