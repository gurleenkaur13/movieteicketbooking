using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTicketBooking
{
    public partial class ShowList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["UserId"]==null)
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Booking.aspx?id=1");
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Booking.aspx?id=2");
        }

        protected void btn3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Booking.aspx?id=3");
        }

        protected void btn4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Booking.aspx?id=4");
        }
    }
}