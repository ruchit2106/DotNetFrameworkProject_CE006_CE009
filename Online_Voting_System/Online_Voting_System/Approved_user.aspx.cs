using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Online_Voting_System
{
    public partial class Approved_user : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\admin\Documents\GitHub\Online_Voting_System\Online_Voting_System\Online_Voting_System\App_Data\OnlineVotingSystem.mdf;Integrated Security=True");

        
        // SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\admin\Documents\GitHub\Online_Voting_System\Online_Voting_System\Online_Voting_System\App_Data\OnlineVotingSystem.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
        }

        protected void addvoters_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            //  String approved_voter = "SELECT * FROM PENDING_VOTERS WHERE IsApproved = @IsApproved";
            string approved_voter = "INSERT INTO VOTERS(Email,Password,DOB,FullName,PhoneNo,Address,Gender) SELECT Email,Password,DOB,FullName,PhoneNo,Address,Gender FROM PENDING_VOTERS WHERE IsApproved = @IsApproved";
            string delete_pending_voter = "DELETE FROM PENDING_VOTERS WHERE IsApproved = @IsApproved";
            try
            {
                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand(approved_voter))
                    {
                        cmd.Parameters.AddWithValue("IsApproved", 1);

                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }


                    using (SqlCommand cmd1 = new SqlCommand(delete_pending_voter))
                    {
                        cmd1.Parameters.AddWithValue("IsApproved", 1);
                        cmd1.Connection = con;
                        con.Open();
                        cmd1.ExecuteNonQuery();
                        con.Close();

                    }
                }

               
                    
                }
            
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }
    }
}