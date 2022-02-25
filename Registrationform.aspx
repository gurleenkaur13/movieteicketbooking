<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Registrationform.aspx.cs" Inherits="OnlineTicketBooking.Registrationform" %>



<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        $(document).ready(function () {
            $('#MainContent_ErrorMessage').fadeOut(8000);
            $("#HyperLink2").hide();
        })

    </script>
    <body>
        <form action="" autocomplete="off" style="border: 1px solid #ccc">
            <div class="container row p-0 m-0" style="display: block; margin-left: auto; margin-right: auto; width: 50%;">
                <h1>Sign Up</h1>
                <p>Please fill in this form to create an account.</p>
                <hr />
                <div class="col-9" validationgroup="RegForm">
                    <label for="email"><b>UserName</b></label>
                    <br />
                    <asp:TextBox ID="Username" runat="server" placeholder="Enter User Name"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This Field is required" ControlToValidate="Username" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                </div>
                <div class="col-9">

                    <label for="email"><b>Email</b></label>
                    <br />
                    <asp:TextBox ID="email" TextMode="Email" runat="server" placeholder="Enter Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This Field is required" ControlToValidate="email" ValidationGroup="RegForm" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                </div>
                <div class="col-9">
                    <label for="email"><b>Mobile Number</b></label>
                    <br />
                    <asp:TextBox ID="MobNumber" runat="server" TextMode="Phone" placeholder="Enter Mobile Number" MaxLength="10"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This Field is required" ControlToValidate="MobNumber" ValidationGroup="RegForm"></asp:RequiredFieldValidator>

                </div>
                <div class="col-9">
                    <label for="psw"><b>Password</b></label>
                    <br />
                    <asp:TextBox ID="password" TextMode="Password" runat="server" placeholder="Enter Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This Field is required" ControlToValidate="Password" ValidationGroup="RegForm" ForeColor="Red"></asp:RequiredFieldValidator>
                </div>

                <div class="clearfix" errormessage="This Field is required">
                    <asp:Button ID="Button1" class="btn mt-3" Style="background-color: #039BE5 !important" runat="server" Text="Sign Up" OnClick="Button1_Click" />
                    <a href="Default.aspx" style="float: right">Login</a>

                </div>

            </div>
        </form>
    </body>
</asp:Content>

