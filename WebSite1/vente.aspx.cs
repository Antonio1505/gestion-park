using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Data.SqlClient;

public partial class Default3 : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(@"Data source=localhost;port=3306;Initial catalog=projet;user Id='root';password=''");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();

        MySqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "select*from vente";
        cmd.ExecuteNonQuery();
        DataTable tb = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        da.Fill(tb);
        tabVente.DataSource = tb;
        tabVente.DataBind();

        con.Close();


    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        con.Open();
        MySqlCommand cmd0 = new MySqlCommand(" select *from vente where id='"+idTxt.Text+"' ",con);
        MySqlDataReader dr0 = cmd0.ExecuteReader();
        int qte0 = 0;
        dr0.Read();
        qte0 = dr0.GetInt32("qte");
        dr0.Close();

        MySqlCommand cmd =new MySqlCommand("delete from vente where id='"+idTxt.Text+"'",con);
        cmd.ExecuteNonQuery();

       

        MySqlCommand cmd2 = new MySqlCommand("select*from voiture where numVoiture='" + numvoi.Text + "'",con);
        MySqlDataReader dr2 = cmd2.ExecuteReader();
        int stock = 0;
        dr2.Read();
        stock = dr2.GetInt32("stock");
        dr2.Close();

        stock = stock + qte0;

        MySqlCommand sql3 = new MySqlCommand("update voiture set stock='"+stock+"' where numVoiture='"+numvoi.Text+"' ", con);
        sql3.ExecuteNonQuery();

        MySqlCommand sql = new MySqlCommand("select*from vente ", con);

        sql.ExecuteNonQuery();
        DataTable tb = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(sql);
        da.Fill(tb);
        tabVente.DataSource = tb;
        tabVente.DataBind();

        idTxt.Text = "";
        numcli.Text = "";
        numvoi.Text = "";
        qte.Text = "";
        date.Text = "";

        con.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();

        MySqlCommand cmd = new MySqlCommand("insert into vente(numCli,numVoiture,qte,date_vente)" +
                  " values('" + numcli.Text + "','" + numvoi.Text + "','" + qte.Text + "','" + date.Text + "')", con);
        cmd.ExecuteNonQuery();

        MySqlCommand cmd0 = new MySqlCommand("select * from vente", con);
        // cmd0.ExecuteNonQuery();
        MySqlDataReader dr0 = cmd0.ExecuteReader();
        dr0.Close();

          MySqlCommand cmd1 = new MySqlCommand("select*from vente where " +
                      "numCli='" + numcli.Text + "' and numVoiture='" + numvoi.Text + "'", con);
            //  cmd1.ExecuteNonQuery();
        
           

            MySqlCommand cmd2 = new MySqlCommand("select *  from voiture where numVoiture='" + numvoi.Text + "'", con);
            //  cmd2.ExecuteNonQuery();
         
           

        MySqlDataReader dr1 = cmd1.ExecuteReader();
        int  qte1 = 0;
        dr1.Read();
         qte1 = dr1.GetInt32("qte");
        dr1.Close();

        MySqlDataReader dr2 = cmd2.ExecuteReader();
        int stock = 0;
        dr2.Read();
        stock = dr2.GetInt32("stock");
        dr2.Close();

      
                stock = stock - qte1;

                if (stock > 0)
                {
                    MySqlCommand sql3 = new MySqlCommand("update voiture set stock='" + stock + "' where numVoiture='" + numvoi.Text + "' ", con);
                    sql3.ExecuteNonQuery();
                }
                else
                {
                    MySqlCommand sql5 = new MySqlCommand("delete from vente where numCli='" + numcli.Text + "' and numVoiture='" + numvoi.Text + "' ", con);
                        sql5.ExecuteNonQuery();
            String script = "alert ('Le stock de ce voiture est inferieur à votre commande. Votre demande a été annulé');";
            Page.ClientScript.RegisterStartupScript(this.GetType(),
"le_script", script, true);

        }


        MySqlCommand sql = new MySqlCommand("select*from vente order by id ", con);

        sql.ExecuteNonQuery();
        DataTable tb = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(sql);
        da.Fill(tb);
        tabVente.DataSource = tb;
        tabVente.DataBind();

        idTxt.Text = "";
        numcli.Text = "";
        numvoi.Text = "";
        qte.Text = "";
        date.Text = "";


        con.Close();
        
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        con.Open();
      
        MySqlCommand cmd1 = new MySqlCommand("select * from vente where numCli='"+numcli.Text+"' and numVoiture='"+numvoi.Text+"' ", con);
        MySqlDataReader dr1 = cmd1.ExecuteReader();
        int qte0 = 0;
        dr1.Read();
        qte0 = dr1.GetInt32("qte");
        dr1.Close();

        MySqlCommand cmd = new MySqlCommand("update vente set qte='" + qte.Text + "',date_vente='" + date.Text + "' where id='" + idTxt.Text + "'", con);
        cmd.ExecuteNonQuery();


        MySqlCommand cmd4 = new MySqlCommand("select * from vente where numCli='"+numcli.Text+"' and numVoiture='"+numvoi.Text+"' ", con);
        MySqlDataReader dr4 = cmd4.ExecuteReader();
        int qte1 = 0;
        dr4.Read();
        qte1 = dr4.GetInt32("qte");
        dr4.Close();

        

        MySqlCommand cmd5 = new MySqlCommand("select * from voiture where numVoiture='"+numvoi.Text+"'", con);

        MySqlDataReader dr5 = cmd5.ExecuteReader();
        int stock = 0, stock0 = 0; ;
        dr5.Read();
        stock = dr5.GetInt32("stock");
        stock0 = dr5.GetInt32("stock");
        dr5.Close();

     
        if (qte1 > qte0)
        {
            int qte2 = qte1 - qte0;
            stock = stock - qte2;
            if (stock < 0)
            {
                String script = "alert ('Déjoler!!la quantité de votre commande est supérieur à la stock! votre demande à été annulé');";
                Page.ClientScript.RegisterStartupScript(this.GetType(),
    "le_script", script, true);

                MySqlCommand sql3 = new MySqlCommand("update voiture set stock='" + stock0 + "' where numVoiture='" + numvoi.Text + "' ", con);
                sql3.ExecuteNonQuery();

                MySqlCommand sql4 = new MySqlCommand("update vente set qte='" + qte0 + "',date_vente='" + date.Text + "' where id='" + idTxt.Text + "'", con);
                sql4.ExecuteNonQuery();
            }
            else
            {
                MySqlCommand sql3 = new MySqlCommand("update voiture set stock='" + stock + "' where numVoiture='" + numvoi.Text + "' ", con);
                sql3.ExecuteNonQuery();
            }

        }
        else
        {
            int qte2 = qte0 - qte1;
            stock = stock + qte2;
            MySqlCommand sql4 = new MySqlCommand("update voiture set stock='" + stock + "' where numVoiture='" + numvoi.Text + "' ",con);
            sql4.ExecuteNonQuery();
        }
        /*
                MySqlCommand cmd3 = new MySqlCommand("select*from vente",con);
                cmd3.ExecuteNonQuery();
                */
        MySqlCommand sql = new MySqlCommand("select*from vente ", con);

        sql.ExecuteNonQuery();
        DataTable tb = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(sql);
        da.Fill(tb);
        tabVente.DataSource = tb;
        tabVente.DataBind();

        idTxt.Text = "";
        numcli.Text = "";
        numvoi.Text = "";
        qte.Text = "";
        date.Text = "";

        con.Close();
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        con.Open();
       // MySqlCommand cmd = con.CreateCommand();
        //cmd.CommandType = CommandType.Text;

        //  cmd.CommandText = "select*from vente";
        MySqlCommand sql = new MySqlCommand("select*from vente ",con);

       sql.ExecuteNonQuery();
            DataTable tb = new DataTable();
            MySqlDataAdapter da = new MySqlDataAdapter(sql);
            da.Fill(tb);
            tabVente.DataSource = tb;
            tabVente.DataBind();
 
     
     /* MySqlDataReader dr = sql.ExecuteReader();

       dr.Read();
        

            idTxt.Text = dr.GetString("qte");

          //  dr.Close();
        */
        con.Close();

    }

    protected void affiche(object sender,EventArgs e)
    {
        con.Open();
        int id= Convert.ToInt32((sender as LinkButton).CommandArgument);

        MySqlCommand sql = new MySqlCommand("select*from vente where id='"+id+ "' order by id", con);

        sql.ExecuteNonQuery();
        DataTable tb = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(sql);
        da.SelectCommand.Parameters.AddWithValue("id", id);
        da.Fill(tb);
        con.Close();

        idTxt.Text = tb.Rows[0]["id"].ToString();
        numcli.Text = tb.Rows[0]["numCli"].ToString();
        numvoi.Text = tb.Rows[0]["numVoiture"].ToString();
        qte.Text = tb.Rows[0]["qte"].ToString();
        date.Text = tb.Rows[0]["date_vente"].ToString();

        con.Close();
    }

    protected void supprimer(object sender, EventArgs e)
    {
        con.Open();
        int id = Convert.ToInt32((sender as LinkButton).CommandArgument);

        MySqlCommand sql = new MySqlCommand("select*from vente where id='" + id + "' order by id", con);

        sql.ExecuteNonQuery();
        DataTable tb = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(sql);
        da.SelectCommand.Parameters.AddWithValue("id", id);
        da.Fill(tb);

        MySqlCommand cmd0 = new MySqlCommand(" select *from vente where id='" + id + "' ", con);
        MySqlDataReader dr0 = cmd0.ExecuteReader();
        int qte0 = 0,numvo=0;
        dr0.Read();
        qte0 = dr0.GetInt32("qte");
        numvo = dr0.GetInt32("numVoiture");
        dr0.Close();

        MySqlCommand cmd = new MySqlCommand("delete from vente where id='" + id+ "'", con);
        cmd.ExecuteNonQuery();



        MySqlCommand cmd2 = new MySqlCommand("select*from voiture where numVoiture='" + numvo + "'", con);
        MySqlDataReader dr2 = cmd2.ExecuteReader();
        int stock = 0;
        dr2.Read();
        stock = dr2.GetInt32("stock");
        dr2.Close();

        stock = stock + qte0;

        MySqlCommand sql3 = new MySqlCommand("update voiture set stock='" + stock + "' where numVoiture='" + numvo + "' ", con);
        sql3.ExecuteNonQuery();

        MySqlCommand sql5 = new MySqlCommand("select*from vente order by id", con);

        sql.ExecuteNonQuery();
        DataTable tb5 = new DataTable();
        MySqlDataAdapter da5 = new MySqlDataAdapter(sql5);
        da5.Fill(tb5);
        tabVente.DataSource = tb5;
        tabVente.DataBind();


        con.Close();

      
    }





    protected void Button6_Click(object sender, EventArgs e)
    {
        con.Open();

        MySqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;

        cmd.CommandText = "select*from vente where numCli like '%"+rech.Text+"%'";
        cmd.ExecuteNonQuery();
        DataTable tb = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        da.Fill(tb);
        tabVente.DataSource = tb;
        tabVente.DataBind();

        con.Close();

    }
}