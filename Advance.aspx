<%@ page language="C#" autoeventwireup="true" inherits="Sales, App_Web_fa4yg0ar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Advance Payment | Advance Details </title>
    <link href="CSS/FormControls.css" rel="stylesheet" type="text/css" />
    <link href="CSS/SuperAdminCss.css" rel="stylesheet" type="text/css" />
    <link href="CSS/sGrid.css" rel="stylesheet" type="text/css" />

    <script src="js/jquery-1.6.min.js" type="text/javascript"></script>
    <script src="js/trirand/jquery.jqDatePicker.min.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" media="screen" href="themes/custom-theme/jquery.ui.all.css" />

    <script type="text/javascript">

        $(document).ready(function () {
            $('[id$=txtDates]').datepicker(
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



            $(document).ready(function () {
                $('[id$=txtDates]').datepicker(
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
                                <a href="AdvanceDetails.aspx">
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
                        <legend><span class="spanCss">Advance</span></legend>
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
                                            Text="Submit" Height="30px" Width="75px" />
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
                                                        <asp:Label ID="lblCaption5" runat="server" Text="Pay Date *" Width="120px"></asp:Label>
                                                        <asp:TextBox ID="txtDates" runat="server" CssClass="txtRightalign" Width="80px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblCaption4" runat="server" Text="Name *" Width="120px"></asp:Label>
                                                        <asp:DropDownList ID="ddlEmpID" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlEmpID_SelectedIndexChanged"
                                                            Width="350px">
                                                        </asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="rfvCentreID5" runat="server" ControlToValidate="ddlEmpID"
                                                            ErrorMessage="Required Field !" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblCaption1" runat="server" Text="Amount *" Width="120px"></asp:Label>
                                                        <asp:TextBox ID="txtAmount" runat="server" CssClass="txtRightalign" Width="90px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvCentreID4" runat="server" ControlToValidate="txtAmount"
                                                            ErrorMessage="Required Field !" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtAmount"
                                                            ErrorMessage="Only Number !" ValidationExpression="^[-+]?[0-9]*\.?[0-9]*([eE][-+]?[0-9]+)?$">*</asp:RegularExpressionValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <div align="center">
                                                            <asp:GridView ID="grdItems" runat="server" AllowSorting="true" AutoGenerateColumns="False"
                                                                CssClass="mGrid" DataKeyNames="SalID" EnableModelValidation="True" Width="580px"
                                                                OnRowCommand="grdItems_RowCommand">
                                                                <Columns>
                                                                    <asp:BoundField DataField="Row" HeaderText="SN" ItemStyle-HorizontalAlign="Center">
                                                                        <HeaderStyle HorizontalAlign="Center" />
                                                                        <ItemStyle HorizontalAlign="Center" />
                                                                    </asp:BoundField>
                                                                    <asp:BoundField DataField="Name" HeaderText="Name" ItemStyle-HorizontalAlign="Left">
                                                                        <HeaderStyle HorizontalAlign="Left" Width="200px" />
                                                                        <ItemStyle HorizontalAlign="Left" />
                                                                    </asp:BoundField>
                                                                    <asp:BoundField DataField="Amount" HeaderText="Amount" ItemStyle-HorizontalAlign="Right" />
                                                                    <asp:BoundField DataField="PayAmt" HeaderText="Pay Amt" ItemStyle-HorizontalAlign="Right" />
                                                                    <asp:BoundField DataField="sDates" HeaderText="Date" ItemStyle-HorizontalAlign="Right" />
                                                                    <asp:TemplateField HeaderText="View">
                                                                        <ItemTemplate>
                                                                            <div align="center">
                                                                                <asp:ImageButton ID="imgview" runat="server" CausesValidation="false" CommandArgument='<% #Bind("SalID") %>'
                                                                                    CommandName="cmdView" Text="View" ImageUrl="~/mImage/view.jpg" />
                                                                            </div>
                                                                        </ItemTemplate>
                                                                    </asp:TemplateField>
                                                                    <asp:TemplateField HeaderText="Delete">
                                                                        <ItemTemplate>
                                                                            <div align="center">
                                                                                <asp:ImageButton ID="imgDelete" runat="server" CausesValidation="false" CommandArgument='<% #Bind("SalID") %>'
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
