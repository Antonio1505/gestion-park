<%@ Page Language="C#" AutoEventWireup="true" CodeFile="affaire.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" class="auto-style8">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 370px;
        }
        .auto-style3 {
            margin-top: 20px;
            margin-left:170px;
            background-color:white;
         
         
            width: 440px;
            height: 65px;
        }
        .auto-style5 {
            width: 178px;
            color:black;
        }
        body{
          
            color:black;
        }
        sa{
           
            position:absolute;
            top:50px;
            width:450px;
        }
        .auto-style6 {
           margin-left:180px;
            width: 439px;
            margin-top: 30px;
        }
                
        .auto-style8 {
          
            left: 62px;
            top: 48px;
            width: 92px;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: 20px;
            height: 119px;
        }
        se{
              position: fixed;
            left: 0px;
            top: 0px;
            width: 100%;
          height:40px;
            background-color:rgb(90, 128, 251);
        }
        midina{
            position:fixed;
            top:0px;
            left:150px; height:100%;
            width: 10px;background-color:rgb(90, 128, 251)
        }
        
        tab{
            position:absolute;
            height:500px;
            background-color:rgb(90, 128, 251);
        }
        .auto-style12 {
            position: absolute;
            left: 324px;
            top: 63px;
            width: 145px;
            height: 22px;
        }
        .so{
            margin-top:0px;
            margin-left:440px;
              padding-left:10px;
            padding-right:10px;
          padding-bottom:3px;

        }
        .som{
            margin-top:0px;
            margin-left:434px;
            padding-left:3px;
            padding-right:3px;
            width:177px;
        }
        .txt{
            position:relative;
            top:-20px;
            left:338px;
            padding-left:3px;
            padding-right:3px;
           
            height:20px;
            color:white;
        }
                      .lien a1 a{

            background-color:rgb(90, 128, 251);
            color:white;
            width:100%;
            margin-bottom:70px;
            text-decoration:none;
            padding-left:5px;
            padding-right:85px;
            padding-bottom:3px;
            padding-top:3px;text-align:center;
            font-size:20px;
            text-decoration-style:none;margin-left:0px; border-radius:4px;
        }
          .lien a2 a{

            background-color:rgb(90, 128, 251);
            color:white;
            width:100%;
            margin-bottom:70px;margin-left:0px;
            text-decoration:none;
            padding-left:5px;
            padding-right:75px;
            padding-bottom:3px;
            padding-top:3px;
            font-size:20px;
            text-decoration-style:none;text-align:center; border-radius:4px;
        }

  .lien a3 a{

            background-color:rgb(90, 128, 251);margin-left:0px;
            color:white;
            width:100%;
            text-align:center;
            margin-bottom:70px;
            text-decoration:none;
            padding-left:9px;
            padding-right:83px;
            padding-bottom:3px;
            padding-top:3px;
            font-size:20px;
            text-decoration-style:none; border-radius:4px;
        }      
   .lien a4 a{

            background-color:rgb(90, 128, 251);margin-left:0px;
            color:white;
            width:100%;
            text-align:center;
            margin-bottom:70px;
            text-decoration:none;
            padding-left:9px;
            padding-right:70px;
            padding-bottom:3px;
            padding-top:3px;
            font-size:20px;
            text-decoration-style:none; border-radius:4px;
        }     
    .lien a5 a{

            background-color:rgb(90, 128, 251);margin-left:0px;
            color:white;
            width:100%;
            text-align:center;
            margin-bottom:70px;
            text-decoration:none;
            padding-left:9px;
            padding-right:2px;
            padding-bottom:3px;
            padding-top:3px;
            font-size:20px;
            text-decoration-style:none;
            border-radius:4px;
        }   
    .pie{
        position:absolute;
    }
    .auto1 {
            position: absolute;
            left: 86px;
            top: 88px;
            width: 55px;
            height: 28px;
        }
        .auto2 {
            position: absolute;
            left: 98px;
            top: 128px;
            width: 40px;
            height: 30px;
        }
        .auto3 {
            height: 138px;
            width: 211px;
            position: absolute;
            left: 646px;
            top: 92px;
        }
        .auto4{
            position: absolute;
            left: 98px;
            top: 38px;
            width: 40px;
            height: 35px;
        }
          .auto-style17 {
            height: 41px;
            position: absolute;
            left: 6px;
            top: -1px;
            width: 125px;
        }
           .auto-style18 {
            position: absolute;
            left: 239px;
            top: 6px;
            width: 596px;
        }
        </style>
