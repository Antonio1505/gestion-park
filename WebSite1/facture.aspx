<%@ Page Language="C#" AutoEventWireup="true" CodeFile="facture.aspx.cs" Inherits="_Default" %>

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
           margin-left:220px;
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
        .auto-style10 {
           
            margin-left:650px;
            margin-top:0px;
            width:128px;
            padding-left:5px;
            padding-right:5px;
        }
        .auto-style11 {
            position: relative;
            left: 190px;
            top: 12px;
            width: 1000px;
        }
        .auto-style12 {
            position: absolute;
            left: 311px;
            top: 63px;
            width: 128px;
            height: 22px;
        }
        .so{
            margin-top:0px;
            margin-left:580px;
              padding-left:10px;
            padding-right:10px;
          padding-bottom:3px;

        }
        .facTxt{
            margin-top:0px;
            margin-left:370px;
            width:200px;

        }
        .fact{
           position:relative;
           top:-20px;
           left:390px;

        }
        .date{
              position:relative;
           top:-40px;
           left:520px;
        }
        .auto-style13 {
            margin-top: 0px;
            margin-left: 370px;
        }
        .auto-style14 {
            position: relative;
            left: 522px;
            top: -18px;
            margin-top: 0px;
            width: 57px;
        }
        .auto-style15 {
            position: relative;
            left: 236px;
            top: 0px;
            width: 100px;
        }
        .num{
             position: relative;
            left: 456px;
            top: 18px;
            width: 100px;
        }
        .dat{
              position:relative;
           top:-35px;
           left:570px;
        }
        .numcl{
            position:relative;
            top:0px;
            left:250px;
        }
        .nomcl{
            position:relative;
            top:-19px;
            left:360px;
        }
        .nomc{
            position:relative;
            top:-19px;
            left:365px;
        }
        sar{
           
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
         .auto11 {
            position: absolute;
            left: 329px;
            top: 4px;
            width: 260px;
        }

        .auto-style18 {
            position: absolute;
            left: 239px;
            top: 6px;
            width: 428px;
        }

        </style>
</head>
<body>
    <se> 
        
    </se>

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
                    <td class="auto-style5">Nom :</td>
                    <td class="auto-style1">
                          <asp:TextBox ID="idTxt" runat="server" CssClass="auto-style12"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        Prénom :</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="numcli" runat="server" Height="20px" Width="213px"></asp:TextBox>
                    </td>

                </tr>
 
               
            </table>

            <asp:Button ID="Button1" runat="server" Text="affiché"  OnClick="Button1_Click" 
                Style="margin-left:200px;margin-top:20px;border-radius:5px;height:30px;" Width="102px" BackColor="#3366CC" ForeColor="White"/>
     
    <sar>    

         <img alt="" src="./Image/bm.png" class="auto1"/>
          <img alt="" src="./Image/64-512.png" class="auto2"/>
          <img alt="" src="./Image/gif.gif" class="auto3"/>
         <img alt="" src="./Image/user.png" class="auto4"/>
           
            <asp:Label ID="nu" runat="server" Text="num " CssClass="num"></asp:Label>
       
           
             <asp:Label ID="Label1" runat="server" Text="Facture n° :" CssClass="auto-style13" Width="81px"></asp:Label>
            <asp:Label ID="Label5" runat="server" Text="Date :" CssClass="auto-style14"></asp:Label>
          <asp:Label ID="daty" runat="server" Text="date" CssClass="dat" Width="70px"></asp:Label>
            <asp:Label ID="Label2" runat="server" Text="Client n° :" CssClass="auto-style15"></asp:Label>
            <asp:Label ID="cli" runat="server" Text="cli" CssClass="numcl"></asp:Label>
         <asp:Label ID="Label3" runat="server" Text="Nom :" CssClass="nomcl"></asp:Label>
          <asp:Label ID="nomc" runat="server" Text="ci" CssClass="nomc"></asp:Label>   

             <asp:GridView ID="tabVente" runat="server" CssClass="auto-style6" Width="570px" >
                 <HeaderStyle BackColor="#3366CC" ForeColor="White" />
            </asp:GridView>
           

             <asp:Label ID="som" runat="server" Text="Label" CssClass="auto-style10" Style="position:absolute" BorderColor="#333333" BorderWidth="1px"></asp:Label>
          
       
          <asp:Label ID="so" runat="server" Text="Somme" CssClass="so" BackColor="#3366CC" ForeColor="White"></asp:Label>

           <asp:Label ID="lettre" runat="server" Text="Label" CssClass="auto-style11" Width="700px" Font-Bold="True" Font-Size="20px"></asp:Label>
       
          <img alt="" src="./Image/car.png" class="auto-style17"/>&nbsp;

            <asp:Label ID="Label4" runat="server" Text="RASSETA EXPORT - Facture" CssClass="auto-style18" Font-Size="28px" ForeColor="White"></asp:Label>
       

    
</sar>

</form>
   
    
</body>
</html>
