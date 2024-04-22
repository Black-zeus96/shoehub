<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Checkout.aspx.cs" Inherits="shoehub.Checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <main class="p-4 container">
         <h1 class="text-center mb-4">Check Out Page</h1>

 <asp:ValidationSummary ID="ValidationSummary1" runat="server"
     CssClass="text-danger summary" HeaderText="Please correct these entries:" />

 <%-- contact info --%>
 <div class="mb-3">
     <h3>Contact Information</h3>
     <div class="form-group row my-3">
         <label class="control-label col-sm-3" for="txtEmail">Email Address:</label>
         <div class="col-sm-9">
             <asp:TextBox ID="txtEmail1" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
             <asp:RequiredFieldValidator ID="rfvEmail1" runat="server"
                 ErrorMessage="Email address" CssClass="text-danger"
                 Display="Dynamic" ControlToValidate="txtEmail1">Required</asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="revEmail1" runat="server"
                 ErrorMessage="Email address" CssClass="text-danger"
                 Display="Dynamic" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                 ControlToValidate="txtEmail1">Must be a valid email address</asp:RegularExpressionValidator>
         </div>
     </div>

     <div class="form-group row my-3">
         <label class="control-label col-sm-3">Email Re-entry:</label>
         <div class="col-sm-9">
             <asp:TextBox ID="txtEmail2" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
             <asp:RequiredFieldValidator ID="rfvEmail2" runat="server"
                 ErrorMessage="Email re-entry" CssClass="text-danger"
                 Display="Dynamic" ControlToValidate="txtEmail2">Required</asp:RequiredFieldValidator>
             <asp:CompareValidator ID="cvEmail2" runat="server"
                 ErrorMessage="Email re-entry" CssClass="text-danger" Display="Dynamic"
                 ControlToValidate="txtEmail2" ControlToCompare="txtEmail1">Must match first email address</asp:CompareValidator>
         </div>
     </div>

     <div class="form-group row my-3">
         <label class="control-label col-sm-3">First Name:</label>
         <div class="col-sm-9">
             <asp:TextBox ID="txtFirstName" runat="server" CssClass="form-control"></asp:TextBox>
             <asp:RequiredFieldValidator ID="rfvFirstName" runat="server"
                 ErrorMessage="First name" CssClass="text-danger"
                 Display="Dynamic" ControlToValidate="txtFirstName">Required</asp:RequiredFieldValidator>
         </div>
     </div>

     <div class="form-group row my-3">
         <label class="control-label col-sm-3">Last Name:</label>
         <div class="col-sm-9">
             <asp:TextBox ID="txtLastName" runat="server" CssClass="form-control"></asp:TextBox>
             <asp:RequiredFieldValidator ID="rfvLastName" runat="server"
                 ErrorMessage="Last name" CssClass="text-danger"
                 Display="Dynamic" ControlToValidate="txtLastName">Required</asp:RequiredFieldValidator>
         </div>
     </div>

     <div class="form-group row my-3">
         <label class="control-label col-sm-3">Phone Number:</label>
         <div class="col-sm-9">
             <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
             <asp:RequiredFieldValidator ID="rfvPhoneNumber" runat="server"
                 ErrorMessage="Phone number" CssClass="text-danger"
                 Display="Dynamic" ControlToValidate="txtPhone">Required</asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="revPhoneNumber" runat="server"
                 ErrorMessage="Phone number" CssClass="text-danger"
                 Display="Dynamic" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"
                 ControlToValidate="txtPhone">Use this format: 123-456-7890</asp:RegularExpressionValidator>
         </div>
     </div>
 </div>

 <%-- billing info --%>
 <div class="mb-3">
     <h3>Billing Address</h3>
     <div class="form-group row my-3">
         <label class="control-label col-sm-3">Address:</label>
         <div class="col-sm-9">
             <asp:TextBox ID="txtAddress" runat="server" CssClass="form-control"></asp:TextBox>
             <asp:RequiredFieldValidator ID="rfvStreetAddress" runat="server"
                 ErrorMessage="Billing address" Text="Required"
                 CssClass="text-danger" Display="Dynamic"
                 ControlToValidate="txtAddress"></asp:RequiredFieldValidator>
         </div>
     </div>
     <!--billing province -->
          <div class="form-group row my-3">
    <label class="control-label col-sm-3">Province:</label>
    <div class="col-sm-9">
        <asp:TextBox ID="txtProvince" runat="server" CssClass="form-control"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvProvince" runat="server"
            ErrorMessage="province required" Text="Required" CssClass="text-danger"
            Display="Dynamic" ControlToValidate="txtProvince"></asp:RequiredFieldValidator>
    </div>
