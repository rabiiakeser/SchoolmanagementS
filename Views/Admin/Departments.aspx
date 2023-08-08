<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Departments.aspx.cs" Inherits="OnlineSchoolTuto1.Views.Admin.Departmans" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="row">
        <div class="col bg-warning">
            <h6 class="text-center">Departments List</h6>
        </div>
    </div>
    <div class ="row">
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
                <label>Department Name</label> <br />
               <input type="text" runat="server" id="DepNameTb" class="form-control"/>
                   </div>
                </div>
              
                <div class="col">
                    <div class="mb-2">
                <label>Remarks</label> <br />
                 <input type="text" runat="server" id="RemTb" class="form-control"/>
                   </div>
                </div>
            </div>

    

           
             <div class="row mt-2">
               
         
         
            <div class="row mt-1">
                <label id="ErrMsg" runat="server" class="text-center text-danger"></label>
                <div class="col d-grid">
                    <asp:Button Text="Update" runat="server" Id="EditBtn" class="btn btn-warning btn-block" OnClick="EditBtn_Click"  />
                </div>
                 <div class="col d-grid">
                    <asp:Button Text="Save" runat="server" ID="SaveBtn" class="btn btn-primary btn-block" OnClick="SaveBtn_Click"  />
                </div>
                 <div class="col d-grid">
                    <asp:Button Text="Delete" runat="server" ID="DeleteBtn"  class="btn btn-danger btn-block" OnClick="DeleteBtn_Click"  />
                </div>
            </div>
               </div>


     </div>

        <div class="col-7">
            <div class="row">
                <div class="col"><h5 class="text-center text-danger">Departments List</h5></div>
            </div>
            <asp:GridView runat="server" ID="DepartmentsList" class="table" AutoGenerateSelectButton="True" OnSelectedIndexChanged="DepartmentsList_SelectedIndexChanged" ></asp:GridView>
        </div>
        </div>





</asp:Content>
