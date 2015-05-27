<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Class4validation._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Tip Calculator</h1>
        <h4>Bill Details</h4>
        <div>
            <label for="txtAmuount">Amount</label>
            <asp:TextBox ID="txtAmount" runat="server" TextMode="Number" required />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ErrorMessage="Required" ControlToValidate="txtAmount" Display="Dynamic" CssClass="label label-danger">
            </asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server"
                ErrorMessage="Please enter a positive numeric value" ControlToValidate="txtAmount"
                Type="Double" MinimumValue=".01" MaximumValue="1000" Display="Dynamic" CssClass="label label-danger">
            </asp:RangeValidator>
        </div>
        <div>
            <label for="ddlPercent">Tip%: </label>
            <asp:DropDownList ID="ddlPercent" runat="server">
                <asp:ListItem Value=".1" Text="10%"></asp:ListItem>
                <asp:ListItem Value=".15" Text="15% " Selected="True"></asp:ListItem>
                <asp:ListItem Value=".2" Text="20%"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <asp:Button Value="btnCalculate" runat="server" Text="Calculate Tip" OnClick="Unnamed1_Click" />

        <asp:Panel ID="pnlResults" runat="server" Visible="false">
            <h4>Totals</h4>
            <div>
                <label for="lblTip">Tip Amount</label>
                <asp:Label ID="lblTip" runat="server" />
            </div>

            <div>
                <label for="lblTotal">Total:</label>
                <asp:Label ID="lblTotal" runat="server" />
            </div>
        </asp:Panel>
    </form>
</body>
</html>
