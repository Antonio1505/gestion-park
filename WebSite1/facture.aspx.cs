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
    MySqlConnection con = new MySqlConnection(@"Data source=localhost; port=3306; Initial catalog=projet; user Id='root'; password=''");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();

        MySqlCommand cmd = new MySqlCommand("select DISTINCT vente.numVoiture,marque,pu,qte, (pu*qte) as Montant from client,vente,voiture where client.numCli=vente.numCli" +
            " and voiture.numVoiture=vente.numVoiture and client.numCli='" + idTxt.Text + "' ", con);

        cmd.ExecuteNonQuery();
        DataTable tb = new DataTable();
        MySqlDataAdapter da = new MySqlDataAdapter(cmd);
        da.Fill(tb);
        tabVente.DataSource = tb;
        tabVente.DataBind();




        int n = 0;
        String n2 = null;

        MySqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {
            int prix = dr.GetInt32("montant");



            n = n + prix;
            n2 = "" + n + "";



        }
        dr.Close();
        som.Text = "" + n;

        MySqlCommand cmd2 = new MySqlCommand("INSERT INTO `num` (`id`, `val`, `date`) VALUES (NULL, '2', CURRENT_DATE());", con);
        cmd2.ExecuteNonQuery();

        MySqlCommand cmd3 = new MySqlCommand("select * from num", con);
        cmd3.ExecuteNonQuery();
        MySqlDataReader dr3 = cmd3.ExecuteReader();

        Int32 id = 0;

        string dat = null;
        while (dr3.Read())
        {
             id = dr3.GetInt32("id");
            dat = dr3.GetString("date");
        }
       
        dr3.Close();

        cli.Text = idTxt.Text;
        nomc.Text = numcli.Text;

        daty.Text = "" + dat;
        nu.Text = ""+id ;
        con.Close();

        lettre.Text ="Arretee la présente facture à la somme "+NumToText.NumberToText.Convert(n)+" FMG";
    }
}
namespace NumToText
{
    static class NumberToText
    {
        private static string[] _ones =
        {
            "zero",
            "un",
            "deux",
            "trois",
            "quatre",
            "cinq",
            "six",
            "sept",
            "huit",
            "neuf"
        };

        private static string[] _teens =
        {
            "dix",
            "onze",
            "douze",
            "treize",
            "quatorze",
            "quinze",
            "seize",
            "dix-sept",
            "dix-huit",
            "dix-neuf"
        };

        private static string[] _tens =
        {
            "",
            "dix",
            "vingt",
            "trente",
            "quarante",
            "cinquante",
            "soixante",
            "soixante-dix",
            "quatre-vingt",
            "quatre-vingt-dix"
        };

        // US Nnumbering:
        private static string[] _thousands =
        {
            "cent",
            "mille",
            "million",
            "milliard",
          
        };

        /// <summary>
        /// Converts a numeric value to words suitable for the portion of
        /// a check that writes out the amount.
        /// </summary>
        /// <param name="value">Value to be converted</param>
        /// <returns></returns>
        public static string Convert(decimal value)
        {
            string digits, temp;
            bool showThousands = false;
            bool allZeros = true;

            // Use StringBuilder to build result
            System.Text.StringBuilder builder = new System.Text.StringBuilder();
            // Convert integer portion of value to string
            digits = ((long)value).ToString();
            // Traverse characters in reverse order
            for (int i = digits.Length - 1; i >= 0; i--)
            {
                int ndigit = (int)(digits[i] - '0');
                int column = (digits.Length - (i + 1));

                // Determine if ones, tens, or hundreds column
                switch (column % 3)
                {
                    case 0:        // Ones position
                        showThousands = true;
                        if (i == 0)
                        {
                            // First digit in number (last in loop)
                            temp = String.Format("{0} ", _ones[ndigit]);
                        }
                        else if (digits[i - 1] == '1')
                        {
                            // This digit is part of "teen" value
                            temp = String.Format("{0} ", _teens[ndigit]);
                            // Skip tens position
                            i--;
                        }
                        else if (ndigit != 0)
                        {
                            // Any non-zero digit
                            temp = String.Format("{0} ", _ones[ndigit]);
                        }
                        else
                        {
                            // This digit is zero. If digit in tens and hundreds
                            // column are also zero, don't show "thousands"
                            temp = String.Empty;
                            // Test for non-zero digit in this grouping
                            if (digits[i - 1] != '0' || (i > 1 && digits[i - 2] != '0'))
                                showThousands = true;
                            else
                                showThousands = false;
                        }

                        // Show "thousands" if non-zero in grouping
                        if (showThousands)
                        {
                            if (column > 0)
                            {
                                temp = String.Format("{0}{1}{2}",
                                    temp,
                                    _thousands[column / 3],
                                    allZeros ? " " : " ");
                            }
                            // Indicate non-zero digit encountered
                            allZeros = false;
                        }
                        builder.Insert(0, temp);
                        break;

                    case 1:        // Tens column
                        if (ndigit > 0)
                        {
                            temp = String.Format("{0}{1}",
                                _tens[ndigit],
                                (digits[i + 1] != '0') ? "-" : " ");
                            builder.Insert(0, temp);
                        }
                        break;

                    case 2:        // Hundreds column
                        if (ndigit > 0)
                        {
                            temp = String.Format("{0} cent ", _ones[ndigit]);
                            builder.Insert(0, temp);
                        }
                        break;
                }
            }

            // Append fractional portion/cents
            builder.AppendFormat("", (value - (long)value) * 100);

            // Capitalize first letter
            return String.Format("{0}{1}",
                Char.ToUpper(builder[0]),
                builder.ToString(1, builder.Length - 1));
        }
    }
}
