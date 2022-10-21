using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;
using System.Reflection.Emit;
namespace JobPortal
{
    public partial class recruiter_profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                p1.Visible = true;
                p1.InnerText = "Hello Recruiter!";
                App_List.Visible = false;
                post_job.Visible = false;
                job_list.Visible = false;
            }
            else
            {
                Response.Redirect("~/recruiter_login.aspx");
            }
            
        }

        protected void showjobs(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\Smit\\.NET\\JobPortal\\App_Data\\JobPortal.mdf;Integrated Security=True";
            try
            {
                using (conn)
                {
                    string command = "select * from Job";
                    SqlCommand cmd = new SqlCommand(command, conn);
                    conn.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    GridView2.DataSource = rdr;
                    GridView2.DataBind();
                    rdr.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            job_list.Visible = true;
            p1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\Smit\\.NET\\JobPortal\\App_Data\\JobPortal.mdf;Integrated Security=True";
            string query = "INSERT INTO Job (STREAM, CNAME, SALARY) VALUES(@STREAM, @CNAME, @SALARY)";

            try
            {
                using (conn)
                {
                    using (SqlCommand cmd = new SqlCommand(query))
                    {
                        cmd.Parameters.AddWithValue("@CNAME", TextBox2.Text);
                        int a = Convert.ToInt32(TextBox1.Text);
                        cmd.Parameters.AddWithValue("@SALARY", a);
                        cmd.Parameters.AddWithValue("@STREAM", Select1.Value);
                        cmd.Connection = conn;
                        conn.Open();
                        cmd.ExecuteNonQuery();
                        conn.Close();
                    }

                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

            post_job.Visible=false;
            showjobs(sender, e);
            
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            p1.Visible = false;
            post_job.Visible=true;
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            p1.Visible = false;
            App_List.Visible = true;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\Smit\\.NET\\JobPortal\\App_Data\\JobPortal.mdf;Integrated Security=True";
            try
            {
                using (conn)
                {
                    string command = "select * from Candidate";
                    SqlCommand cmd = new SqlCommand(command, conn);
                    conn.Open();
                    SqlDataReader rdr = cmd.ExecuteReader();
                    GridView1.DataSource = rdr;
                    GridView1.DataBind();
                    rdr.Close();
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/recruiter_profile.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("~/recruiter_login.aspx");
        }
    }
}