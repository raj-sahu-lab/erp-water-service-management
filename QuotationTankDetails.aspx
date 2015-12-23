<%@ page language="C#" autoeventwireup="true" inherits="QuotationTankDetails, App_Web_fa4yg0ar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tanks Details for Quotation</title>
    <link href="CSS/FormControls.css" rel="stylesheet" type="text/css" />
    <link href="CSS/SuperAdminCss.css" rel="stylesheet" type="text/css" />
    <link href="CSS/sGrid.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <script language="javascript" type="text/javascript">

        var prm = Sys.WebForms.PageRequestManager.getInstance();

        prm.add_initializeRequest(InitializeRequest);
        prm.add_endRequest(EndRequest);
        var postBackElement;
        function InitializeRequest(sender, args) {

            if (prm.get_isInAsyncPostBack())
                args.set_cancel(true);
            postBackElement = args.get_postBackElement();
            if (postBackElement.id == 'Button1')
                $get('UpdateProgress1').style.display = 'block';
        }



        function EndRequest(sender, args) {
            if (postBackElement.id == 'Button1')
                $get('UpdateProgress1').style.display = 'none';
        }  

    </script>
    <asp:UpdateProgress ID="UpdateProgress1" AssociatedUpdatePanelID="UpdatePanel2" runat="server">
        <ProgressTemplate>
            <div class="background">
            </div>
            <div class="modal">
                Progress ...
                <img src="mImage/ajax-loader.gif" alt="Progress......" /></div>
        </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
            <div class="page">
                <div class="header">
                    <table>
                        <tr>
                            <td width="80%">
                            </td>
                            <td valign="top" width="5%">
                                <a href="QuotationDetails.aspx">
                                    <asp:Image ID="ImgHome" runat="server" AlternateText="Home" CssClass="AdmImg" Height="30px"
                                        ImageUrl="~/mImage/home.jpg" Width="30px" />
                                </a>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="main">
                    <fieldset id="fldStream" style="border: 1px solid #006600; width: 70.5%; margin-left: 130px;
                        margin-top: 30px;">
                        <legend><span class="spanCss">Tanks Details For Quotation</span></legend>
                        <div>
                            <table style="border-bottom-style: dashed; border-bottom-width: 1px;">
                                <tr>
                                    <td class="TopLMsg">
                                        *-Indicates a required fields.
                                        <br />
                                        Complete the form Make sure to enter all required fields.
                                    </td>
                                    <td class="TopRMsg">
                                        <asp:Button ID="btnSubmit" runat="server" CssClass="Button_submit" OnClick="btnSubmit_Click"
                                            Text="Submit" />
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <asp:Panel ID="PnlHead" runat="server" Style="width: 98%; margin: 9px;">
                            <table align="center">
                                <tr>
                                    <td>
                                        <div align="center" style="padding: 5px;">
                                            <table cellpadding="0" cellspacing="5" style="border: solid 2px #b7ddf2; background: #ebf4fb;
                                                width: 680px; padding: 5px;">
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblCaption" runat="server" Text="Code *" Width="120px"></asp:Label>
                                                        <asp:TextBox ID="txtOfferNo" runat="server" Width="90px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvCentreID1" runat="server" ControlToValidate="txtOfferNo"
                                                            ErrorMessage="Required Field !" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                        <asp:Label ID="lblCaption0" runat="server" Text="Customer *" Width="100px"></asp:Label>
                                                        <asp:TextBox ID="ClientName" runat="server" Width="290px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvCentreID2" runat="server" ControlToValidate="ClientName"
                                                            ErrorMessage="Required Field !" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblCaption22" runat="server" Text="Tanks Capacity * " Width="120px"></asp:Label>
                                                        <asp:DropDownList ID="ddlTankID" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlTankID_SelectedIndexChanged"
                                                            Width="515px">
                                                        </asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="rfvCentreID6" runat="server" ControlToValidate="ddlTankID"
                                                            ErrorMessage="Required Field !" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblCaption15" runat="server" Text="Capacity *" Width="120px"></asp:Label>
                                                        <asp:TextBox ID="txtCapacity" runat="server" Style="font-weight: bold; text-align: right;"
                                                            Width="90px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvCentreID3" runat="server" ControlToValidate="txtCapacity"
                                                            ErrorMessage="Required Field !" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                        <asp:Label ID="lblCaption16" runat="server" Text="Unit *" Width="100px"></asp:Label>
                                                        <asp:TextBox ID="txtUnit" runat="server"
                                                            Style="font-weight: bold; text-align: right;" Width="60px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvCentreID4" runat="server" ControlToValidate="txtUnit"
                                                            ErrorMessage="Required Field !" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                        <asp:Label ID="lblCaption14" runat="server" Text="Rate @ Ltr *" Width="85px"></asp:Label>
                                                        <asp:TextBox ID="txtRate" runat="server" Style="font-weight: bold; text-align: right;"
                                                            Width="60px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvCentreID5" runat="server" ControlToValidate="txtRate"
                                                            ErrorMessage="Required Field !" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:GridView ID="grdCenter" runat="server" AllowPaging="True" AllowSorting="True"
                                                            AutoGenerateColumns="False" CssClass="mGrid" DataKeyNames="QID" DataSourceID="sDsItem"
                                                            OnRowCommand="grdCDetails_RowCommand" PagerStyle-CssClass="pgr" ShowFooter="True">
                                                            <Columns>
                                                                <asp:BoundField DataField="QID" HeaderText="Code" ItemStyle-Width="60px" ReadOnly="True"
                                                                    />
                                                                <asp:BoundField DataField="Capacity" HeaderText="Details" ItemStyle-HorizontalAlign="Left"
                                                                    ItemStyle-Width="200px"  />

                                                                <asp:BoundField DataField="Rate" HeaderText="Rates" ItemStyle-HorizontalAlign="Right"
                                                                     />

                                                                    <asp:BoundField DataField="Amount" HeaderText="Price" ItemStyle-HorizontalAlign="Right"
                                                                     />

                                                                <asp:BoundField DataField="Unit" HeaderText="Units" ItemStyle-HorizontalAlign="Right"
                                                                  />
                                                                
                                                                <asp:BoundField DataField="Tax" HeaderText="Tax 12.36%" ItemStyle-HorizontalAlign="Right"
                                                                 />                                                                
                                                                <asp:BoundField DataField="Gtotal" HeaderText="Total" ItemStyle-HorizontalAlign="Right" />
                                                                <asp:TemplateField HeaderText="View">
                                                                    <ItemTemplate>
                                                                        <div align="center">
                                                                            <asp:ImageButton ID="imgview" runat="server" CausesValidation="false" CommandArgument='<% #Bind("QID") %>'
                                                                                CommandName="cmdView" ImageUrl="~/mImage/view.jpg" Text="View" />
                                                                        </div>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Delete">
                                                                    <ItemTemplate>
                                                                        <div align="center">
                                                                            <asp:ImageButton ID="imgDelete" runat="server" CausesValidation="false" CommandArgument='<% #Bind("QID") %>'
                                                                                CommandName="cmdDelete" ImageUrl="~/mImage/Delete.jpg" OnClientClick="return confirm('Are you sure you want to Delete ?');"
                                                                                Text="Delete" />
                                                                            <div align="center">
                                                                            </div>
                                                                        </div>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                            </Columns>
                                                            <PagerStyle CssClass="pgr" />
                                                        </asp:GridView>
                                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                        </asp:UpdatePanel>
                                                        <asp:SqlDataSource ID="sDsItem" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStrErp %>"
                                                            SelectCommand="SELECT [QID],[Capacity],[Unit],[Rate],[Amount],[Tax],[Amount],[Gtotal] FROM [QuotationDetails] WHERE ([OfferNo] = @OfferNo)">
                                                            <SelectParameters>
                                                                <asp:SessionParameter Name="OfferNo" SessionField="strCode" Type="String" />
                                                            </SelectParameters>
                                                        </asp:SqlDataSource>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </fieldset>
                    <br />
                </div>
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="ddlTankID" EventName="SelectedIndexChanged" />
            <asp:AsyncPostBackTrigger ControlID="txtUnit" EventName="TextChanged" />
        </Triggers>
    </asp:UpdatePanel>
    </form>
</body>
</html>
