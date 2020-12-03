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
    public partial class Mini_Reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label10.Text="";
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("uid=sa;pwd=123;database=Prashanth;server=.");
            cn.Open();
            SqlCommand cm = new SqlCommand("insert into miniReg values(@Firstname,@Lastname,@Gender,@Email,@Mobileno,@Username,@Password,@Confirmpassword)", cn);
            cm.Parameters.AddWithValue("@Firstname", TextBox1.Text);
            cm.Parameters.AddWithValue("@Lastname", TextBox2.Text);
            cm.Parameters.AddWithValue("@Gender", DropDownList1.SelectedValue);
            cm.Parameters.AddWithValue("@Email", TextBox3.Text);
            cm.Parameters.AddWithValue("@Mobileno", TextBox4.Text);
            cm.Parameters.AddWithValue("@Username", TextBox5.Text);
            cm.Parameters.AddWithValue("@Password", TextBox6.Text);
            cm.Parameters.AddWithValue("@Confirmpassword", TextBox7.Text);
    
            cm.ExecuteNonQuery();
            cn.Close();
            Label10.Visible =true;
            Label10.Text = "Registred Successfully";




        }
    }
}