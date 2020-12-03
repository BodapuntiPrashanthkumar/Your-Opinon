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
    public partial class Your : System.Web.UI.Page
    {
        SqlConnection cn;
        SqlCommand cm;
        SqlDataAdapter da;
        DataSet ds;
        public void connect()
        {
            cn = new SqlConnection("uid=sa;pwd=123;database=Prashanth;server=.");
            da = new SqlDataAdapter("select * from Your", cn);
            ds = new DataSet();
            da.Fill(ds);
        }

        public void display()
        {
            gv1.DataSource = ds;
            gv1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            connect();
            if (!IsPostBack)
              display();
        

    }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("uid=sa;pwd=123;database=Prashanth;server=.");
            cn.Open();
            SqlCommand cm = new SqlCommand("insert into Your(Movieposter,Moviename,Moviegenre,Movierating,Moviereview) values (@Movieposter,@Moviename,@Moviegenre,@Movierating,@Moviereview)", cn);
            cm.Parameters.AddWithValue("@Movieposter", FileUpload1);
            cm.Parameters.AddWithValue("@Moviename", TextBox1.Text);
            cm.Parameters.AddWithValue("@Moviegenre", DropDownList1.SelectedItem.Text);
            cm.Parameters.AddWithValue("@Movierating", DropDownList2.SelectedItem.Text);
            cm.Parameters.AddWithValue("@Moviereview", TextBox2.Text);
            cm.ExecuteNonQuery();

            SqlDataAdapter da = new SqlDataAdapter("select * from Your", cn);

            DataSet ds = new DataSet();
            da.Fill(ds);
            gv1.DataSource = ds;
            gv1.DataBind();

            cn.Close();
         
            TextBox1.Text = "";
            DropDownList1.SelectedValue = "";
            DropDownList2.SelectedValue = "";
            TextBox2.Text = "";

        }
        protected void gv1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gv1.EditIndex = e.NewEditIndex;
            connect();
            display();
        }

        protected void gv1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gv1.EditIndex = -1;
            connect();
            display();
        }

        protected void gv1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            TextBox name = gv1.Rows[i].FindControl("tb1") as TextBox;

            DropDownList genre = gv1.Rows[i].FindControl("dl1") as DropDownList;
            object selected1 = genre.SelectedItem;
            DropDownList rating = gv1.Rows[i].FindControl("dl2") as DropDownList;
            object selected2 = rating.SelectedItem;

            TextBox review = gv1.Rows[i].FindControl("tb2") as TextBox;

            cn = new SqlConnection("uid=sa;pwd=123;database=Prashanth;server=.");
            cn.Open();
            cm = new SqlCommand("update Your set Genre=@genre,Rating=@rating,Review=@review where Name=@name", cn);
            cm.Parameters.AddWithValue("@genre", selected1.ToString());
            cm.Parameters.AddWithValue("@rating", selected2.ToString());
            cm.Parameters.AddWithValue("@review", review.Text);
            cm.Parameters.AddWithValue("@name", name.Text);
            cm.ExecuteNonQuery();
            cn.Close();



            gv1.EditIndex = -1;
            connect();
            display();




        }

        protected void gv1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label name = gv1.Rows[e.RowIndex].FindControl("l1") as Label;            
            cn = new SqlConnection("uid=sa;pwd=123;database=Prashanth;server=.");
            cn.Open();
            cm = new SqlCommand("delete from Your where Name=@Name", cn);
            cm.Parameters.AddWithValue("@Name", name.Text);
            cm.ExecuteNonQuery();
            cn.Close();
            connect();
            display();
            // gv1.EditIndex = -1;
        }
    }
}