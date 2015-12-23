<%@ page title="Franchise Details" language="C#" masterpagefile="~/AdminPage.master" autoeventwireup="true" inherits="rptFranchise, App_Web_saitqoye" enableeventvalidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <fieldset id="fldStream" style="border: 1px solid #006600; width: 95.5%; margin: 16px;">
        <legend><span class="spanCss">Franchise Details</span></legend>
        <div>
            <table style="border-bottom-style: dashed; border-bottom-width: 1px; border-top-style: dashed;
                border-top-width: 1px;">
                <tr>
                    <td class="TopLMsg">
                        &nbsp;
                        <asp:ImageButton ID="imgbExpExcel" runat="server" OnClick="imgbExpExcel_Click" CssClass="Button_submit"
                            Height="30px" ImageUrl="~/mImage/Excel-icon.png" Width="30px" />
                    &nbsp;<asp:ImageButton ID="imgbExpPDF" runat="server" OnClick="imgbExpPDF_Click" CssClass="Button_submit"
                            Height="30px" ImageUrl="~/mImage/pdf.png" Width="30px" />
                    </td>
                    <td class="TopRMsg">
                        <asp:Label ID="lblTotalRec" runat="server" Font-Bold="True" Font-Italic="True"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
        <asp:Panel ID="PnlHead" runat="server" Style="width: 98%; margin-top: 13px; margin-left: 9px;
            margin-bottom: 15px">
            <table align="center">
                <tr>
                    <td>
                        <div align="center" style="padding: 4px;">
                            <table cellpadding="0" cellspacing="5" style="border: solid 2px #b7ddf2; background: #ebf4fb;">
                                <tr>
                                    <td>
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                                <asp:GridView ID="grdFranchise" runat="server" CssClass="mGrid" AutoGenerateColumns="False"
                                                    DataKeyNames="FranID" DataSourceID="sDsFranchise" PagerStyle-CssClass="pgr" ShowFooter="True"
                                                    PageSize="300" AllowPaging="True" AllowSorting="True">
                                                    <Columns>
                                                        <asp:BoundField DataField="FranID" HeaderText="Code" ItemStyle-Width="30px" ReadOnly="True" />
                                                        <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-HorizontalAlign="Left" />
                                                        <asp:BoundField DataField="CName" HeaderText="Company Name" ItemStyle-HorizontalAlign="Left" />
                                                        <asp:BoundField DataField="Address" HeaderText="Address" ItemStyle-HorizontalAlign="Left" />
                                                        <asp:BoundField DataField="City" HeaderText="City" ItemStyle-HorizontalAlign="Left" />
                                                        <asp:BoundField DataField="Cell" HeaderText="Mobile" ItemStyle-HorizontalAlign="Center" />
                                                        <asp:BoundField DataField="Email" HeaderText="Email" />
                                                        <asp:BoundField DataField="ADate" HeaderText="Agreemant" />
                                                        <asp:BoundField DataField="MIDate" HeaderText="Installation" />
                                                    </Columns>
                                                    <PagerStyle CssClass="pgr" />
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="sDsFranchise" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStrErp %>"
                                                    SelectCommand="SELECT [FranID], [Name], [CName], [Address], [City], [Cell], [Email], convert(varchar,[ADate],103) as ADate, convert(varchar,[MIDate],103) as MIDate  FROM [Franchise] ORDER BY [Name]">
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
