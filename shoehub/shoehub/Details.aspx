<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="shoehub.Details" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<section class="featured-block text-center">
	<div class="container">
		<div class="row">
				<div class="col-sm-6 mb-3 mb-m-1 text-md-left"><a href="Shop.aspx"><i class="fas fa-arrow-left mr-2"></i> Continue Shopping</a></div>
        </div>
		<!----display product details---->
		<div class="row">
			<div class="col-md-6 text-center">
				<div class="product-image mt-3" style="height: 500px;">
					<asp:Image ID="ProductImage" CssClass="img-fluid h-100 detail-image" runat="server" />
				</div>
			</div>
			<div class="col-md-6 mt-5 mt-md-2 text-center text-md-left">
				<h2 class="mb-3 mt-0"><asp:Label ID="ShoeNameLabel" runat="server" /></h2>
                <p class="lead mt-2 mb-3 primary-color">
                   <asp:Label ID="PriceLabel" runat="server" />
                </p>
				<p><asp:Label ID="ShortDescriptionLabel" runat="server" /></p>
				<div class="mb-4">
                    <label>Quantity:</label>
	                <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control quantity " Text="1" style="max-width: 3rem"></asp:TextBox>
				</div>
        <asp:Button ID="btnAddToCart" runat="server" CssClass="btn btn-full-width btn-lg btn-outline-primary" Text="Add to cart" OnClick="btnAddToCart_Click" />

				<!--<button  class="btn btn-full-width btn-lg btn-outline-primary">Add to cart</button></div>-->
		</div>
		<div class="d-flex flex-column align-items-start mt-5">
			<h3 >PRODUCT DESCRIPTION</h3>
			<p style="text-align: start;"><asp:Label ID="LongDescriptionLabel" runat="server" /></p>
		</div>
	</div>
		</div>
</section>







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
