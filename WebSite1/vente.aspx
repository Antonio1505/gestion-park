<%@ Page Language="C#" AutoEventWireup="true" CodeFile="vente.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 370px;
        }
        .auto-style3 {
            margin-left: 70px;
            background-color:white;
            position:absolute;
            left:56px;
            top:43px;
            width: 440px;
        }
        .auto-style4 {
            width: 370px;
            margin-left: 240px;
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
            position: absolute;
            top: 249px;
            left: 120px;
            width: 554px;
            margin-top: 0px;
        }
        .auto-style7 {
            margin-left: 70px;
            background-color: rgb(86, 113, 243);
            position: absolute;
            left: 60px;
            top: 2px;
        }
        
        .auto-style8 {
            position: absolute;
            left: 62px;
            top: 48px;
            width: 119px;
            border-right:20px;
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
     se2{
              position: fixed;
            left: 160px;
            top: 40px;
            width: 100%;
          height:27px;
            background-color:rgb(24, 43, 159);
        }
       .auto-style12 {
            position: absolute;
            left: 86px;
            top: 88px;
            width: 55px;
            height: 28px;
        }
        .auto-style13 {
            position: absolute;
            left: 98px;
            top: 128px;
            width: 40px;
            height: 30px;
        }
        .auto-style14 {
            height: 138px;
            width: 211px;
            position: absolute;
            left: 646px;
            top: 92px;
        }
        .auto-style15 {
            position: absolute;
            left: 98px;
            top: 38px;
            width: 40px;
            height: 35px;
        }
        .auto-style17 {
            width: 125px;
            height: 41px;
            position: absolute;
            left: -50px;
            top: -47px;
        }
          .auto{
            position: absolute;
            left: 631px;
            top: 5px;
            width: 214px;
            height: 20px;
        }
          .reche {
            position: absolute;
            left: 857px;
            top: 6px;
            height: 25px;
        }
            .rasseta {
            position: absolute;
            left: 329px;
            top: 4px;
            width: 260px;
        }
        .auto-style18 {
            position: absolute;
            left: 556px;
            top: -38px;
            width: 214px;
            height: 20px;
        }
    </style>
</head>
<body>
     <se> </se>

    <midina> </midina>

    <se2>  <asp:Label ID="Label2" runat="server" Text="LISTE DES VENTES" ForeColor="White" Font-Size="25px" Style="margin-left:200px;margin-top:5px;"></asp:Label></se2>

    <form id="form1" runat="server" >
      
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

      <div   class="auto-style8">
            <table class="auto-style3">
                <tr>
                    <td class="auto-style5">Id : 
                    </td>
                    <td class="auto-style4">

                        <asp:TextBox ID="idTxt" runat="server" Width="147px" CssClass="auto-style7" style="color:black" BackColor="White" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        Numéro client :
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="numcli" runat="server" Height="20px" Width="213px"></asp:TextBox>
                    </td>

                </tr>
                 <tr>
                    <td class="auto-style5">
                        Numéro voiture :</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="numvoi" runat="server" Height="20px" Width="213px"></asp:TextBox>
                    </td>

                </tr>
                 <tr>
                    <td class="auto-style5">
                        Quantité :</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="qte" runat="server" Height="20px" Width="213px"></asp:TextBox>
                    </td>

                </tr>
                  <tr>
                    <td class="auto-style5">
                        Date de vente :</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="date" runat="server" Height="20px" Width="213px" TextMode="Date"></asp:TextBox>
                     </td> 

                </tr>

                <tr>
                   <td colspan="2" >
                       <asp:Button ID="supprime" runat="server" OnClick="Button3_Click" Text="Supprimer" Width="81px" style="height: 26px; background-color:rgb(86, 113, 243);border-radius:4px ;" BorderStyle="None"  ForeColor="White"/>
                       <b> 
                       <asp:Button ID="ajoute" runat="server" OnClick="Button2_Click" Text="Ajouter" Width="81px" style="height: 26px; background-color:rgb(86, 113, 243);border-radius:4px ;"  BackColor="#3333cc" BorderStyle="None" ForeColor="White"/>
                      
                       </b>
                      
                        <asp:Button ID="update" runat="server" OnClick="Button4_Click" Text="Update" Width="81px" style="height: 26px; background-color:rgb(86, 113, 243);border-radius:4px ;"  BackColor="#3333cc" BorderStyle="None" ForeColor="White"/>
                       <asp:Button ID="display" runat="server" Text="Display" Width="81px" style="height: 26px; background-color:rgb(86, 113, 243);border-radius:4px ;"  OnClick="Button5_Click" BackColor="#3333cc" BorderStyle="None" ForeColor="White"  />
                    </td> 
                        </tr>
            </table>

            <br />

            <asp:GridView ID="tabVente" runat="server" CssClass="auto-style6">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="select" runat="server" CommandArgument=' <%# Eval("id") %> ' OnClick="affiche" BackColor="#3366CC" 
                                Style="border-radius:2px; text-decoration:none; padding-left:3px;color:white;" Width="80%">Select</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="delete" runat="server" CommandArgument=' <%# Eval("id") %> ' OnClick="supprimer" 
                                BackColor="#3366CC" 
                                Style="border-radius:2px; text-decoration:none; padding-left:3px; padding-left:3px;color:white;" Width="95%">Supprimer</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle BackColor="#3366CC" ForeColor="White" />
            </asp:GridView>

    </vary>
           <asp:TextBox ID="rech" runat="server" CssClass="auto-style18" Placeholder=" Faire la recherche" Font-Size="14px" Style="text-align:center"></asp:TextBox>
           
<asp:Button ID="Button6" runat="server" Text="Recherche" BackColor="#003399" BorderStyle="None" CssClass="auto-style9" ForeColor="White" Style="border-radius:6px;position:absolute; left: 788px; top: -40px; height: 29px; margin-top: 0px;" OnClick="Button6_Click"/>
       
            <img alt="" src="./Image/car.png" class="auto-style17"/>&nbsp;

            <asp:Label ID="Label1" runat="server" Text="RASSETA EXPORT" CssClass="auto-style11" Font-Size="28px" ForeColor="White" Style="position:absolute; left: 239px; top: -39px; width: 311px;"></asp:Label>
        </div>
 
          <img alt="" src="./Image/bm.png" class="auto-style12"/>
          <img alt="" src="./Image/64-512.png" class="auto-style13"/>
          <img alt="" src="./Image/gif.gif" class="auto-style14"/>
         <img alt="" src="./Image/user.png" class="auto-style15"/>
</form>
    
</body>
</html>
