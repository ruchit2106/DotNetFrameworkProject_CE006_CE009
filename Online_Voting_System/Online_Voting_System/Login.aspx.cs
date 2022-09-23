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
    public partial class Login : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection();
<<<<<<< HEAD
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\admin\Documents\GitHub\Online_Voting_System\Online_Voting_System\Online_Voting_System\App_Data\OnlineVotingSystem.mdf;Integrated Security=True");
=======
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Ruchit\source\repos\Online_Voting_System\Online_Voting_System\App_Data\OnlineVotingSystem.mdf;Integrated Security=True");
>>>>>>> 63dc37e3c165ce242b92a23e475c350b5cfa40d6

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Submitbtn_Click(object sender, EventArgs e)
        {
            Int32 admin_count;
            string search_admin = "SELECT COUNT (*) FROM ADMIN WHERE Email = @email AND Password = @password";
            try
            {
                using(con)
                {

                    using(SqlCommand cmd = new SqlCommand(search_admin))
                    {
                        //Response.Write("Admin exists");
                        cmd.Parameters.AddWithValue("@email", emaild_txt.Text);
                        cmd.Parameters.AddWithValue("@password", password_txt.Text);
                        cmd.Connection = con;
                        con.Open();
                        admin_count = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                        if(admin_count == 1)
                        {
                            Response.Redirect("Admin_panel.aspx");
                        }
                        else
                        {
                            wrong_ans.Text = "Wrong Emailid and Password";
                        }
                       
                        // Response.Write(email);
                        //Response.Write(password);
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

       