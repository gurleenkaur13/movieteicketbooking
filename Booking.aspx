<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Booking.aspx.cs" Inherits="OnlineTicketBooking.Booking" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />


    <h3 class="text-info">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ShowList.aspx">Back To Shows</asp:HyperLink></h3>


    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
        function Booking() {

            if ($('#MainContent_TotalNumPerson').val() > 0) {
                Swal.fire(
                    'Ticket Booked Successfully!',
                    '',
                    'success'
                )
            }
        }

        $(document).ready(function () {
            if ($('#MainContent_HiddenField1').val() == '1') {
                $('#imgmovie').attr('src', 'Content/Jumanji-Welcome-to-The-Jungle-English-01-306x393.jpg')
                $('#name').html('Jumanji Welcome to The Jungle');
                $('#amount').html('$20');
            }
            if ($('#MainContent_HiddenField1').val() == '2') {
                $('#imgmovie').attr('src', 'Content/TheKingsMan.jpg')
                $('#name').html('The Kings Man');
                $('#amount').html('$30');
            }
            if ($('#MainContent_HiddenField1').val() == '3') {
                $('#imgmovie').attr('src', 'Content/Eternals.jpg')
                $('#name').html('Eternals');
                $('#amount').html('$20');
            }
            if ($('#MainContent_HiddenField1').val() == '4') {
                $('#imgmovie').attr('src', 'Content/cityofgod.jpg')
                $('#name').html('City Of God');
                $('#amount').html('$15');
            }
        })
    </script>

    <center>
        <table>
            <tr>

                <td colspan="2" style="padding: 30px 30px 10px 30px">
                    <img id="imgmovie" width="400" height="300" src="Content/Jumanji-Welcome-to-The-Jungle-English-01-306x393.jpg" />
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                </td>



            </tr>
            <tr>
                <td colspan="2" style="padding: 10px 10px 10px 10px">
                    <center><b><span id="name">Jumanji Welcome to The Jungle</span> </b></center>
                </td>
            </tr>
            <tr>
                <td>
                    <span>Per Ticket Amount</span>
                </td>
                <td tyle="padding:10px 10px 10px 10px">
                    <b><span id="amount">$20</span> </b></td>
            </tr>
            <tr>
                <td>
                    <span>Total Tickets:</span>
                </td>
                <td>
                    <asp:TextBox ID="TotalNumPerson" runat="server" MaxLength="5" TextMode="Number"></asp:TextBox>
                </td>


            </tr>
            <tr>
                <td style="padding: 10px 10px 10px 10px">
                    <span>Date:</span>
                </td>
                <td>

                    <asp:TextBox ID="TextBox1" TextMode="Date" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>
                    <span>Available Time Slots :</span>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Text="9.00 AM" Value="1" />
                        <asp:ListItem Text="11.30 AM" Value="2" />
                        <asp:ListItem Text="2.00 PM" Value="3" />
                        <asp:ListItem Text="3.00 PM" Value="4" />
                        <asp:ListItem Text="7.00 PM" Value="5" />

                    </asp:DropDownList>

                </td>
            </tr>
            <tr>

                <td colspan="2" style="padding: 10px 10px 10px 10px">
                    <center><a class="btn btn-info form-control text-white" onclick="Booking()">Book Now</a> </center>
                </td>

            </tr>
        </table>

    </center>
</asp:Content>
