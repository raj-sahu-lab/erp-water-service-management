<%@ page language="C#" autoeventwireup="true" inherits="Stock_Entry, App_Web_kdw2fovy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Items | Items List | School Items</title>
    <link href="CSS/FormControls.css" rel="stylesheet" type="text/css" />
    <link href="CSS/SuperAdminCss.css" rel="stylesheet" type="text/css" />
    <link href="CSS/sGrid.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="js/trirand/jquery.jqDatePicker.min.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="themes/custom-theme/jquery.ui.all.css" />
    <link href="css/validationEngine.jquery.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery.validationEngine-en.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/jquery.validationEngine.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">

        jQuery(document).ready(function () {
            jQuery("#form1").validationEngine();
        });


        $(document).ready(function () {
            $('[id$=txtBillDate]').datepicker(
    { changeMonth: true,
        changeYear: true,
        showOn: 'button',
        buttonText: 'Show Date',
        showAnim: 'fadeIn',
        showButtonPanel: true,
        dateFormat: 'dd/mm/yy',
        buttonImage: 'mImage/Cal.gif',
        buttonImageOnly: true
    }
   );

            $(".ui-datepicker-trigger").mouseover(function () {
                $(this).css('cursor', 'pointer');
            });
        });


        
    </script>
    <script type="text/javascript" language="javascript">
        function pageLoad(sender, args) {
            jQuery(document).ready(function () {
                jQuery("#form1").validationEngine();


                $(document).ready(function () {
                    $('[id$=txtBillDate]').datepicker(
    { changeMonth: true,
        changeYear: true,
        showOn: 'button',
        buttonText: 'Show Date',
        showAnim: 'fadeIn',
        showButtonPanel: true,
        dateFormat: 'dd/mm/yy',
        buttonImage: 'mImage/Cal.gif',
        buttonImageOnly: true
    }
   );

                    $(".ui-datepicker-trigger").mouseover(function () {
                        $(this).css('cursor', 'pointer');
                    });
                });




            });

        }
    </script>
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
                                <a href="Stock_EnrtyDetails.aspx">
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
                        <legend><span class="spanCss">Stock Entry Details</span></legend>
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
                                                        <asp:Label ID="lblCaption0" runat="server" Text="Bill No. *" Width="120px"></asp:Label>
                                                        <asp:TextBox ID="txtBillNo" runat="server" Width="160px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvCentreID1" runat="server" ControlToValidate="txtBillNo"
                                                            ErrorMessage="Required Field !" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                        <asp:Label ID="lblCaption2" runat="server" Text="Bill Date *" Width="160px"></asp:Label>
                                                        <asp:TextBox ID="txtBillDate" runat="server" Width="80px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvCentreID2" runat="server" ControlToValidate="txtBillDate"
                                                            ErrorMessage="Required Field !" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblCaption3" runat="server" Text="Items *" Width="120px"></asp:Label>
                                                        <asp:DropDownList ID="ddlItemID" runat="server" Width="450px">
                                                        </asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="rfvCentreID3" runat="server" ControlToValidate="ddlItemID"
                                                            ErrorMessage="Required Field !" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblCaption1" runat="server" Text="Qty *" Width="120px"></asp:Label>
                                                        <asp:TextBox ID="txtQty" runat="server" Width="70px" CssClass="txtRightalign"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvCentreID4" runat="server" ControlToValidate="txtQty"
                                                            ErrorMessage="Required Field !" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtQty"
                                                            ErrorMessage="Only Number !" ValidationExpression="^[-+]?[0-9]*\.?[0-9]*([eE][-+]?[0-9]+)?$">*</asp:RegularExpressionValidator>
                                                        <asp:Button ID="btnSubmit" runat="server" CssClass="Button_submit" Height="25px"
                                                            OnClick="btnSubmit_Click" Text="Submit" Width="60px" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div align="center">
                                                            <asp:GridView ID="grdItems" runat="server" AllowSorting="true" AutoGenerateColumns="False"
                                                                CssClass="mGrid" DataKeyNames="StockID" EnableModelValidation="True" Width="580px"
                                                                OnRowCommand="grdItems_RowCommand">
                                                                <Columns>
                                                                    <asp:BoundField DataField="Row" HeaderText="SN" ItemStyle-HorizontalAlign="Center">
                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                        <ItemStyle HorizontalAlign="Center" />
                                                                    </asp:BoundField>
                                                                    <asp:BoundField DataField="Items" HeaderText="Item Name" ItemStyle-HorizontalAlign="Left">
                                                                        <HeaderStyle HorizontalAlign="Left" Width="320px" />
                                                                        <ItemStyle HorizontalAlign="Left" />
                                                                    </asp:BoundField>
                                                                    <asp:BoundField DataField="Qty" HeaderText="Qty" ItemStyle-HorizontalAlign="Right" />

                                                                    <asp:TemplateField HeaderText="View">
                                                                        <ItemTemplate>
                                                                            <div align="center">
                                                                                <asp:ImageButton ID="imgview" runat="server" CausesValidation="false" CommandArgument='<% #Bind("StockID") %>'
                                                                                    CommandName="cmdView" Text="View" ImageUrl="~/mImage/view.jpg" />
                                                                            </div>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>

                                                                    <asp:TemplateField HeaderText="Delete">
                                                                        <ItemTemplate>
                                                                            <div align="center">
                                                                                <asp:ImageButton ID="imgDelete" runat="server" CausesValidation="false" CommandArgument='<% #Bind("StockID") %>'
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
