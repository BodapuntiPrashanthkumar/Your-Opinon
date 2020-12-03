using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace mini_project
{
    public partial class Mini_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("uid=sa;pwd=123;database=Prashanth;server=.");
            cn.Open();
            SqlCommand cm = new SqlCommand(" select * from miniReg where Username=@Username and Password=@Password",cn);
            cm.Parameters.AddWithValue("Username", TextBox1.Text);
            cm.Parameters.AddWithValue("Password", TextBox2.Text);
            SqlDataReader dr = cm.ExecuteReader();
            if(dr.Read())
            {
                Session["Username"] = dr["Username"].ToString();
                Response.Redirect("Your Opinon.aspx");
            }
            else
            {
                Response.Write("<script> alert('Invalid Credentails)'</script>");
            }

            dr.Close();
            cn.Close();
        }
    }
}