<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Teachers.aspx.cs" Inherits="OnlineSchoolTuto1.Views.Admin.Teachers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="row">
        <div class="col bg-warning">
            <h6 class="text-center">&nbsp;Manage Teachers </h6>
        </div>
    </div>

    <div class="row">
        <div class="col-5">
            <div class="row">
                <div class="col"></div>
                <div class="col">
                    <img src="../../Assets/Images/person_teacher_96px.png" />
                </div>
                <div class="col"></div>

            </div>
            <div class="row mt-5">
                <div class="col">
                    <div class="mb-2">
                        <label>Teachers Name</label>
                        <input type="text" runat="server" id="TNameTb" class="form-control" />
                    </div>
                </div>


            </div>

            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2">
                        <label>Teachers Email</label>
                        <input type="text" runat="server" id="TEmailTb" class="form-control" />
                    </div>
                </div>


            </div>
            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2">
                        <label>Teachers Date Of Birth</label>
                        <input type="date" runat="server" id="DOBTb" class="form-control" />
                    </div>
                </div>

            </div>

            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2">
                        <label>Teachers Salary </label>
                        &nbsp;<input type="text" id="SalaryTb" runat="server" class="form-control" />
                    </div>
                </div>

            </div>
            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2">
                        <label>Teachers Password</label><br />
                        <input type="text" runat="server" id="PassTb" class="form-control" />
                    </div>
                </div>

            </div>

             <div class="row mt-5">
                <label class="text-center text-danger" id="ErrMsg" runat="server"></label>
                <div class="col d-grid">
                  
                 <asp:Button Text="Update" runat="server" ID="EditBtn" class="btn btn-warning btn-block" OnClick="EditBtn_Click"  />
                </div>
                 <div class="col d-grid">
                    <asp:Button Text="Save" runat="server" class="btn btn-primary btn-block" OnClick="Unnamed1_Click"  />
                </div>
                 <div class="col d-grid">
                    <asp:Button Text="Delete" runat="server" id="DeleteBtn" class="btn btn-danger btn-block" OnClick="DeleteBtn_Click" />
                </div>
            </div>
        </div>



         <div class="col-7">      
                    <div class="col">
                        <h5 class="text-center text-danger">Teachers List</h5>
                    </div>
                </div>
                <asp:GridView runat="server" ID="TeachersList" class="table" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="TeachersList_SelectedIndexChanged1">
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>

          </div>



        
</asp:Content>
