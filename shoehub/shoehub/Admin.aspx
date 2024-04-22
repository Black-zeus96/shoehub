<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="shoehub.Admin" %>

<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Shoehub || Admin</title>
  <link rel="shortcut icon" href="Content/Images/favicon.ico">
  <link rel="stylesheet" href="Content/css/styles.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/typicons/2.1.2/typicons.css" integrity="sha512-LHYfsPKHdLFYq6UOPC4nEu+XGDPEahxTa6H7pOcvPsDSb4yo9kQWzGk42ny1XlmXfLfU0EO2fmKVG3s3ykHtkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@icon/themify-icons@1.0.1-alpha.3/themify-icons.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>	
</head>

<body>
    <form runat="server">
  <!--  Body Wrapper -->
  <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
    data-sidebar-position="fixed" data-header-position="fixed">
    <!-- Sidebar Start -->
    <aside class="left-sidebar">
      <!-- Sidebar scroll-->
      <div>
        <div class="brand-logo d-flex align-items-center justify-content-between">
          <a class="navbar-brand" href="#"><i class="fa-solid fa-shoe-prints primary-color mr-1 fa-2xl"></i> SHOEHUB</a>
          <div class="close-btn d-xl-none d-block sidebartoggler cursor-pointer" id="sidebarCollapse">
            <i class="ti ti-x fs-8"></i>
          </div>
        </div>
        <!-- Sidebar navigation-->
        <nav class="sidebar-nav scroll-sidebar" data-simplebar="">
          <ul id="sidebarnav">
            <li class="nav-small-cap">
              <i class="ti ti-dots nav-small-cap-icon fs-4"></i>
              <span class="hide-menu">Home</span>
            </li>
            <li class="sidebar-item">
              <a class="sidebar-link" href="#" aria-expanded="false">
                <span>
                  <i class="ti ti-layout-dashboard"></i>
                </span>
                <span class="hide-menu">Dashboard</span>
              </a>
            </li>
          </ul>
        </nav>
        <!-- End Sidebar navigation -->
      </div>
      <!-- End Sidebar scroll-->
    </aside>
    <!--  Sidebar End -->
    <!--  Main wrapper -->
    <div class="body-wrapper">
      <!--  Header Start -->
      <header class="app-header">
        <nav class="navbar navbar-expand-lg navbar-light">
          <ul class="navbar-nav">
            <li class="nav-item d-block d-xl-none">
              <a class="nav-link sidebartoggler nav-icon-hover" id="headerCollapse" href="javascript:void(0)">
                <i class="ti ti-menu-2"></i>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link nav-icon-hover" href="<%= ResolveUrl("~/Default") %>">
                <i class="ti ti-logout"></i>
                <div class="notification bg-primary rounded-circle"></div>
              </a>
            </li>
          </ul>
          <div class="navbar-collapse justify-content-end px-0" id="navbarNav">
            <ul class="navbar-nav flex-row ms-auto align-items-center justify-content-end">
               <% if (Session["AdminUsername"] != null) { %>
             <li class="nav-item d-flex align-items-center">
                 <span class="nav-link"> <%= Session["AdminUsername"].ToString() %></span>
             </li>
             <% } %>
              <li class="nav-item dropdown">
                <a class="nav-link nav-icon-hover" href="javascript:void(0)" id="drop2" data-bs-toggle="dropdown"
                  aria-expanded="false">
                  <img src="Content/images/profile/user-1.jpg" alt="" width="35" height="35" class="rounded-circle">
                </a>
                <div class="dropdown-menu dropdown-menu-end dropdown-menu-animate-up" aria-labelledby="drop2">
                  <div class="message-body">
                    <a href="javascript:void(0)" class="d-flex align-items-center gap-2 dropdown-item">
                      <i class="ti ti-user fs-6"></i>
                      <p class="mb-0 fs-3">My Profile</p>
                    </a>
                    <a href="javascript:void(0)" class="d-flex align-items-center gap-2 dropdown-item">
                      <i class="ti ti-mail fs-6"></i>
                      <p class="mb-0 fs-3">My Account</p>
                    </a>
                    <a href="javascript:void(0)" class="d-flex align-items-center gap-2 dropdown-item">
                      <i class="ti ti-list-check fs-6"></i>
                      <p class="mb-0 fs-3">My Task</p>
                    </a>
                    
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!--  Header End -->




      <div class="container-fluid">
        <!--  Row 1 -->
     <div class="row">
  <div class="col-lg-6">
    <!-- Total products -->
    <div class="card overflow-hidden bg-warning">
      <div class="card-body p-4">
        <h5 class="card-title mb-9 fw-semibold">Total stock</h5>
        <div class="row align-items-center">
          <div class="col-8">
            <h4 class="fw-semibold mb-3">
              <asp:Label ID="lblTotalShoes" runat="server" Text=""></asp:Label>
            </h4>
          </div>
          <div class="col-4">
            <div class="d-flex justify-content-center">
              <div id="breakup"></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="col-lg-6">
    <!-- stock Amount -->
    <div class="card bg-body-secondary">
      <div class="card-body">
        <div class="row alig n-items-start">
          <div class="col-8">
            <h5 class="card-title mb-9 fw-semibold"> Total Amount </h5>
            <h4 class="fw-semibold mb-3">
              <asp:Label ID="lblTotalPrice" runat="server" Text=""></asp:Label>
            </h4>
          </div>
          <div class="col-4">
            <div class="d-flex justify-content-end">
              <div class="text-white bg-secondary rounded-circle p-6 d-flex align-items-center justify-content-center">
                <i class="ti ti-currency-dollar fs-6"></i>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div id="earning"></div>
    </div>
  </div>
