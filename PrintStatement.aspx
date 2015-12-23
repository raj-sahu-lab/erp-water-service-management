<%@ page language="C#" autoeventwireup="true" inherits="PrintStatement, App_Web_fa4yg0ar" %>

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
                TAX INVOICE</div>
            <p>
                <asp:Label ID="Label3" runat="server" Text="Invoice No. :" Width="90px"></asp:Label>
                <asp:Label ID="TID" runat="server" Width="380px" Font-Bold="True" CssClass="spanNum"></asp:Label>
                <asp:Label ID="Label10" runat="server" Text="Date :" Width="40px"></asp:Label>
                <asp:Label ID="Dates" runat="server" Width="80px" Font-Bold="True" CssClass="spanNum"></asp:Label>
            </p>
            <div style="float: left; width: 510px;">
                <b>To,</b>
                <br />
                <asp:Label ID="Names" runat="server" Width="500px" Font-Bold="True"></asp:Label>
                <asp:Label ID="Address" runat="server" Width="500px"></asp:Label>
                <asp:Label ID="Cell" runat="server" Width="500px" Font-Bold="True" CssClass="spanNum"></asp:Label>
            </div>
            <div style="float: left; width: 210px; font-size: 9pt; font-weight: bold;">
                PAN NO. : AUPPD5814L
                <br />
                S.T. NO. : AUPPD5814LSD001<br />
                Classification : Tanks Cleaning
            </div>

            <div style="float: left;">
                <asp:GridView ID="grdRDetails" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    CssClass="mGrid" DataSourceID="sDsTanksDetails" PageSize="20" OnRowDataBound="grdRDetails_RowDataBound">
                    <Columns>
                        <%--<asp:BoundField DataField="Row" HeaderText="SN" ItemStyle-Width="40px" ItemStyle-HorizontalAlign="Center" />--%>
                        <asp:TemplateField HeaderText="Description" SortExpression="Description">
                            <ItemStyle Width="400px" HorizontalAlign="Left" />
                            <ItemTemplate>
                                Cleaning & Disinfection of Water Storange Tanks (WST) through Mechanized Dewatering,
                                Sludge Removal , High Pressure Cleaning, Vacuum Cleaning, Anti-Bacterial Spray,
                                UV Radiation
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Details" HeaderText="Ltr. of Tanks" ItemStyle-Width="80px"
                            ItemStyle-HorizontalAlign="Left" />
                        <asp:BoundField DataField="Capacity" HeaderText="Capacity" ItemStyle-Width="80px"
                            ItemStyle-HorizontalAlign="Right" />
                        <asp:BoundField DataField="Units" HeaderText="Unit" ItemStyle-Width="50px" ItemStyle-HorizontalAlign="Center" />
                        <asp:BoundField DataField="Rates" HeaderText="Rate(Rs.) (Per Ltr.)" ItemStyle-HorizontalAlign="Right"
                            ItemStyle-Width="80px" />
                        <asp:BoundField DataField="Totals" HeaderText="Amount" ItemStyle-HorizontalAlign="Right"
                            ItemStyle-Width="100px" SortExpression="Totals" ItemStyle-Font-Bold="true" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="sDsTanksDetails" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStrErp %>"
                    SelectCommand="SELECT ROW_NUMBER() OVER(ORDER BY Details) AS Row ,[Details], '' as Description , [Units], [Rates], [Totals],[Capacity] FROM [vwCleanDetails] WHERE ([CusID] = @CusID)">
                    <SelectParameters>
                        <asp:SessionParameter Name="CusID" SessionField="strCode" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <div class="clear">
                &nbsp;</div>
            <div style="float: left;">
                <asp:Label ID="Label1" Text="Total" runat="server" Width="575px" CssClass="spanNumRight"
                    Style="border: 1px solid black; margin-left: -1px;"></asp:Label>
                <asp:Label ID="lblTotal" runat="server" Width="120px" CssClass="spanNumRight" Style="border: 1px solid black;
                    margin-left: -6px;"></asp:Label>
                <asp:Label ID="Label2" Text="Add Service Taxes @ 12.00%" runat="server" Width="575px"
                    CssClass="spanRight" Style="border: 1px solid black; margin-left: -1px;"></asp:Label>
                <asp:Label ID="lblsTax" runat="server" Width="120px" CssClass="spanNumRight" Style="border: 1px solid black;
                    margin-left: -5px;"></asp:Label>
                <asp:Label ID="Label4" Text="Edu Cess @ 2.00%" runat="server" Width="575px" CssClass="spanRight"
                    Style="border: 1px solid black; margin-left: -1px;"></asp:Label>
                <asp:Label ID="lblEduTax" runat="server" Width="120px" CssClass="spanNumRight" Style="border: 1px solid black;
                    margin-left: -5px;"></asp:Label>
                <asp:Label ID="Label5" Text="H. Edu Cess @ 1.00%" runat="server" Width="575px" CssClass="spanRight"
                    Style="border: 1px solid black; margin-left: -1px;"></asp:Label>
                <asp:Label ID="lblHEduCess" runat="server" Width="120px" CssClass="spanNumRight"
                    Style="border: 1px solid black; margin-left: -5px;"></asp:Label>
                <asp:Label ID="Label6" Text="Grand Total" runat="server" Width="575px" CssClass="spanNumRight"
                    Style="border: 1px solid black; margin-left: -1px;"></asp:Label>
                <asp:Label ID="lblGTotal" runat="server" Width="120px" CssClass="spanNumRight" Style="border: 1px solid black;
                    margin-left: -6px;"></asp:Label>
            </div>
            <div class="aSing">
                Truly Yours
                <br />
                <b>For, GOA WATER CARE </b>
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
            <b>TERMS & CONDITIONS </b>
            <br />
            1. Payment Immediately on completion of the job.
            <br />
            2. Advance payment required for annual cleaning contarct.
            <br />
            <b>Bank Details </b><br />
            A/C Name : GOA WATER CARE
            <br />
            A/C No. [ACCOUNT_NUMBER]<br />
            IFSC Code : KKBK0000702<br />
            Bank : Kotak Mahindra Bank , Margo Branch , Margoa Goa<br />
        </p>

    </div>
    </form>
</body>
</html>
