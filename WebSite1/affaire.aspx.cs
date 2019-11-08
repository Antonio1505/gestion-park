using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


public partial class _Default : System.Web.UI.Page
{
    MySqlConnection con = new MySqlConnection(@"Data source=localhost; port=3306; Initial catalog=projet; user Id='root'; password=''");
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();
        MySqlCommand cmd2 = new MySqlCommand("select client.numCli,nom, sum(qte * pu) as Montant from client, vente, voiture where client.numCli = vente.numCli and" +
                 " voiture.numVoiture=vente.numVoiture   GROUP by vente.numCli ", con);

        cmd2.ExecuteNonQuery();

        DataTable tb = new DataTable();
        MySqlDataAdapter d1a = new MySqlDataAdapter(cmd2);
        d1a.Fill(tb);
        tabAff.DataSource = tb;
        tabAff.DataBind();

        MySqlDataReader dr1 = cmd2.ExecuteReader();
        Int32 som = 0, somme = 0;
        while (dr1.Read())
        {
            som = dr1.GetInt32("Montant");
            

            somme = somme + som;
        }
        dr1.Close();
        sum.Text = "" + somme;
        con.Close();
    


    MySqlCommand com = new MySqlCommand("select client.numCli, nom, sum(qte * pu) as Montant from client, vente, voiture where client.numCli = vente.numCli and" +
                    " voiture.numVoiture=vente.numVoiture   GROUP by vente.numCli ", con);



        MySqlDataAdapter da = new MySqlDataAdapter(com);
        DataSet ds = new DataSet();
        da.Fill(ds);

        DataTable ChartData = ds.Tables[0];

        //storing total rows count to loop on each Record  
        string[] XPointMember = new string[ChartData.Rows.Count];
        int[] YPointMember = new int[ChartData.Rows.Count];

        for (int count = 0; count < ChartData.Rows.Count; count++)
        {
            //storing Values for X axis  
            XPointMember[count] = ChartData.Rows[count]["nom"].ToString();
            //storing values for Y Axis  
            YPointMember[count] = Convert.ToInt32(ChartData.Rows[count]["Montant"]);

        }
        //binding chart control  
        Chart1.Series[0].Points.DataBindXY(XPointMember, YPointMember);

        //Setting width of line  
        Chart1.Series[0].BorderWidth = 10;
        //setting Chart type   
        Chart1.Series[0].ChartType = SeriesChartType.Column;

        /*   Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
           Chart1.ChartAreas["ChartArea1"].Area3DStyle.Rotation = 30;
           Chart1.ChartAreas["ChartArea1"].Area3DStyle.Inclination = 40;
   */
       

        foreach (Series charts in Chart1.Series)
        {
            foreach (DataPoint point in charts.Points)
            {


                point.Color = Color.FromArgb(23, 63, 255);

                point.LabelForeColor = Color.FromArgb(23, 63, 255);
                point.Label = string.Format(" {1}", point.YValues[0], point.AxisLabel);

            }
        }

        //Enabled 3D  
        Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = false;
        con.Close();

    
}

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
  
                MySqlCommand cmd2 = new MySqlCommand("select client.numCli,nom, sum(qte * pu) as Montant from client, vente, voiture where client.numCli = vente.numCli and" +
                    " voiture.numVoiture=vente.numVoiture and date_vente BETWEEN '"+preDate.Text+"' and '"+deuxDate.Text+"'  GROUP by vente.numCli ", con);

                cmd2.ExecuteNonQuery();

                DataTable tb = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd2);
                da.Fill(tb);
                tabAff.DataSource = tb;
                tabAff.DataBind();

        MySqlDataReader dr = cmd2.ExecuteReader();
        Int32 som = 0, somme = 0;
        while (dr.Read())
        {
            som = dr.GetInt32("Montant");


            somme = somme + som;
        }
        dr.Close();
        sum.Text=""+somme;

                   con.Close();
        Bindchart();

    }



    private void Bindchart()
    {
        con.Open();
        
        MySqlCommand com = new MySqlCommand("select client.numCli, nom, sum(qte * pu) as Montant from client, vente, voiture where client.numCli = vente.numCli and" +
                    " voiture.numVoiture=vente.numVoiture and date_vente BETWEEN '" + preDate.Text + "' and '" + deuxDate.Text + "'  GROUP by vente.numCli ", con);

       

        MySqlDataAdapter da = new MySqlDataAdapter(com);
        DataSet ds = new DataSet();
        da.Fill(ds);

        DataTable ChartData = ds.Tables[0];

        //storing total rows count to loop on each Record  
        string[] XPointMember = new string[ChartData.Rows.Count];
        int[] YPointMember = new int[ChartData.Rows.Count];

        for (int count = 0; count < ChartData.Rows.Count; count++)
        {
            //storing Values for X axis  
            XPointMember[count] = ChartData.Rows[count]["nom"].ToString();
            //storing values for Y Axis  
            YPointMember[count] = Convert.ToInt32(ChartData.Rows[count]["Montant"]);

        }
        //binding chart control  
        Chart1.Series[0].Points.DataBindXY(XPointMember, YPointMember);

        //Setting width of line  
        Chart1.Series[0].BorderWidth = 10;
        //setting Chart type   
        Chart1.Series[0].ChartType = SeriesChartType.Column;

     /*   Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
        Chart1.ChartAreas["ChartArea1"].Area3DStyle.Rotation = 30;
        Chart1.ChartAreas["ChartArea1"].Area3DStyle.Inclination = 40;
*/
        MySqlDataReader dr12 = com.ExecuteReader();

        foreach (Series charts in Chart1.Series)
        {
            foreach (DataPoint point in charts.Points)
            {


                point.Color = Color.FromArgb(23, 63, 255);
                
                point.LabelForeColor= Color.FromArgb(23, 63, 255);
                point.Label = string.Format(" {1}", point.YValues[0], point.AxisLabel);

            }
        }


        //Enabled 3D  
         //Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;  
        con.Close();

    }

}