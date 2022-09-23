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

    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\admin\Documents\GitHub\Online_Voting_System\Online_Voting_System\Online_Voting_System\App_Data\OnlineVotingSystem.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void register_clicked(object sender, EventArgs e)
        {
            Int32 count;
            string query_insert = "INSERT INTO PENDING_VOTERS(Email,Password,DOB,FullName,PhoneNo,Address,Gender,IsApproved) VALUES(@email,@password,@dob,@fullname,@phoneno,@address,@gender,@isapproved)";
            string query_select = "SELECT COUNT (*) FROM PENDING_VOTERS WHERE Email = @email ";
            
            try

            {
                using (con)

                {
                    using (SqlCommand cmd1 = new SqlCommand(query_select))
                    {
                        cmd1.Parameters.AddWithValue("@email", emailidtxt.Text);
                        cmd1.Connection = con;
                        con.Open();
                        count =  Convert.ToInt32(cmd1.ExecuteScalar());
                        con.Close();
                       
                        if (count == 0)
                        {
                            Response.Write("No Emails");
                        }
                        else
                        {
                            Response.Write("More than one Emails");
                        }



                    }

                    if (count == 0)
                     {
                        using (SqlCommand cmd = new SqlCommand(query_insert))
                        {

                            cmd.Parameters.AddWithValue("@email", emailidtxt.Text);
                            cmd.Parameters.AddWithValue("@password", passwordtxt.Text);
                            cmd.Parameters.AddWithValue("@dob", dobtxt.Text);
                            cmd.Parameters.AddWithValue("@fullname", fullnametxt.Text);
                            cmd.Parameters.AddWithValue("@phoneno", phonenotxt.Text);
                            cmd.Parameters.AddWithValue("@address", addresstxt.Text);
                            cmd.Parameters.AddWithValue("@gender", gendertxt.Text);
                            cmd.Parameters.AddWithValue("@isapproved", 0);
                            cmd.Connection = con;
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();

                        }
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
    


       
    
