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
    public partial class Your_Opinon : System.Web.UI.Page
    {

        SqlConnection cn;
        SqlCommand cm;
        SqlDataAdapter da;
        DataSet ds;

        public void connect()
        {
            cn = new SqlConnection("uid=sa;pwd=123;database=Prashanth;server=.");
            da = new SqlDataAdapter("select * from Yours", cn);
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
            {
                display();
            }
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

            protected void gv1_RowDeleting(object sender, GridViewDeleteEventArgs e)
            {


                Label num = gv1.Rows[e.RowIndex].FindControl("snoitem") as Label;

                cn = new SqlConnection("uid=sa;pwd=123;database=Prashanth;server=.");
                cn.Open();
                cm = new SqlCommand("delete from Yours where sno=@sno", cn);
                cm.Parameters.AddWithValue("@sno", num.Text);
                cm.ExecuteNonQuery();
                cn.Close();

                gv1.EditIndex = -1;
                connect();
                display();
            }

            protected void gv1_RowUpdating(object sender, GridViewUpdateEventArgs e)
            {
                int i = e.RowIndex;

                Label sno = gv1.Rows[i].FindControl("snoedit") as Label;

               

                TextBox name = gv1.Rows[i].FindControl("nameedit") as TextBox;

                DropDownList genre = gv1.Rows[i].FindControl("genreedit") as DropDownList;
                object select1 = genre.SelectedItem;

                DropDownList rating = gv1.Rows[i].FindControl("ratingedit") as DropDownList;
                object select2 = rating.SelectedItem;

                TextBox review = gv1.Rows[i].FindControl("reviewedit") as TextBox;

                cn = new SqlConnection("uid=sa;pwd=123;database=Prashanth;server=.");
                cn.Open();
                cm = new SqlCommand("update Yours set Name=@Name,Genre=@Genre,Rating=@Rating,Review=@Review where sno=@sno", cn);
                cm.Parameters.AddWithValue("@Name", name.Text);
                cm.Parameters.AddWithValue("@Genre", select1.ToString());
                cm.Parameters.AddWithValue("@Rating", select2.ToString());
                cm.Parameters.AddWithValue("@Review", review.Text);
                // cm.Parameters.AddWithValue("@Poster", poster.ImageUrl);
                cm.Parameters.AddWithValue("@sno", sno.Text);

                cm.ExecuteNonQuery();

                cn.Close();
                gv1.EditIndex = -1;
                connect();
                display();



            }

            protected void b1_Click(object sender, EventArgs e)
            {
                string poster = fileupload.PostedFile.FileName;
                fileupload.SaveAs(Server.MapPath("~/Movie/" + poster));
                cn = new SqlConnection("uid=sa;pwd=123;database=Prashanth;server=.");
                cn.Open();
                cm = new SqlCommand("insert into Yours(Poster,Name,Genre,Rating,Review) values (@Poster,@Name,@Genre,@Rating,@Review)", cn);
                cm.Parameters.AddWithValue("@Poster", "Movie/" + poster);
                cm.Parameters.AddWithValue("@Name", name.Text);
                cm.Parameters.AddWithValue("@Genre", genreddl.SelectedItem.Text);
                cm.Parameters.AddWithValue("@Rating", ratingddl.SelectedItem.Text);
                cm.Parameters.AddWithValue("@Review", review.Text);

                cm.ExecuteNonQuery();

               cn.Close();
                connect();
                display();

                name.Text = "";
                genreddl.Text = "";
                ratingddl.Text = "";
                review.Text = "";
            }
        }
    }

 