</div>

     <div class="form-group row my-3">
         <label class="control-label col-sm-3">City:</label>
         <div class="col-sm-9">
             <asp:TextBox ID="txtCity" runat="server" CssClass="form-control"></asp:TextBox>
             <asp:RequiredFieldValidator ID="rfvCity" runat="server"
                 ErrorMessage="Billing city" Text="Required" CssClass="text-danger"
                 Display="Dynamic" ControlToValidate="txtCity"></asp:RequiredFieldValidator>
         </div>
     </div>

   

     <div class="form-group row my-3">
         <label class="control-label col-sm-3">Zip code:</label>
         <div class="col-sm-9">
             <asp:TextBox ID="txtZip" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
             <asp:RequiredFieldValidator ID="rfvZip" runat="server"
                 ErrorMessage="Billing zip code is required" Text="Required" CssClass="text-danger"
                 Display="Dynamic" ControlToValidate="txtZip"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="revZip" runat="server" ControlToValidate="txtZip" CssClass="text-danger"
                 ErrorMessage="Invalid zip code format"
                 ValidationExpression="^[ABCEGHJ-NPRSTVXY]\d[ABCEGHJ-NPRSTV-Z] \d[ABCEGHJ-NPRSTV-Z]\d$"
                 Display="Dynamic">Invalid format (Expected format: A1A 1A1)</asp:RegularExpressionValidator>
         </div>
     </div>
 </div>

 <%-- shipping info --%>
 <div class="mb-3">
     <h3>Shipping Address</h3>
     <div class="form-group row my-3">
         <div class="col-sm-offset-3 col-sm-9">
             <asp:CheckBox ID="chkSameAsBilling" runat="server"
                 AutoPostBack="true"
                 OnCheckedChanged="chkSameAsBilling_CheckedChanged" />
             <label>Same as billing address</label>
         </div>
     </div>

     <div class="form-group row my-3">
         <label class="control-label col-sm-3">Address:</label>
         <div class="col-sm-9">
             <asp:TextBox ID="txtShipAddress" runat="server" CssClass="form-control"></asp:TextBox>
             <asp:RequiredFieldValidator ID="rfvShipAddress" runat="server"
                 ErrorMessage="Shipping address" Text="Required"
                 CssClass="text-danger" Display="Dynamic"
                 ControlToValidate="txtShipAddress"></asp:RequiredFieldValidator>
         </div>
     </div>

     <div class="form-group row my-3">
      <label class="control-label col-sm-3">Province:</label>
      <div class="col-sm-9">
          <asp:TextBox ID="txtShipProvince" runat="server" CssClass="form-control"></asp:TextBox>
          <asp:RequiredFieldValidator ID="rfvShipProvince" runat="server"
              ErrorMessage="required" Text="Required" CssClass="text-danger"
              Display="Dynamic" ControlToValidate="txtShipProvince"></asp:RequiredFieldValidator>
      </div>
  </div>

     <div class="form-group row my-3">
         <label class="control-label col-sm-3">City:</label>
         <div class="col-sm-9">
             <asp:TextBox ID="txtShipCity" runat="server" CssClass="form-control"></asp:TextBox>
             <asp:RequiredFieldValidator ID="rfvShipCity" runat="server"
                 ErrorMessage="Shipping city" Text="Required" CssClass="text-danger"
                 Display="Dynamic" ControlToValidate="txtShipCity"></asp:RequiredFieldValidator>
         </div>
     </div>


     <div class="form-group row my-3">
         <label class="control-label col-sm-3">Zip code:</label>
         <div class="col-sm-9">
             <asp:TextBox ID="txtShipZip" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
             <asp:RequiredFieldValidator ID="rfvShipZip" runat="server"
                 ErrorMessage="Shipping zip code" Text="Required" CssClass="text-danger"
                 Display="Dynamic" ControlToValidate="txtShipZip"></asp:RequiredFieldValidator>
             <asp:RegularExpressionValidator ID="revShipZip" runat="server"
                 ControlToValidate="txtShipZip" CssClass="text-danger"
                 ErrorMessage="Invalid zip code format"
                 ValidationExpression="^[ABCEGHJ-NPRSTVXY]\d[ABCEGHJ-NPRSTV-Z] \d[ABCEGHJ-NPRSTV-Z]\d$"
                 Display="Dynamic">Invalid format (Expected format: A1A 1A1)</asp:RegularExpressionValidator>
         </div>
     </div>
 </div>

 <%-- buttons --%>
 <div class="form-group">
     <div class="col-sm-offset-3 col-sm-9 my-5">
         <asp:Button ID="btnCheckOut" runat="server" Text="Place Order" CssClass="btn btn-primary mr-2"
             OnClick="btnCheckOut_Click" />
         <asp:Button ID="btnCancel" runat="server" Text="Cancel Order" CssClass="btn btn-secondary mr-2"
             CausesValidation="False" OnClick="btnCancel_Click" />
         <asp:LinkButton ID="lbtnContinueShopping" runat="server" CssClass="btn btn-link"
             PostBackUrl="~/Cart.aspx" CausesValidation="False">Go to Cart</asp:LinkButton>
     </div>
 </div>
    </main>

</asp:Content>
