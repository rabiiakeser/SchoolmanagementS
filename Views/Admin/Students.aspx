<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="OnlineSchoolTuto1.Views.Admin.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MyContent" runat="server">
    
     <div class="row">
        <div class="col bg-warning">
            <h6 class="text-center">Manage Students</h6>
        </div>
    </div>
    <div class ="row">
        <div class="col-12">
            <div class="row">
                <div class="col"></div>
              
                <div class="col">
                    <img src="../../Assets/Images/person_teacher_96px.png" />
                </div>
                <div class="col"></div>
                   <div class="col"></div>
            </div>
            <div class="row mt-1">
                <div class="col">
                    <div class="mb-2">
                <label>Student Name</label>
                <input type="text" class="form-control" runat="server" id="StNameTb"/>
            </div>
                </div>
                <div class="col">
                    <div class="mb-2">
                <label>Student Email</label>
                <input type="email" class="form-control" runat="server" id="StEmailTb"/>
            </div>
                </div>

                <div class="col">
                    <div class="mb-2">
                <label>Student Phone</label>
                <input type="text" class="form-control" id="StPhoneTb" runat="server" />
            </div>
            </div>
                <div class="col">
                    <div class="mb-2">
                <label>Student Address</label>
                <input type="text" class="form-control" id="StAddressTb" runat="server"/>
            </div>
                </div>
            <div class="row">
                
                </div>
                
            </div>
            <div class="row mt-2">
                <div class="col">
                    <div class="mb-2">
                <label>Student Date Of Birth</label>
                <input type="date" class="form-control" id="BdateTb" runat="server"/>
            </div>
                </div>
                <div class="col">
                    <div class="mb-2">
                <label>Student Gender</label> <br />
               <asp:DropDownList runat="server" class="form-control" ID="StGenCb">
                   <asp:ListItem>Male</asp:ListItem>
                   <asp:ListItem>Female</asp:ListItem>
               </asp:DropDownList>
            </div>
                </div>
                 <div class="col">
                    <div class="mb-2">
                <label>Student Password</label>
                <input type="text" class="form-control" id="StPassTb" runat="server"/>
            </div>
            </div>
                <div class="col">
                    <div class="mb-2">
                <label>Student Department</label> <br />
               <asp:DropDownList runat="server" class="form-control" ID="StDepCb">
                  
               </asp:DropDownList>
            </div>
                </div>
                 <div class="col">
                    <div class="mb-2">
                <label>Student Teacher</label><br />
               <asp:DropDownList runat="server" class="form-control" ID="StTeacherCb">
                   
               </asp:DropDownList>
            </div>
                </div>
           
                <! -buton kodları ->
                <div class ="row mt-5"></div>
                <div class="col d-grid">
                    <asp:Button Text="Edit" runat="server" ID="EditBtn" class="btn btn-warning btn-block" />
                </div>
                <div class="col d-grid">
                    <asp:Button Text="Save" runat="server" ID="SaveBtn" class="btn btn-primary btn-block"  />
                </div>
                <div class="col d-grid"> 
                    <asp:Button Text="Delete" runat="server" id="DeleteBtn" class="btn btn-danger btn-block"  />
                </div>
            </div>
          </div>
            
        </div>
    <div class="col-7">
        <div class="col"><h5 class="text-center text-danger">Students List</h5></div>
         <asp:GridView runat="server" class="table" ID="StudentsList" AutoGenerateSelectButton="True" >

         </asp:GridView>
        </div>
        <asp:GridView runat="server" class="table"></asp:GridView>
   
    </div>

   </div>
        
    
          

</asp:Content>
