using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace FinalProject
{
    public partial class GroupID : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-6CV5ARA\SQLEXPRESS;Initial Catalog=FinalProject;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            display();
            display1();
            display2();
        }

        void display()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from stdTable";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView1.DataSource= dt;
            GridView1.DataBind();
        }
        void display1()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from advTable";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
        }
        void display2()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select * from proTable";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            GridView3.DataSource = dt;
            GridView3.DataBind();
        }


        protected void btnSelectData_Click(object sender, EventArgs e)
        {
            
            foreach (GridViewRow grow in GridView1.Rows)
            {
                var checkBoxSelect = grow.FindControl("CheckBox1") as CheckBox;
                if(checkBoxSelect.Checked)
                {
                    GridViewRow gr = GridView1.SelectedRow;
                }
                GridView4.DataSource = grow;
                GridView4.DataBind();

                
            }
        }

        
    }
}