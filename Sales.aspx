<%@ page language="C#" autoeventwireup="true" inherits="Sales, App_Web_kdw2fovy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Items | Items List | School Items</title>
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
    <asp:UpdateProgress ID="UpdateProgress1" AssociatedUpdatePanelID="UpdatePanel1" runat="server">
        <ProgressTemplate>
            <div class="background">
            </div>
            <div class="modal">
                Progress ...
                <img src="mImage/ajax-loader.gif" alt="Progress......" /></div>
        </ProgressTemplate>
    </asp:UpdateProgress>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="page">
                <div class="header">
                    <table>
                        <tr>
                            <td width="80%">
                            </td>
                            <td width="5%" valign="top">
                                <a href="SalesDetails.aspx">
                                    <asp:Image ID="ImgHome" runat="server" CssClass="AdmImg" Height="30px" Width="30px"
                                        ImageUrl="~/mImage/home.jpg" AlternateText="Home" />
                                </a>
                            </td>
                        </tr>
                    </table>
                </div>
                <div class="main">
                    <fieldset id="fldStream" style="border: 1px solid #006600; width: 68.5%; margin-left: 170px;
                        margin-top: 30px;">
                        <legend><span class="spanCss">Stock Issue Details</span></legend>
                        <div>
                            <table style="border-bottom-style: dashed; border-bottom-width: 1px;">
                                <tr>
                                    <td class="TopLMsg">
                                        *-Indicates a required fields.
                                        <br />
                                        Complete the form Make sure to enter all required fields.
                                    </td>
                                    <td class="TopRMsg">
                                        <asp:Button ID="cmdShow" runat="server" CssClass="Button_submit" OnClick="cmdShow_Click"
                                            Text="Show" CausesValidation="False" Height="30px" Width="91px" />
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
                                                width: 99%; padding: 5px;">
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblCaption4" runat="server" Text="Name *" Width="120px"></asp:Label>
                                                        <asp:DropDownList ID="ddlFranID" runat="server" Width="350px">
                                                        </asp:DropDownList>
                                                        <asp:TextBox ID="BillDate" runat="server" CssClass="txtRightalign" 
                                                            Width="80px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvCentreID5" runat="server" ControlToValidate="ddlFranID"
                                                            ErrorMessage="Required Field !" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblCaption3" runat="server" Text="Items *" Width="120px"></asp:Label>
                                                        <asp:DropDownList ID="ddlItemID" runat="server" Width="450px" 
                                                            AutoPostBack="True" onselectedindexchanged="ddlItemID_SelectedIndexChanged">
                                                        </asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="rfvCentreID3" runat="server" ControlToValidate="ddlItemID"
                                                            ErrorMessage="Required Field !" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblCaption5" runat="server" Text="Price *" Width="120px"></asp:Label>
                                                        <asp:TextBox ID="txtPrice" runat="server" CssClass="txtRightalign" Width="90px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvCentreID6" runat="server" 
                                                            ControlToValidate="txtPrice" ErrorMessage="Required Field !" 
                                                            SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                                                            ControlToValidate="txtPrice" ErrorMessage="Only Number !" 
                                                            ValidationExpression="^[-+]?[0-9]*\.?[0-9]*([eE][-+]?[0-9]+)?$">*</asp:RegularExpressionValidator>
                                                        <asp:Label ID="lblCaption6" runat="server" Text="Vat % *" Width="120px"></asp:Label>
                                                        <asp:TextBox ID="txtVat" runat="server" CssClass="txtRightalign" Width="90px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvCentreID7" runat="server" 
                                                            ControlToValidate="txtVat" ErrorMessage="Required Field !" 
                                                            SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" 
                                                            runat="server" ControlToValidate="txtVat" ErrorMessage="Only Number !" 
                                                            ValidationExpression="^[-+]?[0-9]*\.?[0-9]*([eE][-+]?[0-9]+)?$">*</asp:RegularExpressionValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblCaption1" runat="server" Text="Qty *" Width="120px"></asp:Label>
                                                        <asp:TextBox ID="txtQty" runat="server" CssClass="txtRightalign" Width="90px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvCentreID4" runat="server" ControlToValidate="txtQty"
                                                            ErrorMessage="Required Field !" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtQty"
                                                            ErrorMessage="Only Number !" ValidationExpression="^[-+]?[0-9]*\.?[0-9]*([eE][-+]?[0-9]+)?$">*</asp:RegularExpressionValidator>
                                                        <asp:Button ID="btnSubmit" runat="server" CssClass="Button_submit" Height="22px"
                                                            OnClick="btnSubmit_Click" Text="Submit" Width="75px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblCaption7" runat="server" Text="Remarks" Width="120px"></asp:Label>
                                                        <asp:TextBox ID="txtRemark" runat="server" Width="445px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div align="center">
                                                            <asp:GridView ID="grdItems" runat="server" AllowSorting="true" AutoGenerateColumns="False"
                                                                CssClass="mGrid" DataKeyNames="SalesID" EnableModelValidation="True" Width="580px"
                                                                OnRowCommand="grdItems_RowCommand">
                                                                <Columns>
                                                                    <asp:BoundField DataField="Row" HeaderText="SN" ItemStyle-HorizontalAlign="Center">
                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                        <ItemStyle HorizontalAlign="Center" />
                                                                    </asp:BoundField>
                                                                    <asp:BoundField DataField="Items" HeaderText="Item Name" ItemStyle-HorizontalAlign="Left">
                                                                        <HeaderStyle HorizontalAlign="Left" Width="200px" />
                                                                        <ItemStyle HorizontalAlign="Left" />
                                                                    </asp:BoundField>
                                                                    <asp:BoundField DataField="Qty" HeaderText="Qty" ItemStyle-HorizontalAlign="Right" />
                                                                    <asp:BoundField DataField="Price" HeaderText="Price" ItemStyle-HorizontalAlign="Right" />
                                                                    <asp:BoundField DataField="Vat" HeaderText="Vat%" ItemStyle-HorizontalAlign="Right" />
                                                                    <asp:BoundField DataField="TotalAmt" HeaderText="Total" ItemStyle-HorizontalAlign="Right" />
                                                                    <asp:TemplateField HeaderText="View">
                                                                        <ItemTemplate>
                                                                            <div align="center">
                                                                                <asp:ImageButton ID="imgview" runat="server" CausesValidation="false" CommandArgument='<% #Bind("SalesID") %>'
                                                                                    CommandName="cmdView" Text="View" ImageUrl="~/mImage/view.jpg" />
                                                                            </div>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Delete">
                                                                        <ItemTemplate>
                                                                            <div align="center">
                                                                                <asp:ImageButton ID="imgDelete" runat="server" CausesValidation="false" CommandArgument='<% #Bind("SalesID") %>'
                                                                                    CommandName="cmdDelete" ImageUrl="~/mImage/Delete.jpg" OnClientClick="return confirm('Are you sure you want to Delete ?');"
                                                                                    Text="Delete" />
                                                                                <div align="center">
                                                                                </div>
                                                                            </div>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                </Columns>
                                                            </asp:GridView>
                                                        </div>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:HiddenField ID="hfItemID" runat="server" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </fieldset>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
