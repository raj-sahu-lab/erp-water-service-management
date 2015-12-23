<%@ page language="C#" autoeventwireup="true" inherits="PrintQuotation, App_Web_kdw2fovy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Print Statement</title>
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
                FASTCLEAN OFFER</div>
            <p>
                <asp:Label ID="Label3" runat="server" Text="Offer No.  " Width="68px"></asp:Label>
                <asp:Label ID="TID" runat="server" Width="460px" Font-Bold="True" CssClass="spanNum"></asp:Label>
                <asp:Label ID="Label10" runat="server" Text="Date" Width="30px"></asp:Label>
                <asp:Label ID="Dates" runat="server" Width="90px" Font-Bold="True" CssClass="spanNum"></asp:Label>
            </p>
            <div style="float: left; width: 710px;">
                <b>To,</b>
                <br />
                <asp:Label ID="Names" runat="server" Width="600px" Font-Bold="True"></asp:Label>
                <asp:Label ID="Address" runat="server" Width="600px" Style="margin-top: -10px;"></asp:Label>
                <asp:Label ID="Cell" runat="server" Width="600px" Font-Bold="True" CssClass="spanNum"
                    Style="margin-top: -5px;"></asp:Label>
                <p>
                    Ref. No. Your Enquiry No. .....................................................</p>
            </div>
            <div style="float: left;">
                <asp:GridView ID="grdRDetails" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    CssClass="mGrid" DataSourceID="sDsQuotation" PageSize="5" OnRowDataBound="grdRDetails_RowDataBound"
                    ShowFooter="True">
                    <FooterStyle Height="300px" />
                    <Columns>
                        
                        <asp:TemplateField HeaderText="Description" SortExpression="Description">
                            <ItemStyle Width="450px" HorizontalAlign="Left" />
                            <ItemTemplate>
                                Cleaning & Disinfection of Water Storange Tanks (WST) through Mechanized Dewatering,
                                Sludge Removal , High Pressure Cleaning, Vacuum Cleaning, Anti-Bacterial Spray,
                                UV Radiation
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Details" HeaderText="Tanks" ItemStyle-Width="90px" ItemStyle-HorizontalAlign="Left">
                        </asp:BoundField>
                        <asp:BoundField DataField="Capacity" HeaderText="Ltr. Capacity" ItemStyle-Width="70px"
                            ItemStyle-HorizontalAlign="Right"></asp:BoundField>
                        <asp:BoundField DataField="Unit" HeaderText="Unit" ItemStyle-Width="50px" ItemStyle-HorizontalAlign="Right">
                        </asp:BoundField>
                        <asp:BoundField DataField="Rate" HeaderText="Rate (Rs.) (@ Ltr) " ItemStyle-Width="90px"
                            ItemStyle-HorizontalAlign="Right"></asp:BoundField>

                        <asp:BoundField DataField="Amount" HeaderText="Amount" ItemStyle-HorizontalAlign="Right"
                            ItemStyle-Width="100px" ItemStyle-Font-Bold="true"></asp:BoundField>

                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="sDsQuotation" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStrErp %>"
                    SelectCommand="SELECT ROW_NUMBER() OVER(ORDER BY Details) AS Row , [Details], [Capacity], [Unit], [Rate], [Amount] FROM [vwQuotation] WHERE ([OfferNo] = @OfferNo)">
                    <SelectParameters>
                        <asp:SessionParameter Name="OfferNo" SessionField="strCode" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <div class="clear">
                &nbsp;</div>
            <div style="float: left;">
                <asp:Label ID="Label1" Text="Total" runat="server" Width="612px" CssClass="spanNumRight"
                    Style="border: 1px solid black; margin-left: -1px; margin-top: -1px;"></asp:Label>
                <asp:Label ID="lblTotal" runat="server" Width="87px" CssClass="spanNumRight" Style="border: 1px solid black;
                    margin-left: -7px;"></asp:Label>
                <asp:Label ID="Label6" Text="Add Service Tax @12.36%" runat="server" Width="612px"
                    CssClass="spanNumRight" Style="border: 1px solid black; margin-left: -1px;"></asp:Label>
                <asp:Label ID="lblTax" runat="server" Width="87px" CssClass="spanNumRight" Style="border: 1px solid black;
                    margin-left: -7px;"></asp:Label>
                <asp:Label ID="Label12" Text="Grand Total " runat="server" Width="612px" CssClass="spanNumRight"
                    Style="border: 1px solid black; margin-left: -1px;"></asp:Label>
                <asp:Label ID="lblGTotal" runat="server" Width="87px" CssClass="spanNumRight" Style="border: 1px solid black;
                    margin-left: -7px;"></asp:Label>
            </div>
            <div class="aSing">
                Truly Yours
                <br />
                <b>For, WATER CARE </b>
                <br />
                <br />
                <br />
                [Proprietor / Authorized Signatory ]
            </div>
        </div>
        <p style="padding-left: 10px; font-size: 10pt;">
            <br />
            <b><i>Our client includes : </i></b>Grasim, Ultratech, Century, Balco, Jindal, Nagar
            Nigams, SBI, Monnet to name a few
            <br />
            <br />
            <b>TERMS & CONDITIONS </b>
            <br />
            1. Payment Immediately on completion of the job.
            <br />
            2. Advance payment required for annual cleaning contarct.
        </p>
        <p style="padding-top: 10px; font-size: 10pt; text-align: center; font-weight: bold;">
            Central India's No. 1, Professional Tank Cleaning Services Company</p>
    </div>
    </form>
</body>
</html>
