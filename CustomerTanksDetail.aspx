<%@ page language="C#" autoeventwireup="true" inherits="CustomerTanksDetail, App_Web_fa4yg0ar" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Customerwise Tanks Details</title>
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
            $('[id$=txtClnDate]').datepicker(
    { changeMonth: true,
        changeYear: true,
        showOn: 'button',
        buttonText: 'Date',
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


        $(document).ready(function () {
            $('[id$=txtNxtDueDate]').datepicker(
    { changeMonth: true,
        changeYear: true,
        showOn: 'button',
        buttonText: 'Date',
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
                $('[id$=txtClnDate]').datepicker(
    { changeMonth: true,
        changeYear: true,
        showOn: 'button',
        buttonText: 'Date',
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


            $(document).ready(function () {
                $('[id$=txtNxtDueDate]').datepicker(
    { changeMonth: true,
        changeYear: true,
        showOn: 'button',
        buttonText: 'Date',
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
                            <td valign="top" width="5%">
                                <a href="CustomerDetails.aspx">
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
                        <legend><span class="spanCss">Tanks Details For Bill&#39;s </span></legend>
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
                                                        <asp:Label ID="lblCaption" runat="server" Text="Code *" Width="80px"></asp:Label>
                                                        <asp:TextBox ID="txtCusID" runat="server" Width="100px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvCentreID1" runat="server" ControlToValidate="txtCusID"
                                                            ErrorMessage="Required Field !" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                        <asp:Label ID="lblCaption0" runat="server" Text="Customer *" Width="80px"></asp:Label>
                                                        <asp:TextBox ID="CusName" runat="server" Width="330px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvCentreID2" runat="server" ControlToValidate="CusName"
                                                            ErrorMessage="Required Field !" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblCaption6" runat="server" Text="Clean Date *" Width="80px"></asp:Label>
                                                        <asp:TextBox ID="txtClnDate" runat="server" Width="100px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvCentreID7" runat="server" 
                                                            ControlToValidate="txtClnDate" ErrorMessage="Required Field !" 
                                                            SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                        <asp:Label ID="lblCaption7" runat="server" Text="Next Due Date *" Width="110px"></asp:Label>
                                                        <asp:TextBox ID="txtNxtDueDate" runat="server" Width="100px"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvCentreID8" runat="server" 
                                                            ControlToValidate="txtNxtDueDate" ErrorMessage="Required Field !" 
                                                            SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                        &nbsp;<asp:Label ID="lblCaption8" runat="server" Text="Taxable" Width="110px"></asp:Label>
                                                        <asp:CheckBox ID="Tax" runat="server" Checked="True" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblCaption2" runat="server" Text="Details *" Width="80px"></asp:Label>
                                                        <asp:DropDownList ID="ddlDetails" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlDetails_SelectedIndexChanged"
                                                            Width="545px">
                                                        </asp:DropDownList>
                                                        <asp:RequiredFieldValidator ID="rfvCentreID3" runat="server" ControlToValidate="ddlDetails"
                                                            ErrorMessage="Required Field !" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblCaption3" runat="server" Text="Capacity *" Width="80px"></asp:Label>
                                                        <asp:TextBox ID="txtCapacity" runat="server" Width="150px" CssClass="Right"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvCentreID4" runat="server" ControlToValidate="txtCapacity"
                                                            ErrorMessage="Required Field !" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                        <asp:Label ID="lblCaption4" runat="server" Text="Unit *" Width="57px"></asp:Label>
                                                        <asp:TextBox ID="txtUnits" runat="server" Width="100px" CssClass="Right"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvCentreID5" runat="server" ControlToValidate="txtUnits"
                                                            ErrorMessage="Required Field !" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txtUnits"
                                                            ErrorMessage="Only Number !" ValidationExpression="^[-+]?[0-9]*\.?[0-9]*([eE][-+]?[0-9]+)?$">*</asp:RegularExpressionValidator>
                                                        <asp:Label ID="lblCaption5" runat="server" Text="Rate *" Width="57px"></asp:Label>
                                                        <asp:TextBox ID="txtRates" runat="server" Width="100px" CssClass="Right"></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvCentreID6" runat="server" ControlToValidate="txtRates"
                                                            ErrorMessage="Required Field !" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server"
                                                            ControlToValidate="txtRates" ErrorMessage="Only Number !" ValidationExpression="^[-+]?[0-9]*\.?[0-9]*([eE][-+]?[0-9]+)?$">*</asp:RegularExpressionValidator>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <asp:GridView ID="grdCenter" runat="server" AllowPaging="True" AllowSorting="True"
                                                            AutoGenerateColumns="False" CssClass="mGrid" DataKeyNames="TID" DataSourceID="sDsItem"
                                                            OnRowCommand="grdCDetails_RowCommand" PagerStyle-CssClass="pgr" ShowFooter="True"
                                                            PageSize="7" >
                                                            <Columns>
                                                                <asp:BoundField DataField="TID" HeaderText="Code" ItemStyle-Width="40px" ReadOnly="True" />
                                                                <asp:BoundField DataField="ClnDate" HeaderText="Clean Dt" ItemStyle-HorizontalAlign="Center"/>
                                                                <asp:BoundField DataField="DueDt" HeaderText="Due DT" ItemStyle-HorizontalAlign="Center"/>
                                                                <asp:BoundField DataField="Capacity" HeaderText="Capacity" ItemStyle-HorizontalAlign="Right" />
                                                                <asp:BoundField DataField="Units" HeaderText="Units" ItemStyle-HorizontalAlign="Right" />
                                                                <asp:BoundField DataField="Rates" HeaderText="Price" ItemStyle-HorizontalAlign="Right" />
                                                                <asp:BoundField DataField="Totals" HeaderText="Amount" ItemStyle-HorizontalAlign="Right" />
                                                                <asp:BoundField DataField="Tax" HeaderText="Tax [12.36%]" ItemStyle-HorizontalAlign="Right" />
                                                                <asp:BoundField DataField="Gtotal" HeaderText="Total" ItemStyle-HorizontalAlign="Right" />
                                                                <asp:TemplateField HeaderText="View">
                                                                    <ItemTemplate>
                                                                        <div align="center">
                                                                            <asp:ImageButton ID="imgview" runat="server" CausesValidation="false" CommandArgument='<% #Bind("TID") %>'
                                                                                CommandName="cmdView" ImageUrl="~/mImage/view.jpg" Text="View" />
                                                                        </div>
                                                                    </ItemTemplate>
                                                                </asp:TemplateField>
                                                                <asp:TemplateField HeaderText="Delete">
                                                                    <ItemTemplate>
                                                                        <div align="center">
                                                                            <asp:ImageButton ID="imgDelete" runat="server" CausesValidation="false" CommandArgument='<% #Bind("TID") %>'
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
                                                        <asp:SqlDataSource ID="sDsItem" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStrErp %>"
                                                            SelectCommand="SELECT [TID], convert(varchar,ClnDate,103) as ClnDate, convert(varchar,NxtDueDate,103) as DueDt , Capacity,Units,Rates,Totals,Tax,GTotal FROM [CustomerTankDetails] WHERE ([CusID] = @CusID)">
                                                            <SelectParameters>
                                                                <asp:SessionParameter Name="CusID" SessionField="strCode" Type="String" />
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
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="ddlDetails" EventName="SelectedIndexChanged" />
            <asp:AsyncPostBackTrigger ControlID="btnSubmit" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
    </form>
</body>
</html>
