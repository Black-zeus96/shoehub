<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"  CodeBehind="shop.aspx.cs" Inherits="shoehub.shop" Culture="en-CA" EnableEventValidation="false" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

	<!-----cat datasource------>
    <asp:SqlDataSource ID="catDDL" runat="server" ConnectionString='<%$ ConnectionStrings:dataConnectionString %>' SelectCommand="SELECT [catID], [cat_name] FROM [category]"></asp:SqlDataSource>

	<!-----shoe datasource------>
    <asp:SqlDataSource ID="shoeDDL" runat="server" ConnectionString='<%$ ConnectionStrings:dataConnectionString %>' SelectCommand="SELECT [shoeID], [Name ] AS Name_, [price], [short_description], [Long_description], [ImageURL], [catID] FROM [shoes]"></asp:SqlDataSource>


	<!--- bannar ---->
	<div class="hero_wrapper">
		<div class="content">
            <h1>shop Exclusively</h1>
		</div>

	</div>



    	<div class="container">
			<div class="row">
				
				<div class="col-md-8 col-lg-9">
					<section class="products">
						<div class="container">
							<div class="row sorting mb-5">
								<div class="col-12">
									<div class="float-left d-flex gap-5 aling-items-center" style="width:50%" >
										<label class="mr-2 flex-shrink-0">Sort by:</label>

                                        <asp:DropDownList ID="CatDropDownList" runat="server" AutoPostBack="True" DataSourceID="catDDL" DataTextField="cat_name" DataValueField="catID" CssClass="form-control p-2" Style="width: calc(100% - 30%);" OnSelectedIndexChanged="CatDropDownList_SelectedIndexChanged">
                                            <asp:ListItem Text="-- select category --" Value="0"></asp:ListItem>
                                        </asp:DropDownList>

                                       </div>
								</div>
							</div>
							<div class="row">

								<!---- display shoes --->
						 <asp:DataList ID="ShoeDataList" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" CssClass="col-product gap-5">
                                <ItemTemplate >
									<div class="m-3 mb-4">
                                    <figure>
                                        <img class="rounded-corners img-fluid" src='<%# Eval("ImageURL") %>' style="min-width:250px; min-height:250px; max-height:250px;"/>
                                        <figcaption>
                                            <div class="thumb-overlay">
                                                <a href='<%# "Details.aspx?id=" + Eval("shoeID") %>' title="More Info">
                                                    <i class="fas fa-search-plus"></i>
                                                </a>
                                            </div>
                                        </figcaption>
                                    </figure>
                                    <h4 class="mb-1">
                                        <a href='<%# "Details.aspx?id=" + Eval("shoeID") %>'><%# Eval("Name_") %></a>
                                    </h4>
                                    <p><span class="emphasis"><%# Eval("price", "{0:C}") %></span></p>
									</div>
                                </ItemTemplate>
                            </asp:DataList>
							</div>
						</div>
					</section>
				</div>
			</div>
		</div>
		
		<div class="divider"></div>
		
		<section class="cta text-center">
			<div class="container">
				<h3 class="mt-0 mb-4">Sign up now to save 10% on your first order</h3>
				<form class="subscribe">
					<div class="form-group row pt-3">
						<div class="col-sm-8 mb-3">
							<input type="text" class="form-control" id="inputName" placeholder="Your Name">
						</div>
						<div class="col-sm-4">
							<button type="submit" class="btn btn-lg btn-outline-primary">Sign me up</button>
						</div>
					</div>
				</form>
			</div>
		</section>
</asp:Content>
