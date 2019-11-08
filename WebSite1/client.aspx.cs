using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(@"Data Source=localhost;port=3306;Initial Catalog=projet;User Id=root;password=''");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();

        MySqlCommand cmd = new MySqlCommand("select*from client",con);
     
        cmd.ExecuteNonQuery();
        DataTable tb1 = new DataTable();
        MySqlDataAdapter da1 = new MySqlDataAdapter(cmd);
        da1.Fill(tb1);
        GridView1.DataSource = tb1;
        GridView1.DataBind();

        con.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        MySqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "insert into client (nom) values ('" + nomcli.Text + "')";
        cmd.ExecuteNonQuery();

        MySqlCommand cmd1 = new MySqlCommand("select*from client", con);

        cmd1.ExecuteNonQuery();
        DataTable tb1 = new DataTable();
        MySqlDataAdapter da1 = new MySqlDataAdapter(cmd1);
        da1.Fill(tb1);
        GridView1.DataSource = tb1;
        GridView1.DataBind();

        nomcli.Text = "";
        numcli.Text = "";
        con.Close();

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        MySqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "Delete from client where nom='"+nomcli.Text+"' ";
        cmd.ExecuteNonQuery();

        MySqlCommand cmd1 = new MySqlCommand("select*from client", con);

        cmd1.ExecuteNonQuery();
        DataTable tb1 = new DataTable();
        MySqlDataAdapter da1 = new MySqlDataAdapter(cmd1);
        da1.Fill(tb1);
        GridView1.DataSource = tb1;
        GridView1.DataBind();



        nomcli.Text = "";
        numcli.Text = "";

        con.Close();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        con.Open();
        MySqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "Update client set nom='"+nomcli.Text+"' where numCli='"+numcli.Text+"' ";
        cmd.ExecuteNonQuery();

        MySqlCommand cmd1 = new MySqlCommand("select*from client", con);

        cmd1.ExecuteNonQuery();
        DataTable tb1 = new DataTable();
        MySqlDataAdapter da1 = new MySqlDataAdapter(cmd1);
        da1.Fill(tb1);
        GridView1.DataSource = tb1;
        GridView1.DataBind();



        nomcli.Text = "";
        numcli.Text = "";
        con.Close();
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        con.Open();
        MySqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "select * from client ";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();

        nomcli.Text = "";
        numcli.Text = "";

        con.Close();
    }
    protected void affiche(object sender, EventArgs e)
    {
        con.Open();
        int id = Convert.ToInt32((sender as LinkButton).CommandArgument);

        MySqlCommand sql = new MySqlCommand("select*from client where numCli='" + id + "' ", con);

        sql.ExecuteNonQuery();
        DataTable tb = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(sql);
        da.SelectCommand.Parameters.AddWithValue("id", id);
        da.Fill(tb);
        con.Close();

        numcli.Text = tb.Rows[0]["numCli"].ToString();
        nomcli.Text = tb.Rows[0]["nom"].ToString();
      

        con.Close();
    }

    protected void supprimer(object sender, EventArgs e)
    {
        con.Open();
        int id = Convert.ToInt32((sender as LinkButton).CommandArgument);

        MySqlCommand sql = new MySqlCommand("select*from client where numCli='" + id + "' ", con);

        sql.ExecuteNonQuery();
        DataTable tb = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(sql);
        da.SelectCommand.Parameters.AddWithValue("id", id);
        da.Fill(tb);

        MySqlCommand sql2 = new MySqlCommand("delete from client where numCli='" + id + "' ", con);
        sql2.ExecuteNonQuery();

        MySqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "select*from client";
        cmd.ExecuteNonQuery();
        DataTable tb1 = new DataTable();
        MySqlDataAdapter da1 = new MySqlDataAdapter(cmd);
        da1.Fill(tb1);
        GridView1.DataSource = tb1;
        GridView1.DataBind();

        con.Close();
    }


    protected void Button6_Click(object sender, EventArgs e)
    {
        con.Open();
        MySqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "Delete from client where nom='" + nomcli.Text + "' ";
        cmd.ExecuteNonQuery();

        MySqlCommand cmd1 = new MySqlCommand("select*from client", con);

        cmd1.ExecuteNonQuery();
        DataTable tb1 = new DataTable();
        MySqlDataAdapter da1 = new MySqlDataAdapter(cmd1);
        da1.Fill(tb1);
        GridView1.DataSource = tb1;
        GridView1.DataBind();



        nomcli.Text = "";
        numcli.Text = "";

        con.Close();
    }


    protected void Button6_Click1(object sender, EventArgs e)
    {
        con.Open();

        MySqlCommand cmd = new MySqlCommand("select*from client where nom like '%"+rech.Text+"%'", con);

        cmd.ExecuteNonQuery();
        DataTable tb1 = new DataTable();
        MySqlDataAdapter da1 = new MySqlDataAdapter(cmd);
        da1.Fill(tb1);
        GridView1.DataSource = tb1;
        GridView1.DataBind();

        con.Close();
    }
}