</div>


          <!--- category sorting---->
        <div class="">
            <div class="d-flex align-items-center custom-css-for-drop mt-4 mb-4 g-2">
            <h3 class="text-black form-label me-3">Choose a Category</h3>
            <asp:SqlDataSource ID="categoryDDL" runat="server" ConnectionString='<%$ ConnectionStrings:dataConnectionString %>' SelectCommand="SELECT [catID], [cat_name] FROM [category]"></asp:SqlDataSource>
            <asp:DropDownList ID="CatDropDownList" runat="server" AutoPostBack="True" DataSourceID="categoryDDL" DataTextField="cat_name" DataValueField="catID" CssClass="w-25 p-2 form-select"></asp:DropDownList>
            </div>


            <!---------- product datasource and product display  ---------------->
            <asp:SqlDataSource ID="productDDL" runat="server" ConnectionString='<%$ ConnectionStrings:dataConnectionString %>' SelectCommand="SELECT [shoeID], [Name ] AS Name_, [price], [short_description], [Long_description], [ImageURL], [catID] FROM [shoes] WHERE ([catID] = @catID)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="CatDropDownList" PropertyName="SelectedValue" Name="catID" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>


            <h3 class="mt-4 mb-2">Product Overview</h3>
            <asp:GridView ID="productGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="shoeID" DataSourceID="productDDL" CssClass="table table-bordered table-striped gridView"  AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="shoeID" HeaderText="shoeID" ReadOnly="True" SortExpression="shoeID"></asp:BoundField>
                    <asp:BoundField DataField="Name_" HeaderText="Name" SortExpression="Name_"></asp:BoundField>
                     <asp:TemplateField HeaderText="price" SortExpression="price">
                        <ItemTemplate>
                            <%# FormatPrice(Eval("price")) %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="short_description" HeaderText="short_description" SortExpression="short_description"></asp:BoundField> 
                    <asp:TemplateField HeaderText="Images">
                       <ItemTemplate>
                          <asp:Image ID="imgProduct" runat="server" ImageUrl='<%# Eval("ImageURL") %>' Height="50" Width="50" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>




            <!---------- Category maintenance ---------------->
            <div class="mt-4">
                <asp:SqlDataSource ID="CatMaintainDDL" runat="server" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:dataConnectionString %>' DeleteCommand="DELETE FROM [category] WHERE [catID] = @original_catID AND [cat_name] = @original_cat_name" InsertCommand="INSERT INTO [category] ([catID], [cat_name]) VALUES (@catID, @cat_name)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [catID], [cat_name] FROM [category]" UpdateCommand="UPDATE [category] SET [cat_name] = @cat_name WHERE [catID] = @original_catID AND [cat_name] = @original_cat_name">
                    <DeleteParameters>
                        <asp:Parameter Name="original_catID" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_cat_name" Type="String"></asp:Parameter>
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="catID" Type="String"></asp:Parameter>
                        <asp:Parameter Name="cat_name" Type="String"></asp:Parameter>
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="cat_name" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_catID" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_cat_name" Type="String"></asp:Parameter>
                    </UpdateParameters>
                </asp:SqlDataSource>
               
                <h3 class="mt-4 mb-2">Category Maintenance</h3>
                <asp:GridView ID="CatMaintainGridView" runat="server" AutoGenerateColumns="False" DataKeyNames="catID" DataSourceID="CatMaintainDDL" CssClass="table table-bordered table-striped gridView">
                    <Columns>
                        <asp:BoundField DataField="catID" HeaderText="catID" ReadOnly="True" SortExpression="catID"></asp:BoundField>
                        <asp:BoundField DataField="cat_name" HeaderText="cat_name" SortExpression="cat_name"></asp:BoundField>
                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                    </Columns>
                </asp:GridView>


    <!-- Form to add new Category -->
            <h3 class="mt-4 mb-2">Add New Category</h3>
            <asp:Panel ID="Panel1" runat="server" CssClass="card">
                <div class="card-body">
                    <asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red"></asp:Label>
                    <div class="mb-3">
                        <label for="txtCatId" class="form-label">Category ID</label>
                        <asp:TextBox ID="txtCatId" runat="server" CssClass="form-control" placeholder="Enter category ID"></asp:TextBox>
                    </div>
                    <div class="mb-3">
                        <label for="txtCategoryName" class="form-label">Category Name</label>
                        <asp:TextBox ID="txtCategoryName" runat="server" CssClass="form-control" placeholder="Enter category name"></asp:TextBox>
                    </div>
                    <asp:Button ID="Button1" runat="server" Text="Add Category" CssClass="btn btn-primary" OnClick="btnAddCategory_Click" />
                </div>
            </asp:Panel>





            <!--------- product maintenance------------>
           <div class="mt-5">
               <asp:SqlDataSource ID="produtctMtSource" runat="server" 
                   ConnectionString='<%$ ConnectionStrings:dataConnectionString %>' 
                   SelectCommand="SELECT [shoeID], [Name ] AS Name_, [price], [catID] FROM [shoes]">
               </asp:SqlDataSource>
            <h3 class="mt-4 mb-2">Product Maintenance</h3>
               <asp:GridView ID="GridViewproduct" runat="server" AutoGenerateColumns="False" DataKeyNames="shoeID"  DataSourceID="produtctMtSource" AllowPaging="True" AllowSorting="True" CssClass="table table-bordered table-striped gridView">
                   <Columns>
                       <asp:BoundField DataField="shoeID" HeaderText="shoeID" ReadOnly="True" SortExpression="shoeID"></asp:BoundField>
                       <asp:BoundField DataField="Name_" HeaderText="Name" SortExpression="Name_"></asp:BoundField>
                       <asp:TemplateField HeaderText="price" SortExpression="price">
                        <ItemTemplate>
                            <%# FormatPrice(Eval("price")) %>
                        </ItemTemplate>
                    </asp:TemplateField>
                       <asp:BoundField DataField="catID" HeaderText="catID" SortExpression="catID"></asp:BoundField>
                       <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                   </Columns>
               </asp:GridView>

           </div>

            <!---------------detail view to perform CRUD operation on the product data------------------------------->
            <div>
                <asp:SqlDataSource ID="detailDDl" runat="server" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:dataConnectionString %>' DeleteCommand="DELETE FROM [shoes] WHERE [shoeID] = @original_shoeID AND [Name ] = @original_Name_ AND [price] = @original_price AND [short_description] = @original_short_description AND [Long_description] = @original_Long_description AND [ImageURL] = @original_ImageURL AND [catID] = @original_catID" InsertCommand="INSERT INTO [shoes] ([shoeID], [Name ], [price], [short_description], [Long_description], [ImageURL], [catID]) VALUES (@shoeID, @Name_, @price, @short_description, @Long_description, @ImageURL, @catID)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [shoeID], [Name ] AS Name_, [price], [short_description], [Long_description], [ImageURL], [catID] FROM [shoes] WHERE ([shoeID] = @shoeID)" UpdateCommand="UPDATE [shoes] SET [Name ] = @Name_, [price] = @price, [short_description] = @short_description, [Long_description] = @Long_description, [ImageURL] = @ImageURL, [catID] = @catID WHERE [shoeID] = @original_shoeID AND [Name ] = @original_Name_ AND [price] = @original_price AND [short_description] = @original_short_description AND [Long_description] = @original_Long_description AND [ImageURL] = @original_ImageURL AND [catID] = @original_catID">
                    <DeleteParameters>
                        <asp:Parameter Name="original_shoeID" Type="Int32"></asp:Parameter>
                        <asp:Parameter Name="original_Name_" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_price" Type="Decimal"></asp:Parameter>
                        <asp:Parameter Name="original_short_description" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_Long_description" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_ImageURL" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_catID" Type="String"></asp:Parameter>
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="shoeID" Type="Int32"></asp:Parameter>
                        <asp:Parameter Name="Name_" Type="String"></asp:Parameter>
                        <asp:Parameter Name="price" Type="Decimal"></asp:Parameter>
                        <asp:Parameter Name="short_description" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Long_description" Type="String"></asp:Parameter>
                        <asp:Parameter Name="ImageURL" Type="String"></asp:Parameter>
                        <asp:Parameter Name="catID" Type="String"></asp:Parameter>
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridViewproduct" PropertyName="SelectedValue" Name="shoeID" Type="Int32"></asp:ControlParameter>
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name_" Type="String"></asp:Parameter>
                        <asp:Parameter Name="price" Type="Decimal"></asp:Parameter>
                        <asp:Parameter Name="short_description" Type="String"></asp:Parameter>
                        <asp:Parameter Name="Long_description" Type="String"></asp:Parameter>
                        <asp:Parameter Name="ImageURL" Type="String"></asp:Parameter>
                        <asp:Parameter Name="catID" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_shoeID" Type="Int32"></asp:Parameter>
                        <asp:Parameter Name="original_Name_" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_price" Type="Decimal"></asp:Parameter>
                        <asp:Parameter Name="original_short_description" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_Long_description" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_ImageURL" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_catID" Type="String"></asp:Parameter>
                    </UpdateParameters>
                </asp:SqlDataSource>


                <asp:DetailsView ID="productsDetailsView" runat="server" Height="50px" Width="500px" 
                    AutoGenerateRows="False" 
                    DataKeyNames="shoeID" 
                    DataSourceID="detailDDl"
                    CssClass="table table-bordered">
                    <Fields>
                        <asp:BoundField DataField="shoeID" HeaderText="shoeID" ReadOnly="True" SortExpression="shoeID"></asp:BoundField>
                        <asp:BoundField DataField="Name_" HeaderText="Name_" SortExpression="Name_"></asp:BoundField>
                        <asp:BoundField DataField="price" HeaderText="price" SortExpression="price"></asp:BoundField>
                        <asp:BoundField DataField="short_description" HeaderText="short_description" SortExpression="short_description"></asp:BoundField>
                        <asp:BoundField DataField="Long_description" HeaderText="Long_description" SortExpression="Long_description"></asp:BoundField>
                        <asp:BoundField DataField="ImageURL" HeaderText="ImageURL" SortExpression="ImageURL"></asp:BoundField>
                        <asp:BoundField DataField="catID" HeaderText="catID" SortExpression="catID"></asp:BoundField>
                        <asp:CommandField ShowInsertButton="True" ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                    </Fields>
                </asp:DetailsView>
            </div>
        </div>
          <!--- end of wrapper--->


        
        <div class="py-6 px-6 text-center">
          <p class="mb-0 fs-4">Design and Developed by Apex Shoehub</p>
        </div>
      </div>
    </div>
  </div>
 </form>
  <script src="Content/libs/jquery/dist/jquery.min.js"></script>
  <script src="Content/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="Content/js/sidebarmenu.js"></script>
  <script src="Content/js/app.min.js"></script>
  <script src="Content/libs/apexcharts/dist/apexcharts.min.js"></script>
  <script src="Content/libs/simplebar/dist/simplebar.js"></script>
  <script src="Content/js/dashboard.js"></script>
</body>

</html>