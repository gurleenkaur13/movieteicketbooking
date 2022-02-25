using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineTicketBooking
{
    public partial class Registrationform : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Username.Text = "";
                password.Text = "";
                email.Text = "";
                MobNumber.Text = "";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string ConStr = "";
                //getting the path of the file       
                string path = Server.MapPath("MovieTicketBookingUsers.xlsx");
                //connection string for that file which extantion is .xlsx      
                ConStr = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";Extended Properties=\"Excel 12.0;ReadOnly=False;HDR=Yes;\"";
                //making query
                string query = "INSERT INTO [Sheet1$] ([Username], [Password], [MobileNumber], [Emailid]) VALUES('" + Username.Text.ToUpper() + "','" + password.Text + "','" + MobNumber.Text + "','" + email.Text.ToUpper() + "')";
                //Providing connection      
                OleDbConnection conn = new OleDbConnection(ConStr);
                //checking that connection state is closed or not if closed the       
                //open the connection      
                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }
                //create command object

                OleDbCommand cmd = new OleDbCommand(query, conn);


                int result = cmd.ExecuteNonQuery();
                conn.Close();
                if (result > 0)
                {
                    Response.Write("<script>alert('User Created Sucessfully')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Sorry!\n Insertion Failed')</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Something went wrong!')</script>");
            }
        }
    }
}