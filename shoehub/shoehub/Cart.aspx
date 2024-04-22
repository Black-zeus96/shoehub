<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="shoehub.Cart" Culture="en-CA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    		<section class="cart text-center">
			<div class="container">
				<div class="row">
					<div class="col-sm-6 mb-3 mb-m-1 text-md-left"><a href="Shop.aspx"><i class="fas fa-arrow-left mr-2"></i> Continue Shopping</a></div>
					<div class="col-sm-6 text-md-right"><a href="Checkout.aspx" class="btn btn-primary btn-lg pl-5 pr-5">Checkout</a></div>
				</div>
				<div class="row">
					<div class="col-12 text-center">
						<h2 class="mt-5 mb-2">Your Shopping Cart</h2>
						<p class="mb-5"><span class="primary-color">3</span> Items in your cart</p>
						<table id="cart" class="table table-condensed" >
							<thead>
								<tr>
									<th style="width:50%">Product</th>
									<th style="width:12%">Price</th>
									<th style="width:10%">Quantity</th>
									<th style="width:10%">Total</th>
									<th style="width:16%"></th>
								</tr>
							</thead>
							<tbody>
								<asp:Repeater ID="showCartItems" runat="server">
									<ItemTemplate>
								<tr>
									<td data-th="Product">
										<div class="row">
											<div class="col-md-3 text-left">
												<img src='<%# Eval("ImageURL") %>' alt="" class="img-fluid">
											</div>
											<div class="col-md-9 text-left mt-sm-2">
												<h4><%# Eval("Name") %></h4>
											</div>
										</div>
									</td>
									<td data-th="Price"><%# Eval("Price") %></td>
									<td data-th="Quantity">
										<%# Eval("Quantity") %>
									</td>
									<td data-th="Total"><%# Eval("TotalPrice", "{0:C}") %></td>
									<td class="actions" data-th="">
										<div class="text-right">
										<asp:Button ID="btnRemove" runat="server" Text="Remove" CssClass="btn btn-white btn-md mb-2 remove-btn" CommandName="DeleteItem" CommandArgument='<%# Eval("ShoeID") %>'  OnClick="btnRemove_Click" />		
										</div>
									</td>
								</tr>
									</ItemTemplate>
								</asp:Repeater>
							</tbody>
						</table>
						<div class="float-right text-right">
							<h4>Subtotal:</h4>
							<h1><asp:Label ID="lblFinalPrice" runat="server" Text="Label">Total Price</asp:Label></h1>
							<p>(Excluding Delivery)</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-sm-6 mb-3 mb-m-1 text-md-left"><a href="Shop.aspx"><i class="fas fa-arrow-left mr-2"></i> Continue Shopping</a></div>
					<div class="col-sm-6 text-md-right"><a href="Checkout.aspx" class="btn btn-primary btn-lg pl-5 pr-5">Checkout</a></div>
				</div>
			</div>
		</section>



	<section class="products text-center">
	<div class="container">
		<h3 class="mb-4">Featured Products</h3>
		<div class="row">
			<div class="col-sm-6 col-md-3 col-product">
				<figure>
					<img class="rounded-corners img-fluid" src="Content/Images/kid10.jpg"	width="240" height="240">
					<figcaption>
						<div class="thumb-overlay"><a href='Details.aspx?id=30' title="More Info">
							<i class="fas fa-search-plus"></i>
						</a></div>
					</figcaption>
				</figure>
				<h4><a href="item.html">YLLLU</a></h4>
				<p><span class="emphasis">$23.00</span></p>
			</div>
			<div class="col-sm-6 col-md-3 col-product">
				<figure>
					<img class="rounded-corners img-fluid" src="Content/Images/woman5.jpg"	width="240" height="240">
					<figcaption>
						<div class="thumb-overlay"><a href='Details.aspx?id=15' title="More Info">
							<i class="fas fa-search-plus"></i>
						</a></div>
					</figcaption>
				</figure>
				<h4><a href='Details.aspx?id=15'">wayderns</a></h4>
				<p><span class="emphasis">$19.00</span></p>
			</div>
			<div class="col-sm-6 col-md-3 col-product">
				<figure>
					<img class="rounded-corners img-fluid" src="Content/Images/woman3.jpg"	width="240" height="240">
					<figcaption>
						<div class="thumb-overlay"><a href='Details.aspx?id=13' title="More Info">
							<i class="fas fa-search-plus"></i>
						</a></div>
					</figcaption>
				</figure>
				<h4><a href='Details.aspx?id=13'>Dream paris</a></h4>
				<p><span class="emphasis">$53.00</span></p>
			</div>
			<div class="col-sm-6 col-md-3 col-product">
				<figure>
					<img class="rounded-corners img-fluid" src="Content/Images/men4.jpg"	width="240" height="240">
					<figcaption>
						<div class="thumb-overlay"><a href='Details.aspx?id=4'title="More Info">
							<i class="fas fa-search-plus"></i>
						</a></div>
					</figcaption>
				</figure>
				<h4><a href='Details.aspx?id=4'>Reebook</a></h4>
				<p><span class="emphasis">$77.00</span></p>
			</div>
		</div>
	</div>
</section>
		
		<div class="divider"></div>
		
		<section class="cta text-center">
			<div class="container">
				<h3 class="mt-0 mb-4">Sign up now to save 10% on your first order</h3>
				<div class="subscribe">
					<div class="form-group row pt-3">
						<div class="col-sm-8 mb-3">
							<input type="text" class="form-control" id="inputName" placeholder="Your Name">
						</div>
						<div class="col-sm-4">
							<button type="submit" class="btn btn-lg btn-outline-primary">Sign me up</button>
						</div>
					</div>
				</div>
			</div>
		</section>
</asp:Content>
