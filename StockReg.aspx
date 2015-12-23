<%@ page title=" Stock Register | Items Stock Register | Stock Details | All Stock Detail " language="C#" masterpagefile="~/AdminPage.master" autoeventwireup="true" inherits="StockReg, App_Web_saitqoye" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
    <style type="text/css">
        .highlight
        {
            text-decoration: none;
            color: black;
            background: yellow;
        }
    </style>
    <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="js/jquery.tablesorter.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function () {
            $("#Gridview1").tablesorter({ debug: false, widgets: ['zebra'], sortList: [[0, 0]] });
        });
    </script>
    <script type="text/javascript" language="javascript">
        function pageLoad(sender, args) {
            jQuery(document).ready(function () {
                $("#Gridview1").tablesorter({ debug: false, widgets: ['zebra'], sortList: [[0, 0]] });
            });
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <fieldset id="fldStream" style="border: 1px solid #006600; width: 95.5%; margin: 16px;">
        <legend><span class="spanCss">Stock Register</span></legend>
        <div>
            <table style="border-bottom-style: dashed; border-bottom-width: 1px; border-top-style: dashed;
                border-top-width: 1px;">
                <tr>
                    <td class="TopLMsg">
                        <div class="header-search">
                            <asp:TextBox ID="txtSearch" runat="server" autocomplete="off" Width="430px" />
                            <asp:Button ID="cmdSearch" runat="server" CssClass="button_search" OnClick="cmdSearch_Click"
                                Text="Search" />
                        </div>
                    </td>
                    <td class="TopRMsg">
                        <asp:Label ID="lblTotalRec" runat="server" Font-Bold="True" Font-Italic="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="TopLMsg">
                        Filter By&nbsp; [Item]
                    </td>
                    <td class="TopRMsg">
                        &nbsp;
                    </td>
                </tr>
            </table>
        </div>
        <asp:Panel ID="PnlHead" runat="server" Style="width: 80%; margin-top: 13px; margin-left: 100px;
            margin-bottom: 15px">
            <table align="center">
                <tr>
                    <td>
                        <div align="center" style="padding: 3px;">
                            <table cellpadding="0" cellspacing="5" style="border: solid 2px #b7ddf2; background: #ebf4fb;">
                                <tr>
                                    <td>
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                                <asp:GridView ID="grdUser" runat="server" CssClass="mGrid" AutoGenerateColumns="False"
                                                    DataSourceID="sDsStock_Reg" PagerStyle-CssClass="pgr" PageSize="150" AllowPaging="True"
                                                    AllowSorting="True">
                                                    <Columns>
                                                        <asp:BoundField DataField="Row" HeaderText="SN" ItemStyle-HorizontalAlign="Center"
                                                            ItemStyle-Width="30px" />
                                                        <asp:TemplateField HeaderText="Items" SortExpression="Items">
                                                            <ItemStyle Width="500px" HorizontalAlign="Left" />
                                                            <ItemTemplate>
                                                                <asp:Label ID="lblItems" Text='<%# HighlightText(Eval("Items").ToString()) %>' runat="server"
                                                                    CssClass="TextField" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:BoundField DataField="PurchaseQty" HeaderText="Qty" ItemStyle-HorizontalAlign="Right"
                                                            ItemStyle-Width="70px" />
                                                        <asp:BoundField DataField="SalesQty" HeaderText="Sales" ItemStyle-HorizontalAlign="Right"
                                                            ItemStyle-Width="70px" />
                                                        <asp:BoundField DataField="CurrentStock" HeaderText="On Stock" ItemStyle-HorizontalAlign="Right"
                                                            ItemStyle-Width="70px" />
                                                    </Columns>
                                                    <PagerStyle CssClass="pgr" />
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="sDsStock_Reg" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStrErp %>"
                                                    SelectCommand="SELECT ROW_NUMBER() OVER(ORDER BY ItemID) AS Row , [ItemID], [Items], PurQty as [PurchaseQty], [SalesQty], BalQty as [CurrentStock] FROM [vwCurrentStockStatus]"
                                                    FilterExpression="Items like '%{0}%'">
                                                    <FilterParameters>
                                                        <asp:ControlParameter Name="Items" ControlID="txtSearch" PropertyName="Text" />
                                                    </FilterParameters>
                                                </asp:SqlDataSource>
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </fieldset>
</asp:Content>
