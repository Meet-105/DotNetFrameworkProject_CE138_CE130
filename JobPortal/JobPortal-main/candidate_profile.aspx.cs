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
    public partial class candidate_profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["user"] != null)
            {
                p1.Visible = true;
                p1.InnerText = "Hello Candidate!!";
                GridView1.Visible = false;
                reg_form.Visible = false;
            }
            else
            {
                Response.Redirect("~/recruiter_login.aspx");
            }

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            reg_form.Visible = false;
            
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\Smit\\.NET\\JobPortal\\App_Data\\JobPortal.mdf;Integrated Security=True";
            try
            {
                using (conn)
                {
                    string command = "select * from job";
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

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            reg_form.Visible = true;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\Smit\\.NET\\JobPortal\\App_Data\\JobPortal.mdf;Integrated Security=True";
            string query = "INSERT INTO CANDIDATE (NAME, STREAM) VALUES(@NAME, @STREAM)";

            try
            {
                using (conn)
                {
                    using(SqlCommand cmd = new SqlCommand(query)) {
                        cmd.Parameters.AddWithValue("@NAME", TextBox1.Text);
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
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            
                Session["user"] = null;
                Response.Redirect("~/recruiter_login.aspx");
            
        }
    }
}