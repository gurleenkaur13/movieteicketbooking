<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="OnlineTicketBooking._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        $(document).ready(function () {
            $('#MainContent_ErrorMessage').fadeOut(8000);
            $("#HyperLink2").hide();
        })


    </script>

    <div class="wrapper">
        <div class="img-center">
            <img src="Content/Logo-1230815.png" alt="" width="100" height="100" style="display: block; margin-left: auto; margin-right: auto; width: 50%;">
        </div>
        <br />

        <form class="p-3 mt-3" autocomplete="off">
            <div class="form-field d-flex align-items-center">
                <span class="far fa-user"></span>
                <asp:TextBox ID="UserName" runat="server" name="userName" placeholder="Username"></asp:TextBox>

            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="This Field is required" ForeColor="#FF3300" ControlToValidate="UserName"></asp:RequiredFieldValidator>

            <div class="form-field d-flex align-items-center">
                <span class="fas fa-key"></span>

                <asp:TextBox ID="password" runat="server" TextMode="Password" name="password" placeholder="Password"></asp:TextBox>
            </div>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This Field is required" ControlToValidate="password" ForeColor="#FF3300"></asp:RequiredFieldValidator>

            <asp:Button ID="btnLogin" runat="server" class="btn mt-3" Text="Login" OnClick="btnLogin_Click" />

        </form>
        <br />
        <br />

        <b>
            <asp:Label ID="ErrorMessage" runat="server" Visible="True" Style="color: red;"></asp:Label></b>

        <div class="text-center fs-6"><a href="Registrationform.aspx" style="font-size: 2rem;">Sign up</a>  </div>
    </div>




</asp:Content>
