using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Web.UI.DataVisualization.Charting;
using System.Drawing;
using MySql.Data.MySqlClient;

public partial class _Default : System.Web.UI.Page
{
   // private SqlConnection con;
    private MySqlCommand com;
    private string constr, query;

    MySqlConnection con = new MySqlConnection(@"Data source=localhost; port=3306; Initial catalog=projet; user Id='root'; password=''");
    private void connection()
    {
        MySqlConnection con = new MySqlConnection(@"Data source=localhost; port=3306; Initial catalog=projet; user Id='root'; password=''");
        
        

    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Bindchart();

        }
    }


    private void Bindchart()
    {
        connection();
        MySqlCommand com = new MySqlCommand("select client.numCli, nom, sum(qte * pu) as Montant from client, vente, voiture where client.numCli = vente.numCli and" +
                    " voiture.numVoiture=vente.numVoiture and date_vente BETWEEN '2018-9-9' and '2019-9-9'  GROUP by vente.numCli ", con);
       
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
        Chart1.Series[0].ChartType = SeriesChartType.Pie;

      //  Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;

        foreach (Series charts in Chart1.Series)
        {
            foreach (DataPoint point in charts.Points)
            {
                switch (point.AxisLabel)
                {
                    case "sasa": point.Color = Color.YellowGreen; break;
                    case "kity": point.Color = Color.Yellow; break;
                    case "bema": point.Color = Color.SpringGreen; break;
                }
                point.Label = string.Format("{0:0} - {1}", point.YValues[0], point.AxisLabel);

            }
        }


        //Enabled 3D  
        //  Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;  
        con.Close();

    }
}