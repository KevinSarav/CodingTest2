<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CodingTest2.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" />
    <script src="JavaScript.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblInfo" runat="server" Text="Your Basic Information" CssClass="lblLarge"></asp:Label>
            <asp:Label ID="lblName" runat="server" Text="Full Name" CssClass="lblSmall"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" ForeColor="#999999" Width="260px" onfocus="txtNameonFocus(this)" onblur="txtNameOnBlur(this)" CssClass="input">Firstname Lastname</asp:TextBox>
            <asp:RequiredFieldValidator ID="RFValTxtName" runat="server" ControlToValidate="txtName" CssClass="valError" ErrorMessage="Name is required" Display="Dynamic" InitialValue="Firstname Lastname"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegExValtxtName" runat="server" ControlToValidate="txtName" CssClass="valError" ErrorMessage="Incorrect name format" ValidationExpression="\D+\s\D+"></asp:RegularExpressionValidator>
            <asp:Label ID="lblDoB" runat="server" Text="Date of Birth" CssClass="lblSmall"></asp:Label>
            <asp:DropDownList ID="ddlMonth" runat="server" CssClass="input" onchange="onMonthChange(this)">
                <asp:ListItem>Month</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
            </asp:DropDownList>
&nbsp;<asp:DropDownList ID="ddlDay" runat="server">
                <asp:ListItem>Day</asp:ListItem>
            </asp:DropDownList>
&nbsp;<asp:DropDownList ID="ddlYear" runat="server">
            </asp:DropDownList>
            <asp:CustomValidator ID="CustValYear" runat="server" CssClass="valError" ErrorMessage="Year required." OnServerValidate="CustValYear_ServerValidate"></asp:CustomValidator>
&nbsp;<asp:Label ID="lblCompany" runat="server" Text="Company Name" CssClass="lblSmall"></asp:Label>
            <asp:TextBox ID="txtCompany" runat="server" CssClass="input"></asp:TextBox>
            <asp:Label ID="lblMembership" runat="server" Text="Choose your membership" CssClass="lblLarge"></asp:Label>
            <asp:RadioButton ID="radBtnFree" runat="server" Text="Free" GroupName="Membership" onclick="radFreeOnClick(this)" CssClass="input"/>
            <asp:RadioButton ID="radBtnBasic" runat="server" Text="Basic" GroupName="Membership" onclick="radBasicOnClick(this)" CssClass="input"/>
            <asp:RadioButton ID="radBtnPremium" runat="server" Text="Premium" GroupName="Membership" onclick="radPremiumOnClick(this)" CssClass="input"/>
            <br />
            <br />
            <asp:Label ID="lblFee" runat="server" Text="Total Fee:" CssClass="lblSmall" style="display:inline-block"></asp:Label>
            <asp:Label ID="lblAmount" runat="server" Text="$0"></asp:Label>
            <asp:Label ID="lblAccountDetails" runat="server" Text="Your Account Details" CssClass="lblLarge"></asp:Label>
            <asp:Label ID="lblEmail" runat="server" Text="Email address" CssClass="lblSmall"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFValTxtEmail" runat="server" ControlToValidate="txtEmail" CssClass="valError" ErrorMessage="Email is required" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegExTxtEmail" runat="server" ControlToValidate="txtEmail" CssClass="valError" ErrorMessage="Email is not in proper format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
            <asp:CustomValidator ID="CustValEmail" runat="server" ControlToValidate="txtEmail" CssClass="valError" ErrorMessage="Must be office email" OnServerValidate="CustValEmail_ServerValidate"></asp:CustomValidator>
            <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="lblSmall"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFValTxtPassword" runat="server" ControlToValidate="txtPassword" CssClass="valError" ErrorMessage="Password is required" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegExPassword" runat="server" ControlToValidate="txtPassword" CssClass="valError" ErrorMessage="Password should be minimum 8 characters" ValidationExpression="\w{8,}"></asp:RegularExpressionValidator>
            <asp:Label ID="lblReenterPwd" runat="server" Text="Re-enter Password" CssClass="lblSmall"></asp:Label>
            <asp:TextBox ID="txtReenter" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RFValTxtReenterPassword" runat="server" ControlToValidate="txtReenter" CssClass="valError" ErrorMessage="Re-enter password is required" Display="Dynamic"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompValPassword" runat="server" ErrorMessage="Passwords do not match" ControlToCompare="txtPassword" ControlToValidate="txtReenter" CssClass="valError"></asp:CompareValidator>
            <asp:Button ID="btnSignup" runat="server" Text="Sign up" CssClass="btn" OnClick="btnSignup_Click"/>
        </div>
    </form>
</body>
</html>
