<%@ Page Language="C#" AutoEventWireup="true" CodeFile="voiture.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 370px;
        }
        .auto-style2 {
            width: 417px;
            margin-left: 200px;
            height: 193px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            width: 370px;
            margin-left: 240px;
        }
        .auto-style5 {
            width: 112px;
        }
           se{
              position: fixed;
            left: 0px;
            top: 0px;
            width: 100%;
          height:40px;
            background-color:rgb(90, 128, 251);
        }
            se2{
              position: fixed;
            left: 160px;
            top: 40px;
            width: 100%;
          height:27px;
            background-color:rgb(24, 43, 159);
        }
              midina{
            position:fixed;
            top:0px;
            left:150px; height:100%;
            width: 10px;background-color:rgb(90, 128, 251)
        }
                 sa{
           
            position:absolute;
            top:50px;
            width:450px;
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
        .auto-style6 {
            position: absolute;
            left: 512px;
            top: 235px;
            width: 80px;
            height: 26px;
        }
        .auto-style7 {
            position: absolute;
            left: 311px;
            top: 236px;
            width: 77px;
            height: 26px;
        }
        .auto-style8 {
            position: absolute;
            left: 213px;
            top: 236px;
            width: 77px;
            right: 853px;
            height: 26px;
        }
        .auto-style9 {
            position: absolute;
            left: 408px;
            top: 236px;
            width: 77px;
            height: 26px;
        }
       .auto-style10 {
            height: 41px;
            position: absolute;
            left: 6px;
            top: -1px;
            width: 125px;
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
    </style>
</head>
<body>
       <se> </se>

    <midina> </midina>

    <se2>  <asp:Label ID="Label2" runat="server" Text="LISTE DES VOITURES" ForeColor="White" Font-Size="25px" Style="margin-left:200px;margin-top:5px;"></asp:Label></se2>
 
    <form id="form1" runat="server">
      <sa>
            <div  class="lien" >
              
              <a1> <a  href="client.aspx">Client</a> </a1>   <br /><br />
               <a2> <a href="voiture.aspx">Voiture</a></a2>  <br /><br />
               <a3> <a href="vente.aspx">Vente</a></a3>  <br /><br />
               <a4> <a href="facture.aspx">Facture</a></a4><br /><br />
              <a5> <a href="affaire.aspx">Chiffre d'affaire</a></a5>
              
          </div>
        </sa>   
        <div class="auto-style2">
          
            <br />
            <br />
            <br />
          
            <br />
            <br />
            <table class="auto-style3">
                <tr>
                    <td class="auto-style5">Numéro : </td>
                    <td class="auto-style4">

                        <asp:TextBox ID="numVoit" runat="server" Width="147px" CssClass="auto-style3" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        Marque :
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="marqTxt" runat="server" Height="20px" Width="213px"></asp:TextBox>
                    </td>

                </tr>
                 <tr>
                    <td class="auto-style5">
                        Prix unitaire :
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="pu" runat="server" Height="20px" Width="213px"></asp:TextBox>
                    </td>

                </tr>
                 <tr>
                    <td class="auto-style5">
                        Stock :
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="stock" runat="server" Height="20px" Width="213px"></asp:TextBox>
                    </td>

                </tr>
               
            </table>

           
            <br />
            <br />

           
            <br />

            <br />

            <asp:GridView ID="GridView1" runat="server" Width="448px">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="select" runat="server" CommandArgument=' <%# Eval("numVoiture") %> ' OnClick="affiche" BackColor="#3366CC" 
                                Style="border-radius:2px; text-decoration:none; padding-left:3px;color:white;" Width="80%">Select</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="delete" runat="server" CommandArgument=' <%# Eval("numVoiture") %> ' OnClick="supprimer" 
                                BackColor="#3366CC" 
                                Style="border-radius:2px; text-decoration:none; padding-left:3px; padding-left:3px;color:white;" Width="95%">Supprimer</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle BackColor="#3366CC" ForeColor="White" />
            </asp:GridView>
              <asp:Button ID="Button1" runat="server" OnClick="Button3_Click" Text="Delete" CssClass="auto-style6" BackColor="#3366CC" ForeColor="White" style="border-radius:4px;" BorderStyle="None" />
             <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Ajouter" BackColor="#3366CC" CssClass="auto-style8" ForeColor="White" style="border-radius:4px;" BorderStyle="None"/>
             <asp:Button ID="Button3" runat="server" OnClick="Button4_Click" Text="Update" BackColor="#3366CC" CssClass="auto-style9" ForeColor="White" style="border-radius:4px;" BorderStyle="None"/>
             <asp:Button ID="Button4" runat="server" OnClick="Button5_Click" Text="Affiché" BackColor="#3366CC" CssClass="auto-style7" ForeColor="White" style="border-radius:4px;" BorderStyle="None"/>
       
            
         <img alt="" src="./Image/car.png" class="auto-style10"/>&nbsp;
             <asp:TextBox ID="rech" runat="server" CssClass="auto" Placeholder=" Faire la recherche" Font-Size="14px" Style="text-align:center"></asp:TextBox>
             <asp:Button ID="Button6" runat="server" Text="Recherche" BackColor="#003399" BorderStyle="None" CssClass="reche" ForeColor="White" Style="border-radius:6px" OnClick="Button6_Click"/>
       <asp:Label ID="Label1" runat="server" Text="RASSETA EXPORT" CssClass="rasseta" Font-Size="28px" ForeColor="White"></asp:Label>
     
            
         <img alt="" src="./Image/bm.png" class="auto-style12"/>
          <img alt="" src="./Image/64-512.png" class="auto-style13"/>
          <img alt="" src="./Image/gif.gif" class="auto-style14"/>
         <img alt="" src="./Image/user.png" class="auto-style15"/>
        </div>
       
    </form>
</body>
</html>
