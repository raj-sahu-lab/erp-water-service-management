<%@ page title="Employee Details" language="C#" masterpagefile="~/AdminPage.master" autoeventwireup="true" inherits="rptEmployee, App_Web_saitqoye" enableeventvalidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <fieldset id="fldStream" style="border: 1px solid #006600; width: 95.5%; margin: 16px;">
        <legend><span class="spanCss">Employee Details</span></legend>
        <div>
            <table style="border-bottom-style: dashed; border-bottom-width: 1px; border-top-style: dashed;
                border-top-width: 1px;">
                <tr>
                    <td class="TopLMsg">
                        &nbsp;
                        <asp:ImageButton ID="imgbExpExcel" runat="server" OnClick="imgbExpExcel_Click" CssClass="Button_submit"
                            Height="30px" ImageUrl="~/mImage/Excel-icon.png" Width="30px" />
                        &nbsp;<asp:ImageButton ID="imgbExpPDF" runat="server" OnClick="imgbExpPDF_Click"
                            CssClass="Button_submit" Height="30px" ImageUrl="~/mImage/pdf.png" Width="30px" />
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
                                                <asp:GridView ID="grdEmployee" runat="server" CssClass="mGrid" AutoGenerateColumns="False"
                                                    DataSourceID="sDsEmployee" PagerStyle-CssClass="pgr" ShowFooter="True" PageSize="300"
                                                    AllowPaging="True" AllowSorting="True" DataKeyNames="EmpID">
                                                    <Columns>
                                                        <asp:BoundField DataField="EmpID" HeaderText="Code" ItemStyle-Width="60px" ReadOnly="True" />
                                                        <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-HorizontalAlign="Left"
                                                            ItemStyle-Width="200px" />
                                                        <asp:BoundField DataField="Address" HeaderText="Address" ItemStyle-HorizontalAlign="Left"
                                                            ItemStyle-Width="250px" />
                                                        <asp:BoundField DataField="City" HeaderText="City" ItemStyle-HorizontalAlign="Left"
                                                            ItemStyle-Width="100px" />
                                                        <asp:BoundField DataField="Cell" HeaderText="Mobile" />
                                                        <asp:BoundField DataField="Email" HeaderText="Email" />
                                                        <asp:BoundField DataField="Salary" HeaderText="Salary" ItemStyle-HorizontalAlign="Right" ItemStyle-Width="60px"/>
                                                    </Columns>
                                                    <PagerStyle CssClass="pgr" />
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="sDsEmployee" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStrErp %>"
                                                    SelectCommand="SELECT [EmpID], [Name], [Address], [City], [Cell], [Email], [Salary] FROM [Employee] ORDER BY [Name]">
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
