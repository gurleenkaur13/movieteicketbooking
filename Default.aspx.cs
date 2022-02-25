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
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ErrorMessage.Text = "";
                UserName.Text = "";
            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                if (UserName.Text != "" && password.Text != "")
                {
                    string ConStr = "";
                    //getting the path of the file       
                    string path = Server.MapPath("MovieTicketBookingUsers.xlsx");
                    //connection string for that file which extantion is .xlsx      
                    ConStr = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";Extended Properties=\"Excel 12.0;ReadOnly=False;HDR=Yes;\"";
                    //making query
                    string query = "Select count(1) from [Sheet1$] where [UserName]='" + UserName.Text.ToUpper() + "' and [Password]='" + password.Text + "'";
                    //Providing connection      
                    OleDbConnection conn = new OleDbConnection(ConStr);
                    //checking that connection state is closed or not if closed the       
                    //open the connection      
                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open();
                    }
                    //create command object
                    string result = "";
                    OleDbCommand cmd = new OleDbCommand(query, conn);
                    DataTable table = new DataTable();
                    OleDbDataAdapter adapter = new OleDbDataAdapter();
                    adapter.SelectCommand = cmd;
                    adapter.Fill(table);
                    conn.Close();
                    if (table != null & table.Rows.Count > 0)
                    {
                        Session["UserId"] = UserName.Text;
                        Response.Redirect("ShowList.aspx");
                    }




                }
                else
                {

                    ErrorMessage.Text = "Invalid Username Or Password";




                    // Response.Redirect("Default.aspx");
                }

            }
            catch (Exception ex)
            {

            }
        }

    }
}