<%@ Page Language="C#" AutoEventWireup="true" CodeFile="client.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 343px;
        }
        .auto-style2 {
            width: 412px;
            height: 182px;
            margin-left: 200px;
        }
        .auto-style3 {
            height: 103px;
            width: 400px;
        }
      
            midina{
            position:fixed;
            top:0px;
            left:149px; height:100%;
            width: 11px;background-color:rgb(90, 128, 251)
        }
                 sa{
           
            position:absolute;
            top:50px;
            width:450px;
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
        .auto-style4 {
            position: absolute;
            left: 226px;
            top: 185px;
            width: 79px;
            height: 26px;
        }
        .auto-style5 {
            position: absolute;
            left: 408px;
            top: 185px;
            height: 26px;
            width: 70px;
            right: 432px;
        }
        .auto-style6 {
            position: absolute;
            left: 319px;
            top: 185px;
            width: 75px;
            height: 26px;
            right: 516px;
        }
        .auto-style7 {
            position: absolute;
            left: 491px;
            top: 185px;
            height: 26px;
            width: 68px;
        }
        .auto-style8 {
            position: absolute;
            left: 631px;
            top: 5px;
            width: 214px;
            height: 20px;
        }
        .auto-style9 {
            position: absolute;
            left: 857px;
            top: 6px;
            height: 25px;
        }
        .auto-style10 {
            height: 41px;
            position: absolute;
            left: 6px;
            top: -1px;
            width: 125px;
        }
        .auto-style11 {
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
        .auto-style16 {
            width: 69px;
        }
    </style>
</head>
<body>
      <se> </se>

    <midina> </midina>

    <se2>  <asp:Label ID="Label2" runat="server" Text="LISTE DES CLIENTS" ForeColor="White" Font-Size="25px" Style="margin-left:200px;margin-top:5px;"></asp:Label></se2>

    <form id="form1" runat="server">
         <sa>
            <div  class="lien" >
              
              <a1> <a  href="client.aspx">Client</a> </a1>   <br /><br />
               <a2> <a href="voiture.aspx">Reservation</a></a2><br /><br />
               
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
            <table class="auto-style3">
                <tr>
                    <td class="auto-style16">Numéro :</td>
                    <td class="auto-style1">

                        <asp:TextBox ID="numcli" runat="server" Width="72px" ReadOnly="True"></asp:TextBox>
                        <asp:TextBox ID="rech" runat="server" CssClass="auto-style8" Placeholder=" Faire la recherche" Font-Size="14px" Style="text-align:center"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        Nom :
                    </td>
                    <td class="auto-style1">
                        <asp:TextBox ID="nomcli" runat="server" Height="20px" Width="213px" AutoCompleteType="FirstName" ToolTip="Saisir un lettre" ValidateRequestMode="Disabled"></asp:TextBox>
                    </td>

                </tr>
                                  
            </table>

            <br />
            <br />

            <br />

           
              
             

           

            <asp:GridView ID="GridView1" runat="server" Width="458px" >
                 <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="select" runat="server" CommandArgument=' <%# Eval("numCli") %> ' OnClick="affiche" BackColor="#3366CC" 
                                Style="border-radius:2px; text-decoration:none; padding-left:3px;color:white;" Width="75%">Select</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="delete" runat="server" CommandArgument=' <%# Eval("numCli") %> ' OnClick="supprimer" 
                                BackColor="#3366CC" 
                                Style="border-radius:2px; text-decoration:none; padding-left:3px; padding-left:3px;color:white;" Width="95%">Supprimer</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <HeaderStyle BackColor="#3366CC" ForeColor="White"  />
                 
            </asp:GridView>
             <asp:Button ID="Button1" runat="server" OnClick="Button2_Click" Text="Ajout" CausesValidation="False" CssClass="auto-style4" BackColor="#3366CC" ForeColor="White" style="border-radius:4px;" BorderStyle="None" />
             <asp:Button ID="Button2" runat="server" OnClick="Button3_Click" Text="Delete" CausesValidation="False" CssClass="auto-style5" BackColor="#3366CC" BorderColor="White" ForeColor="White" style="border-radius:4px;" BorderStyle="None"/>
            
               <asp:Button ID="Button5" runat="server" OnClick="Button4_Click" Text="Update" CausesValidation="False" CssClass="auto-style6" BackColor="#3366CC" ForeColor="White" style="border-radius:4px;" BorderStyle="None"/>
               <asp:Button ID="Button4" runat="server" OnClick="Button5_Click" Text="Affiché" CausesValidation="False" CssClass="auto-style7" BackColor="#3366CC" ForeColor="White"  style="border-radius:4px;" BorderStyle="None"/>


             <asp:Button ID="Button6" runat="server" Text="Recherche" BackColor="#003399" BorderStyle="None" CssClass="auto-style9" ForeColor="White" Style="border-radius:6px" OnClick="Button6_Click1"/>
       
            <img alt="" src="./Image/car.png" class="auto-style10"/>&nbsp;

            <asp:Label ID="Label1" runat="server" Text="RASSETA EXPORT" CssClass="auto-style11" Font-Size="28px" ForeColor="White"></asp:Label>
        </div>

            <img alt="" src="./Image/bm.png" class="auto-style12"/>
          <img alt="" src="./Image/64-512.png" class="auto-style13"/>
          <img alt="" src="./Image/gif.gif" class="auto-style14"/>
         <img alt="" src="./Image/user.png" class="auto-style15"/>

    </form>
</body>
</html>
