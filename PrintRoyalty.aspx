<%@ page language="C#" autoeventwireup="true" inherits="PrintRoyalty, App_Web_kdw2fovy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Print Franchise Royalty</title>
    <link href="CSS/PrintCSS.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="DivOuter">
        <div class="DivTopMe">
            <div class="DivTop">
            <img src="mImage/FastCleanHeader.jpg" alt="Header" />
             </div>
        </div>
        <div class="DivMid">
            <asp:Label ID="Label1" runat="server" Text="Date : " Width="100px"></asp:Label>
            <asp:Label ID="lblDate" runat="server" Width="100px" Font-Bold="True"></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Received with thanks from M/S " Width="200px"
                Font-Bold="False" Font-Italic="True"></asp:Label>
            <asp:Label ID="lblName" runat="server" Width="500px" Font-Bold="True"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text="A Sum of Rs." Width="200px" Font-Bold="False"
                Font-Italic="True"></asp:Label>
            <asp:Label ID="lblRAmt" runat="server" Width="500px" Font-Bold="True"></asp:Label>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Towards" Width="122px" Font-Bold="False"
                Font-Italic="True"></asp:Label>
            <asp:Label ID="lblWards" runat="server" Width="576px" Font-Bold="False"></asp:Label>
            <br />
            <asp:Label ID="lblWC" runat="server" Style="text-align: right;" Width="700px" Font-Bold="True">For Water Care Raipur</asp:Label>
        </div>
    </div>
    </form>
</body>
</html>
