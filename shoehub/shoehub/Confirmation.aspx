<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="shoehub.Confirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container mt-5 mb-5">
       <div class="row">
		<div class="col-sm-6 mb-3 mb-m-1 text-md-left"><a href="Shop.aspx"><i class="fas fa-arrow-left mr-2"></i> Continue Shopping</a></div>
	</div>
        <div class="row d-flex justify-content-center">

            <div class="col-md-8">

                <div class="card">


                        <div class="text-left logo p-2 px-5">

                            <img src="https://i.imgur.com/2zDU056.png" width="50">
                            

                        </div>

                        <div class="invoice p-5">

                            <h5>Your order Confirmed!</h5>

                            <span class="font-weight-bold d-block mt-4">Hello,<asp:Label ID="lblFirstName" runat="server"></asp:Label></span>
                            <span>You order has been confirmed and will be shipped in next two days!</span>

                            <div class="payment border-top mt-3 mb-3 border-bottom table-responsive">

                                <table class="table table-borderless">
                                    
                                    <tbody>
                                        <tr>
                                            <td>
                                                <div class="py-2">

                                                    <span class="d-block text-muted">Order Date</span>
                                                <span><%= DateTime.Now.ToString("d MMMM, yyyy") %></span>
                                                    
                                                </div>
                                            </td>

                                            <td>
                                                <div class="py-2">

                                                    <span class="d-block text-muted">Order No</span>
                                                <span>MT<%= GenerateRandomOrderNumber() %></span>
                                                    
                                                </div>
                                            </td>

                                            <td>
                                                <div class="py-2">

                                                    <span class="d-block text-muted">Payment</span>
                                                <span><img src="https://img.icons8.com/color/48/000000/mastercard.png" width="20" /></span>
                                                    
                                                </div>
                                            </td>

                                            <td>
                                                <div class="py-2">

                                                    <span class="d-block text-muted">Shiping Address</span>
                                                <span><asp:Label ID="lblAddress" runat="server"></asp:Label></span>
                                                    
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>

                                </table>




                                
                            </div>




                                <div class="product border-bottom table-responsive">

                                    <table class="table table-borderless">

                                    <tbody>
                                       <asp:Repeater ID="rptCartItems" runat="server">
                                        <ItemTemplate>
                                            <tr>
                                                <td width="20%">
                                                    <img src='<%# Eval("ImageURL") %>' width="90">
                                                </td>
                                                <td width="60%">
                                                    <span class="font-weight-bold"><%# Eval("Name") %></span>
                                                    <div class="product-qty">
                                                        <span class="d-block">Quantity: <%# Eval("Quantity") %></span>
                                                    </div>
                                                </td>
                                                <td width="20%">
                                                    <div class="text-right">
                                                        <span class="font-weight-bold">$<%# Eval("TotalPrice") %></span>
                                                    </div>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                    </tbody> 
                                        
                                    </table>
                                    


                                </div>



                                <div class="row d-flex justify-content-end">

                                    <div class="col-md-5">

                                        <table class="table table-borderless">

                                            <tbody class="totals">

                                                 <tr class="border-top border-bottom">
                                                    <td>
                                                        <div class="text-left">

                                                            <span class="font-weight-bold">Subtotal</span>
                                                            
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="text-right">
                                                            <span class="font-weight-bold"><asp:Label ID="lblTotalPrice" runat="server"></asp:Label></span>
                                                        </div>
                                                    </td>
                                                </tr>
                                                
                                            </tbody>
                                            
                                        </table>
                                        
                                    </div>
                                    


                                </div>


                                <p>We will be sending shipping confirmation email when the item shipped successfully!</p>
                                <p class="font-weight-bold mb-0">Thanks for shopping with us!</p>
                                <span>SHEOHUB</span>



                            

                        </div>


                        <div class="d-flex justify-content-between footer p-3">

                            <span>Need Help? visit our <a href="#"> help center</a></span>
                             <span><%= DateTime.Now.ToString("d MMMM, yyyy") %></span>
                            
                        </div>



            
        </div>
                
            </div>
            
        </div>
        
    </div>
</asp:Content>
