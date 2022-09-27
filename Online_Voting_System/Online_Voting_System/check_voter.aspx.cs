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
    
    public partial class check_voter : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\admin\Documents\GitHub\Online_Voting_System\Online_Voting_System\Online_Voting_System\App_Data\OnlineVotingSystem.mdf;Integrated Security=True");

       // string voter = Session["voter_id"].ToString();
        //string password = Session["Password"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write(Session["voter_id"]);
            Response.Write(Session["Password"]);
            //Response.Write(voter);
        }

        protected void verify_voter_Click(object sender, EventArgs e)
        {
            Int32 is_voter_exist;
            string check_voter = "SELECT COUNT(*) FROM VOTERS WHERE VoterId =@VoterId AND Password = @Password";
            try
            {

                using (con)
                {
                    using (SqlCommand cmd = new SqlCommand(check_voter))
                    {
                        cmd.Parameters.AddWithValue("@VoterId", voterid_txt.Text);
                        cmd.Parameters.AddWithValue("@Password", password_txt.Text);
                        cmd.Connection = con;
                        con.Open();
                        is_voter_exist = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                        if(is_voter_exist == 1)
                        {
                            if (Session["voter_id"].ToString() == voterid_txt.Text)
                            {
                                Response.Write("voter Exists");
                            }

                            else
                            {
                                Response.Write("Incorrect voterId or Password");
                            }
                           // Response.Write(Session["voter_id"]);
                           // Response.Write(Session["Password"]);
                        }
                             
                              
                        else
                        {
                            Response.Write("Incorrect VoterId or Password");
                        }
                        
                    }
                       
                }
                     
            }
                        



            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}