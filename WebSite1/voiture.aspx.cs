using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;

public partial class Default2 : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(@"Data Source=localhost;port=3306;Initial catalog=projet; User Id=root;password=''");

    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        MySqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "select*from voiture";
        cmd.ExecuteNonQuery();
        DataTable tab = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        da.Fill(tab);
        GridView1.DataSource = tab;
        GridView1.DataBind();

        con.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        MySqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText="delete from voiture where numVoiture='"+numVoit.Text+"'";
        cmd.ExecuteNonQuery();

        MySqlCommand cmd1 = con.CreateCommand();
        cmd1.CommandType = CommandType.Text;

        cmd1.CommandText = "select*from voiture";
        cmd1.ExecuteNonQuery();
        DataTable tab = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd1);
        da.Fill(tab);
        GridView1.DataSource = tab;
        GridView1.DataBind();

        con.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        MySqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "insert into voiture(marque,pu,stock) values('"+marqTxt.Text+"','"+pu.Text+"','" +stock.Text+"')";
        cmd.ExecuteNonQuery();

        MySqlCommand cmd1 = con.CreateCommand();
        cmd1.CommandType = CommandType.Text;

        cmd1.CommandText = "select*from voiture";
        cmd1.ExecuteNonQuery();
        DataTable tab = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd1);
        da.Fill(tab);
        GridView1.DataSource = tab;
        GridView1.DataBind();

        con.Close();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        con.Open();
        MySqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText =" update voiture set marque='"+marqTxt.Text+"',pu='"+pu.Text+"',stock='"+stock.Text+"' " +
            "where numVoiture='"+numVoit.Text+"' ";
        cmd.ExecuteNonQuery();

        MySqlCommand cmd1 = con.CreateCommand();
        cmd1.CommandType = CommandType.Text;

        cmd1.CommandText = "select*from voiture";
        cmd1.ExecuteNonQuery();
        DataTable tab = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd1);
        da.Fill(tab);
        GridView1.DataSource = tab;
        GridView1.DataBind();
        con.Close();
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        con.Open();
        MySqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "select*from voiture";
        cmd.ExecuteNonQuery();
        DataTable tab = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        da.Fill(tab);
        GridView1.DataSource = tab;
        GridView1.DataBind();

        con.Close();
    }
    protected void affiche(object sender, EventArgs e)
    {
        con.Open();
        int id = Convert.ToInt32((sender as LinkButton).CommandArgument);

        MySqlCommand sql = new MySqlCommand("select*from voiture where numVoiture='" + id + "' ", con);

        sql.ExecuteNonQuery();
        DataTable tb = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(sql);
        da.SelectCommand.Parameters.AddWithValue("id", id);
        da.Fill(tb);
        con.Close();

        numVoit.Text = tb.Rows[0]["numVoiture"].ToString();
        marqTxt.Text = tb.Rows[0]["marque"].ToString();
        pu.Text = tb.Rows[0]["pu"].ToString();
        stock.Text = tb.Rows[0]["stock"].ToString();
     

        con.Close();
    }

    protected void supprimer(object sender, EventArgs e)
    {
        con.Open();
        int id = Convert.ToInt32((sender as LinkButton).CommandArgument);

        MySqlCommand sql = new MySqlCommand("select*from voiture where numVoiture='" + id + "' ", con);

        sql.ExecuteNonQuery();
        DataTable tb = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(sql);
        da.SelectCommand.Parameters.AddWithValue("id", id);
        da.Fill(tb);

        MySqlCommand sql2 = new MySqlCommand("delete from voiture where numVoiture='" + id + "' ", con);
        sql2.ExecuteNonQuery();

        MySqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "select*from voiture";
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

        cmd.CommandText = "select*from voiture where marque like '%"+rech.Text+"%'";
        cmd.ExecuteNonQuery();
        DataTable tab = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        da.Fill(tab);
        GridView1.DataSource = tab;
        GridView1.DataBind();

        con.Close();
    }
}