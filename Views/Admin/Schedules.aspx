<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Schedules.aspx.cs" Inherits="OnlineSchoolTuto1.Views.Admin.Scheduler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
   <div class="row">
        <div class="col bg-warning">
            <h6 class="text-center">Manage Time Table</h6>
        </div>
    </div>
    <div class ="row">
        <div class="col-md-4">
            <div class="row">
                <div class="col"></div>
                <div class="col">
                    <img src="../../Assets/Images/person_teacher_96px.png" />
                </div>
                <div class="col"></div>

            </div>
            <div class="row mt-3">
                <div class="col">
                    <div class="mb-2">
                <label>Department Name</label> <br />
                <asp:DropDownList runat="server" id="DepCb" class="form-control">

                </asp:DropDownList>
                   </div>
                </div>
              
                <div class="col">
                    <div class="mb-2">
                <label>Day</label> <br />
                <asp:DropDownList runat="server" id="DayCb" class="form-control">
                     <asp:ListItem>Monday</asp:ListItem>
                    <asp:ListItem>Tuesday</asp:ListItem>
                    <asp:ListItem>Wednesday</asp:ListItem>
                    <asp:ListItem>Thursday</asp:ListItem>
                    <asp:ListItem>Friday</asp:ListItem>
                </asp:DropDownList>
                   </div>
                </div>
            </div>

    
            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2">
                <label>8AM-9AM</label>
                 <asp:DropDownList runat="server" id="Sub1Cb" class="form-control">
                      <asp:ListItem>Math</asp:ListItem>
                    <asp:ListItem>English</asp:ListItem>
                    <asp:ListItem>Hindi</asp:ListItem>
                    <asp:ListItem>Geography</asp:ListItem>
                    <asp:ListItem>History</asp:ListItem>
                     <asp:ListItem>Computer</asp:ListItem>
                    <asp:ListItem>Networking</asp:ListItem>
                </asp:DropDownList>
                   </div>
                       <div class="mb-2">
                <label>9AM-10AM</label>
                 <asp:DropDownList runat="server" id="Sub2Cb" class="form-control">
                      <asp:ListItem>Math</asp:ListItem>
                    <asp:ListItem>English</asp:ListItem>
                    <asp:ListItem>Hindi</asp:ListItem>
                    <asp:ListItem>Geography</asp:ListItem>
                    <asp:ListItem>History</asp:ListItem>
                     <asp:ListItem>Computer</asp:ListItem>
                    <asp:ListItem>Networking</asp:ListItem>
                </asp:DropDownList>
                   </div>
                </div>
                
                </div>
            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2">
                <label>10AM-11AM</label>
                <asp:DropDownList runat="server" id="Sub3Cb" class="form-control">
                     <asp:ListItem>Math</asp:ListItem>
                    <asp:ListItem>English</asp:ListItem>
                    <asp:ListItem>Hindi</asp:ListItem>
                    <asp:ListItem>Geography</asp:ListItem>
                    <asp:ListItem>History</asp:ListItem>
                     <asp:ListItem>Computer</asp:ListItem>
                    <asp:ListItem>Networking</asp:ListItem>
                </asp:DropDownList>
                   </div>
                       <div class="mb-2">
                <label>11AM-12PM</label>
                <asp:DropDownList runat="server" id="Sub4Cb" class="form-control">
                     <asp:ListItem>Math</asp:ListItem>
                    <asp:ListItem>English</asp:ListItem>
                    <asp:ListItem>Hindi</asp:ListItem>
                    <asp:ListItem>Geography</asp:ListItem>
                    <asp:ListItem>History</asp:ListItem>
                     <asp:ListItem>Computer</asp:ListItem>
                    <asp:ListItem>Networking</asp:ListItem>
                </asp:DropDownList>
                   </div>
                </div>
                
                </div>
           
             <div class="row mt-2">
                <div class="col">
                    <div class="mb-2">
                <label>12PM-1PM</label>
                 <asp:DropDownList runat="server" id="Sub5Cb" class="form-control">
                      <asp:ListItem>Math</asp:ListItem>
                    <asp:ListItem>English</asp:ListItem>
                    <asp:ListItem>Hindi</asp:ListItem>
                    <asp:ListItem>Geography</asp:ListItem>
                    <asp:ListItem>History</asp:ListItem>
                     <asp:ListItem>Computer</asp:ListItem>
                    <asp:ListItem>Networking</asp:ListItem>
                </asp:DropDownList>
                    </div>
            </div>
            
             
    
            <div class="row mt-1">
                <label id="ErrMsg" runat="server" class="text-center text-danger"></label>
                <div class="col d-grid">
                    <asp:Button Text="Edit" runat="server" id="EditBtn" class="btn btn-warning btn-block" OnClick="EditBtn_Click"  />
                </div>
                 <div class="col d-grid">
                    <asp:Button Text="Save" runat="server" id="SaveBtn" class="btn btn-primary btn-block" OnClick="SaveBtn_Click"  />
                </div>
                 <div class="col d-grid">
                    <asp:Button Text="Delete" runat="server" id="DeleteBtn" class="btn btn-danger btn-block" OnClick="DeleteBtn_Click" />
                </div>
            </div>
               </div>


     </div>

        <div class="col-md-8">
            <div class="row">
                <div class="col"><h5 class="text-center text-danger">Schedule List</h5></div>
            </div>
            <asp:GridView runat="server" id="ScheduleList" class="table bordered" OnSelectedIndexChanged="ScheduleList_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
           
            </asp:GridView>
        </div>
        </div>











</asp:Content>
