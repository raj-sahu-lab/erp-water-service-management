<%@ page language="C#" autoeventwireup="true" inherits="Quotation, App_Web_fa4yg0ar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Quotation Details </title>
    <link href="CSS/FormControls.css" rel="stylesheet" type="text/css" />
    <link href="CSS/SuperAdminCss.css" rel="stylesheet" type="text/css" />
    <link href="CSS/sGrid.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.6.min.js" type="text/javascript"></script>
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
            $('[id$=ODate]').datepicker(
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
            });



            $(document).ready(function () {
                $('[id$=txtRegDate]').datepicker(
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
    <div class="page">
        <div class="header">
            <table>
                <tr>
                    <td width="80%">
                    </td>
                    <td width="5%" valign="top">
                        <a href="QuotationDetails.aspx">
                            <asp:Image ID="ImgHome" runat="server" CssClass="AdmImg" Height="30px" Width="30px"
                                ImageUrl="~/mImage/home.jpg" AlternateText="Home" />
                        </a>
                    </td>
                </tr>
            </table>
        </div>
        <div class="main">
            <fieldset id="fldStream" style="border: 1px solid #006600; width: 70.5%; margin-left: 130px;
                margin-top: 30px;">
                <legend><span class="spanCss">Quotation </span></legend>
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
                                <asp:Button ID="btncmdTank" runat="server" CssClass="Button_submit" OnClick="btncmdTank_Click"
                                    Text="Tanks Details" />
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
                                                <span class="spanSubCss">Personal Information : </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblCaption" runat="server" Text="Offer No. *" Width="120px"></asp:Label>
                                                <asp:TextBox ID="txtOfferNo" runat="server" CssClass="validate[required]" Width="150px"></asp:TextBox>
                                                <asp:Label ID="lblCaption13" runat="server" Text="Date *" Width="60px"></asp:Label>
                                                <asp:TextBox ID="txtODate" runat="server" CssClass="validate[required]" Width="100px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblCaption0" runat="server" Text="Authorized Person *" Width="120px"></asp:Label>
                                                <asp:TextBox ID="txtCusName" runat="server" CssClass="validate[required]" Width="505px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblCaption2" runat="server" Text="Address *" Width="120px"></asp:Label>
                                                <asp:TextBox ID="txtAddress" runat="server" CssClass="validate[required]" Width="505px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblCaption5" runat="server" Text="City " Width="120px"></asp:Label>
                                                <asp:TextBox ID="txtCity" runat="server" Width="200px"></asp:TextBox>
                                                <asp:Label ID="lblCaption6" runat="server" Text="State " Width="90px"></asp:Label>
                                                <asp:TextBox ID="txtState" runat="server" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblCaption7" runat="server" Text="Pin " Width="120px"></asp:Label>
                                                <asp:TextBox ID="txtPin" runat="server" Width="200px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblCaption8" runat="server" Text="Phone " Width="120px"></asp:Label>
                                                <asp:TextBox ID="txtPhoen" runat="server" Width="200px"></asp:TextBox>
                                                <asp:Label ID="lblCaption9" runat="server" Text="Mobile *" Width="90px"></asp:Label>
                                                <asp:TextBox ID="txtCell" runat="server" CssClass="validate[required]" Width="200px"
                                                    MaxLength="10"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblCaption4" runat="server" Text="E-mail" Width="120px"></asp:Label>
                                                <asp:TextBox ID="txtEmail" runat="server" CssClass="validate[custom[email]]" Width="505px"></asp:TextBox>
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
    </form>
</body>
</html>
