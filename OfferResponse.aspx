<%@ page language="C#" autoeventwireup="true" inherits="OfferResponse, App_Web_fa4yg0ar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Offer Response </title>
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
            $('[id$=txtResDate]').datepicker(
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
                $('[id$=txtResDate]').datepicker(
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
    <script language="javascript" type="text/javascript">
        function SumTotal() {
            var txtCap = document.getElementById("txtCapacity").value;
            var txtRate = document.getElementById("txtRate").value;
            var txtUnit = document.getElementById("txtUnit").value;
            var txtAddCon = document.getElementById("txtadd_conn").value;

            document.getElementById("txtAmount").value = ((parseFloat(txtCap) * parseFloat(txtRate)) * parseFloat(txtUnit));
            document.getElementById("txtTotal").value = ((parseFloat(txtCap) * parseFloat(txtRate)) * parseFloat(txtUnit));
            var vTotal = ((parseFloat(txtCap) * parseFloat(txtRate)) * parseFloat(txtUnit));
            document.getElementById("txtTax").value = vTotal * 12.36 / 100;
            var vTax = vTotal * 12.36 / 100;
            document.getElementById("txtGtotal").value = vTotal + vTax + parseFloat(txtAddCon);
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
                <legend><span class="spanCss">Offer Response </span></legend>
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
                                                <asp:Label ID="lblCaption" runat="server" Text="Offer No. *" Width="120px"></asp:Label>
                                                <asp:TextBox ID="txtOfferNo" runat="server" CssClass="validate[required]" Width="150px"></asp:TextBox>
                                                <asp:Label ID="lblCaption13" runat="server" Text="Res Date *" Width="70px"></asp:Label>
                                                <asp:TextBox ID="txtResDate" runat="server" CssClass="validate[required]" Width="100px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblCaption0" runat="server" Text="Authorized Person *" Width="120px"></asp:Label>
                                                <asp:TextBox ID="CusName" runat="server" CssClass="validate[required]" Width="505px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblCaption2" runat="server" Text="Description *" Width="120px"></asp:Label>
                                                <asp:TextBox ID="txtResDes" runat="server" CssClass="validate[required]" Width="505px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:GridView ID="grdCenter" runat="server" AllowPaging="True" AllowSorting="True"
                                                    AutoGenerateColumns="False" CssClass="mGrid" DataKeyNames="ResID" DataSourceID="sDsRes"
                                                    OnRowCommand="grdCDetails_RowCommand" PagerStyle-CssClass="pgr" PageSize="30" ShowFooter="True">
                                                    <Columns>
                                                        <asp:BoundField DataField="ResID" HeaderText="ID" InsertVisible="False" ReadOnly="True"
                                                            SortExpression="ResID" />
                                                        <asp:BoundField DataField="OfferNo" HeaderText="Offer No" SortExpression="OfferNo" />
                                                        <asp:BoundField DataField="RDate" HeaderText="Date" SortExpression="ResDate" />
                                                        <asp:BoundField DataField="ResDesc" HeaderText="Description" SortExpression="ResDesc"
                                                            ItemStyle-HorizontalAlign="Left" />
                                                        <asp:TemplateField HeaderText="View">
                                                            <ItemTemplate>
                                                                <div align="center">
                                                                    <asp:ImageButton ID="imgview" runat="server" CausesValidation="false" CommandArgument='<% #Bind("ResID") %>'
                                                                        CommandName="cmdView" Text="View" ImageUrl="~/mImage/view.jpg" />
                                                                </div>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <PagerStyle CssClass="pgr" />
                                                </asp:GridView>
                                                <asp:SqlDataSource ID="sDsRes" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStrErp %>"
                                                    SelectCommand="SELECT [ResID], [OfferNo], Convert (varchar,ResDate,103) as RDate, [ResDesc] FROM [OfferResponse] WHERE ([OfferNo] = @OfferNo) order by ResDate Desc">
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
        </div>
    </div>
    </form>
</body>
</html>
