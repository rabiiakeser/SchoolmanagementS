<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Marks.aspx.cs" Inherits="OnlineSchoolTuto1.Views.Admin.Marks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    <div class="row">
        <div class="col bg-warning">
            <h6 class="text-center">Manage Marks </h6>
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
                        <label>Student Name</label> <br />
                 <asp:DropDownList runat="server" class="form-control">


                 </asp:DropDownList>
                    </div>
                </div>


            </div>

            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2">
                        <label>Subject</label> <br />
                       <asp:DropDownList runat="server" class="form-control">


                 </asp:DropDownList>
                    </div>
                </div>


            </div>
            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2">
                        <label>Marks</label>
                        <input type="text" runat="server" id="DOBTb" class="form-control" />
                    </div>
                </div>

            </div>

            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2">
                        <label>Comment </label>
                        &nbsp;<input type="text" id="SalaryTb" runat="server" class="form-control" />
                    </div>
                </div>

            </div>
            

             <div class="row mt-5">
                <label class="text-center text-danger" id="ErrMsg" runat="server"></label>
                <div class="col d-grid">
                    <%--button kodları--%>
                    <asp:Button Text="Update" runat="server" ID="EditBtn" class="btn btn-warning btn-block"  />
                </div>
                 <div class="col d-grid">
                    <asp:Button Text="Save" runat="server" class="btn btn-primary btn-block"  />
                </div>
                 <div class="col d-grid">
                    <asp:Button Text="Delete" runat="server" id="DeleteBtn" class="btn btn-danger btn-block" />
                </div>
            </div>
        </div>



            <div class="col-7">      
                    <div class="col">
                        <h5 class="text-center text-danger">Teachers List</h5>
                    </div>
                </div>
                <asp:GridView runat="server" class="table"></asp:GridView>

            </div>
            
 



</asp:Content>
