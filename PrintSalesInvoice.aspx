<%@ page language="C#" autoeventwireup="true" inherits="PrintSalesInvoice, App_Web_fa4yg0ar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Print Sales Invoice</title>
    <link href="CSS/PrintInvoice.css" rel="stylesheet" type="text/css" />
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
            <div class="Statement">
                TAX INVOICE</div>

            <p>
                <asp:Label ID="Label3" runat="server" Text="Bill No.  " Width="50px"></asp:Label>
                <asp:Label ID="lblBillNo" runat="server" Width="420px" Font-Bold="True" 
                    CssClass="spanNum"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Date : " Width="40px"></asp:Label>
                <asp:Label ID="lblDate" runat="server" Width="130px" Font-Bold="True" CssClass="spanNum"></asp:Label>
            </p>

            <div style="float: left; width: 510px;">
                To,
                <asp:Label ID="Names" runat="server" Width="500px" Font-Bold="True"></asp:Label>
                <asp:Label ID="cName" runat="server" Width="500px" Font-Bold="True"></asp:Label>
                <asp:Label ID="Address" runat="server" Width="500px"></asp:Label>
                <asp:Label ID="Cell" runat="server" Width="500px" Font-Bold="True" CssClass="spanNum"></asp:Label>
            </div>

            <div style="float: left; width: 210px; font-size: 9pt; font-weight: bold;">
                Tin NO. : [TIN_NUMBER]<br />
                PAN NO. : AFHPA0798K
                <br />
            </div>

            <div style="float: left;">
                <asp:GridView ID="grdRDetails" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    CssClass="mGrid" DataSourceID="sDsSales" PageSize="20">
                    <Columns>
                        <asp:BoundField DataField="Row" HeaderText="SN" ItemStyle-Width="50px" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="Items" HeaderText="Description of Products/Article" ItemStyle-Width="460px"
                            ItemStyle-HorizontalAlign="Left" SortExpression="Items" />
                        <asp:BoundField DataField="Qty" HeaderText="Unit" ItemStyle-Width="90px" ItemStyle-HorizontalAlign="Right" />
                        <asp:BoundField DataField="TotalAmt" HeaderText="Amount (Rs.) Without Tax" ItemStyle-Width="150px"
                            ItemStyle-HorizontalAlign="Right" ItemStyle-Font-Bold="true" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="sDsSales" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStrErp %>"
                    SelectCommand="SELECT  ROW_NUMBER() OVER(ORDER BY Items) AS Row , [Items], [Qty], Price*Qty as [TotalAmt] FROM [vwSalesDetails] WHERE (([FranID] = @FranID) AND ([EntryDate] = @EntryDate))">
                    <SelectParameters>
                        <asp:SessionParameter Name="FranID" SessionField="strCode" Type="String" />
                        <asp:SessionParameter DbType="Date" Name="EntryDate" SessionField="strIssueDate" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>

            <div class="clear"> &nbsp;</div>

            <div style="float: left;">
                <asp:Label ID="Label1" Text="Total " runat="server" Width="565px" 
                    CssClass="spanNumRight" style="border:1px solid black; margin-left:-1px;"></asp:Label>
                <asp:Label ID="lblTotal" runat="server" Width="132px" CssClass="spanNumRight" 
                    style="border:1px solid black; margin-left:-5px;"></asp:Label>
                <asp:Label ID="Label6" Text="Grand Total [with 5% or 14%]" runat="server" Width="565px"
                    CssClass="spanNumRight" style="border:1px solid black; margin-left:-1px;"></asp:Label>
                <asp:Label ID="lblGTotal" runat="server" Width="132px" CssClass="spanNumRight" 
                    style="border:1px solid black; margin-left:-5px;"></asp:Label>
                <asp:Label ID="lblWards" Style="font-size: 11pt;" runat="server" Width="700px" Font-Bold="False"></asp:Label>
            </div>

            <div class="aSing">                
                <b>For, WATER CARE </b>
                <br />
                <br />
                [Authorized Signatory ]
            </div>

            <div class="clear"> &nbsp;</div>

            <div style="float:left;">
            <img src="mImage/FCBottom.png" alt="Header"/>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