</head>
<body>
    <se> </se>

    <midina> </midina>

    <form id="form1" runat="server" class="auto-style8">
      
          
            <br />
         <sa>
            <div  class="lien" >
              
              <a1> <a  href="client.aspx">Client</a> </a1>   <br /><br />
               <a2> <a href="voiture.aspx">Voiture</a></a2>  <br /><br />
               <a3> <a href="vente.aspx">Vente</a></a3>  <br /><br />
               <a4> <a href="facture.aspx">Facture</a></a4><br /><br />
               <a5> <a href="affaire.aspx">Chiffre d'affaire</a></a5>
              
          </div>
        </sa>  
            <br />

      
            <table class="auto-style3">
                <tr>
                    <td class="auto-style5">Premier date :</td>
                    <td class="auto-style1">
                          <asp:TextBox ID="preDate" runat="server" CssClass="auto-style12" TextMode="Date"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        Deuxieme date :</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="deuxDate" runat="server" Height="20px" Width="145px" TextMode="Date"></asp:TextBox>
                    </td>

                </tr>
 
               
            </table>

            <asp:Button ID="Button1" runat="server" Text="affiché"  OnClick="Button1_Click" Style="margin-left:200px;margin-top:20px;border-radius:5px;height:30px;" Width="102px" BackColor="#3366CC" ForeColor="White"/>
       
           
             <asp:GridView ID="tabAff" runat="server" CssClass="auto-style6" >
                 <HeaderStyle BackColor="#3366CC" ForeColor="White" />
            </asp:GridView>
        

          <img alt="" src="./Image/bm.png" class="auto1"/>
          <img alt="" src="./Image/64-512.png" class="auto2"/>
          
         <img alt="" src="./Image/user.png" class="auto4"/>
          
               
          <img alt="" src="http://localhost:21611/Image/car.png" class="auto-style17"/>
         <asp:Label ID="Label4" runat="server" Text="RASSETA EXPORT - Chiffre d'affaire" CssClass="auto-style18" Font-Size="28px" ForeColor="White"></asp:Label>
       
            <asp:Label ID="sum" runat="server" CssClass="som" Text="Label" BorderColor="Gray" BorderWidth="1px"></asp:Label>
           
            <asp:Label ID="Label1" runat="server" CssClass="txt" Text="Total :" BackColor="#3366CC" Width="93px" ForeColor="White" ></asp:Label>
       
</form>

     <asp:Chart ID="Chart1" runat="server" BackGradientStyle="LeftRight"  
        BorderlineWidth="0" Palette="None" PaletteCustomColors="Maroon"  BorderlineColor="#3366CC" CssClass="auto-style13" Style="position:absolute; left: 627px; top: 147px; width: 316px; height: 303px;">  
        <Titles>  
            <asp:Title ShadowOffset="1" Name="Items" Text="HISTOGRAMME"/>  
        </Titles>  
        <Legends>  
            <asp:Legend Alignment="Center" Docking="Bottom" IsTextAutoFit="true" Name="Default" 
                LegendStyle="Row" ForeColor="#0099FF" ItemColumnSeparatorColor="White" BorderColor="#3366CC" TitleForeColor="White" BackColor="#336699" />  
        </Legends>  
        <Series>  
            <asp:Series Name="Default" />  
        </Series>  
        <ChartAreas>  
            <asp:ChartArea Name="ChartArea1" BorderWidth="0" />  
        </ChartAreas>  
    </asp:Chart>  
</body>
</html>

