<%@ page language="C#" masterpagefile="~/AdminPage.master" autoeventwireup="true" enableviewstatemac="false" inherits="MyAdmin, App_Web_saitqoye" title="Administration | Home | Admin Page | Super Administration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="adminfo">
        <div class="left">
            <div class="Leftfav">
                User Information
            </div>
            <div class="mData">
                <asp:Image ID="imgLogUser" runat="server" CssClass="FavImage" ImageUrl="~/mImage/Student.png"
                    Width="80px" AlternateText="Users" />
            </div>
        </div>
        <div class="right">
            <div align="center">
                <div class="fav">
                    Quick Link
                </div>
                <div class="mData">
                    <div style="float: left; text-align: center; padding: 5px; margin-left: 10px;">
                        <a href="CentersDetails.aspx">
                            <asp:Image ID="Image1" runat="server" CssClass="FavImage" ImageUrl="~/mImage/Company.png"
                                Width="60" AlternateText="Company" />
                            <br />
                            Company </a>
                    </div>
                    <div style="float: left; text-align: center; padding: 5px;">
                        <a href="UsersDetails.aspx">
                            <asp:Image ID="Image7" runat="server" CssClass="FavImage" ImageUrl="~/mImage/UserMgm.Jpg"
                                Width="60" AlternateText="Users" />
                            <br />
                            User's </a>
                    </div>
                    <div style="float: left; text-align: center; padding: 5px;">
                        <a href="Stock_ItemsDetails.aspx">
                            <asp:Image ID="Image5" runat="server" CssClass="FavImage" ImageUrl="~/mImage/Items.png"
                                Width="60" Height="60" AlternateText="Itmes" />
                            <br />
                            Items </a>
                    </div>

                    <div style="float: left; text-align: center; padding: 5px;">
                        <a href="TanksDetails.aspx">
                            <asp:Image ID="Image13" runat="server" CssClass="FavImage" ImageUrl="~/mImage/Tanks.jpg"
                                Width="60" Height="60" AlternateText="Tanks" />
                            <br />
                            Tanks </a>
                    </div>

                    <div style="float: left; text-align: center; padding: 5px;">
                        <a href="EmployeeDetails.aspx">
                            <asp:Image ID="Image3" runat="server" CssClass="FavImage" ImageUrl="~/mImage/Employee.PNG"
                                Width="60" AlternateText="Employee" />
                            <br />
                            Employee </a>
                    </div>

                    <%--<div style="float: left; text-align: center; padding: 5px;">
                        <a href="SuppliersDetails.aspx">
                            <asp:Image ID="Image9" runat="server" CssClass="FavImage" ImageUrl="~/mImage/Supplier.png"
                                Width="60" Height="60" AlternateText="Suppliers" />
                            <br />
                            Suppliers </a>
                    </div>--%>

                    <div style="float: left; text-align: center; padding: 5px;">
                        <a href="QuotationDetails.aspx">
                            <asp:Image ID="Image2" runat="server" CssClass="FavImage" ImageUrl="~/mImage/quotation.Jpg"
                                Width="60" Height="60" AlternateText="Quotation" />
                            <br />
                            Quotation </a>
                    </div>
                    <div style="float: left; text-align: center; padding: 5px;">
                        <a href="CustomerDetails.aspx">
                            <asp:Image ID="Image8" runat="server" CssClass="FavImage" ImageUrl="~/mImage/Customer.Png"
                                Width="60" Height="60" AlternateText="Customer" />
                            <br />
                            Customer's </a>
                    </div>

                    <%--<div style="float: left; text-align: center; padding: 5px;">
                        <a href="Franchisedetails.aspx">
                            <asp:Image ID="Image4" runat="server" CssClass="FavImage" ImageUrl="~/mImage/Franchise.png"
                                Width="60" Height="60" AlternateText="Franchise" />
                            <br />
                            Franchise </a>
                    </div>--%>

                    <div style="float: left; text-align: center; padding: 5px;">
                        <a href="Stock_EnrtyDetails.aspx">
                            <asp:Image ID="Image6" runat="server" CssClass="FavImage" ImageUrl="~/mImage/Stock.Jpg"
                                Width="60" Height="60" AlternateText="Stock" />
                            <br />
                            Stock </a>
                    </div>
                    <div style="float: left; text-align: center; padding: 5px;">
                        <a href="SalesDetails.aspx">
                            <asp:Image ID="Image10" runat="server" CssClass="FavImage" ImageUrl="~/mImage/Sales.Jpg"
                                Width="60" Height="60" AlternateText="Sales" />
                            <br />
                            Sales </a>
                    </div>
                    <div style="float: left; text-align: center; padding: 5px;">
                        <a href="StockReg.aspx">
                            <asp:Image ID="Image11" runat="server" CssClass="FavImage" ImageUrl="~/mImage/StockRegister.Jpg"
                                Width="60" Height="60" AlternateText="StockReg" />
                            <br />
                            Stock Register </a>
                    </div>
                    <div style="float: left; text-align: center; padding: 5px;">
                        <a href="AdvanceDetails.aspx">
                            <asp:Image ID="Image12" runat="server" CssClass="FavImage" ImageUrl="~/mImage/advancepay.png"
                                Width="60" Height="60" AlternateText="AdvanceDetails" />
                            <br />
                            Advance </a>
                    </div>

                    <div style="float: left; text-align: center; padding: 5px;">
                        <a href="rptCusDueAlert.aspx">
                            <asp:Image ID="Image14" runat="server" CssClass="FavImage" ImageUrl="~/mImage/alert-10.png"
                                Width="60" Height="60" AlternateText="Due Alert" />
                            <br />
                            Due Alert </a>
                    </div>

                </div>
            </div>
        </div>
        <div class="clear">
            &nbsp;</div>
    </div>
</asp:Content>
