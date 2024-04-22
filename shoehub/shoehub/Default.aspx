<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="shoehub._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
     	<div id="carousel" class="carousel slide" data-ride="carousel">
		
			<!-- Carousel Indicators -->
			<ul class="carousel-indicators">
				<li data-target="#carousel" data-slide-to="0" class="active"></li>
				<li data-target="#carousel" data-slide-to="1"></li>
				<li data-target="#carousel" data-slide-to="2"></li>
			</ul>
		
			<!-- Carousel -->
			<div class="carousel-inner" style="height: 700px;">
			
				<!--Text only with background image-->
				<div class="carousel-item active" style="background: url(Content/Images/hero.png) center ; height: 100%;">
					<div class="container slide-textonly">
						<div>
							<h1>MEN</h1>
							<p class="lead">Spring/Summer 2024 Collection</p>
							
						</div>
					</div>
				</div>
				

				<div class="carousel-item " style="background: url(Content/images/kid-hero.png) center; height: 100%;">
					<div class="container slide-textonly">
						<div>
							<h1>CHILDREN</h1>
							<p class="lead">Children/Summer 2024 Collection</p>
							
						</div>
					</div>
				</div>

		
				
				<!--Text only with background image-->
				<div class="carousel-item" style="background: url(Content/Images/women-hero.png) center; height: 100%;">
					<div class="container slide-textonly">
						<div>
							<h1>WOMEN</h1>
							<p class="lead">Exclusive 2024 Collection</p>
							
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<section class="collections text-center ">
			<div class="container-fluid">
				<div class="row">
					<div class="collection col-md-6 alt-background">
						<div class="container container-right text-center">
							<div>
								<h1>Women's</h1>
								<p class="lead">Exclusive 2024 Collection</p>
								<a href="shop.aspx" class="btn btn-outline-secondary">View Collection</a>
								
							</div>
						</div>
					</div>
					<div class="collection col-md-6 bg-secondary inverted">
						<div class="container container-left text-center">
							<div>
								<h1>Men's</h1>
								<p class="lead">Exclusive 2024 Collection</p>
								<a href="shop.aspx" class="btn btn-outline-white">View Collection</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>


		<section class="featured-block text-center">
			<div class="container">
				<div class="row justify-center">
					<div class="col-md-6 text-center">
						<img class="mt-4 mb-4 img-fluid" src="Content/Images/sum-image.jpg" style="width: 100%;">
					</div>
					<div class="col-md-6 text-center text-md-left">
						<h2 class="mb-3">Sheohub/summer Collection 2024</h2>
						<p class="lead mt-2 mb-3">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse cursus erat sed sem sagittis cursus.</p>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec sed odio dui. Suspendisse cursus erat sed sem sagittis cursus. Etiam porta sem malesuada magna mollis euismod.</p>
						<a href="default.aspx" class="btn btn-md btn-outline-primary mt-3">Shop Now</a>
					</div>
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
    </main>
	 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
			<script>
                $('.carousel').carousel({
                    interval: 2000
                })
            </script>
</asp:Content>
