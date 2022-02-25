<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="ShowList.aspx.cs" Inherits="OnlineTicketBooking.ShowList" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <div class="container row p-0 m-0">

        <table>
            <tr>

                <td style="padding: 30px 30px 10px 30px">
                    <img width="250" height="200" src="Content/Jumanji-Welcome-to-The-Jungle-English-01-306x393.jpg" /></td>
                <td style="padding: 30px 30px 10px 30px">
                    <img width="250" height="200" src="Content/TheKingsMan.jpg" /></td>
                <td style="padding: 30px 30px 10px 30px">
                    <img width="250" height="200" src="Content/Eternals.jpg" /></td>
                <td style="padding: 30px 30px 10px 30px">
                    <img width="250" height="200" src="Content/cityofgod.jpg" /></td>
            </tr>
            <tr>

                <td style="padding: 10px 30px 10px 30px"><span>Jumanji Welcome to The Jungle</span>  </td>
                <td style="padding: 10px 30px 10px 30px"><span>The Kings Man</span></td>
                <td style="padding: 10px 30px 10px 30px"><span>Eternals</span></td>
                <td style="padding: 10px 30px 10px 30px"><span>City Of God</span></td>
            </tr>
            <tr>

                <td style="padding: 10px 30px 10px 30px"><b><span>$20</span> </b></td>
                <td style="padding: 10px 30px 10px 30px"><b><span>$30</span> </b></td>
                <td style="padding: 10px 30px 10px 30px"><b><span>$20</span> </b></td>
                <td style="padding: 10px 30px 10px 30px"><b><span>$15</span> </b></td>
            </tr>
            <tr>

                <td style="padding: 10px 30px 10px 30px">
                    <asp:Button ID="btn1" class="btn btn-info form-control text-white" runat="server" Text="Book Now" OnClick="btn1_Click" />
                </td>
                <td style="padding: 10px 30px 10px 30px">
                    <asp:Button ID="btn2" class="btn btn-info form-control text-white" runat="server" Text="Book Now" OnClick="btn2_Click" />
                </td>
                <td style="padding: 10px 30px 10px 30px">
                    <asp:Button ID="btn3" class="btn btn-info form-control text-white" runat="server" Text="Book Now" OnClick="btn3_Click" />
                </td>
                <td style="padding: 10px 30px 10px 30px">
                    <asp:Button ID="btn4" class="btn btn-info form-control text-white" runat="server" Text="Book Now" OnClick="btn4_Click" />
                </td>


            </tr>

        </table>

        <%--<div class="row">
    <div class="col-4">
       
        <a class="btn btn-info form-control text-white">Book Now</a>
    </div>
     <div class="col-4">
       
        <a class="btn btn-info form-control text-white">Book Now</a>
    </div>
     <div class="col-4">
       <img src="Content/Jumanji-Welcome-to-The-Jungle-English-01-306x393.jpg" />
        <a class="btn btn-info form-control text-white">Book Now</a>
    </div>
    </div>--%>
    </div>
</asp:Content>
