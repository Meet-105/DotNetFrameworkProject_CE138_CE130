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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack || IsPostBack)
            {
                Label1.Visible = false;
                if (Session["user"] != null)
                {
                    f1.Visible = false;

                }
                else
                {
                    f1.Visible = true;
                }
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=E:\\Smit\\.NET\\JobPortal\\App_Data\\JobPortal.mdf;Integrated Security=True";
            try
            {
                using (conn)
                {
                    string query = "select * from Login where username=@username and password=@password";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    conn.Open();
                    cmd.Parameters.AddWithValue("@username", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@password", TextBox2.Text);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    int rowcount = dt.Rows.Count;
                    string Uname = "";
                    string Pass = "";
                    for (int i = 0; i < rowcount; i++)
                    {
                        Uname = dt.Rows[i]["username"].ToString();
                        Pass = dt.Rows[i]["password"].ToString();
                        if(Uname == TextBox1.Text && Pass == TextBox2.Text)
                        {
                            Session["user"] = Uname;
                            if (dt.Rows[i]["role"].ToString() == "admin")
                            {
                                Response.Redirect("~/admin_profile.aspx");
                                //Response.Redirect("~/home.aspx");
                            } else if (dt.Rows[i]["role"].ToString() == "recruiter")
                            {
                                Response.Redirect("~/recruiter_profile.aspx");
                                //Response.Redirect("~/home.aspx");
                            }
                            else if (dt.Rows[i]["role"].ToString() == "candidate") 
                            {
                                Response.Redirect("~/candidate_profile.aspx");
                                //Response.Redirect("~/home.aspx");
                            }
                        }
                        else
                        {
                            Label1.Visible = true;
                            Label1.Text = "Invalid Username or Password";
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
