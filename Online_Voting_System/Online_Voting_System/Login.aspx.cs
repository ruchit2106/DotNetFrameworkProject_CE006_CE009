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
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Ruchit\source\repos\Online_Voting_System\Online_Voting_System\App_Data\OnlineVotingSystem.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submitbtn_Click(object sender, EventArgs e)
        {
            string search_admin = "SELECT * FROM ADMIN WHERE Email = @email";
            try
            {
                using(con)
                {
                    using(SqlCommand cmd = new SqlCommand(search_admin))
                    {
                        Response.Write("Admin exists");
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

       