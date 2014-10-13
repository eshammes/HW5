<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Evan's Mortgage Calculator
        
        <br /><br />
     
        Loan Amount:* <asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbLoanAmt" ErrorMessage="Please enter Amount"></asp:RequiredFieldValidator>
                  
        <br /><br />      
        
        Annual Interest %: * <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="Please enter a Rate"></asp:RequiredFieldValidator>
        
        <br /><br />

        Loan Term (Yrs):*&nbsp; <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="Please enter length"></asp:RequiredFieldValidator>
        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" Width="76px" />
        
        &nbsp;
                
         <asp:Button ID="btn_clear" runat="server" Text="Clear" />
        
        <br />
        
                <p>Welcome to Evan's mortgage calculator. Please complete every field above </p>
          <br />
                
         <% If Not IsPostBack Then%>
        
          <% Else%>
     
                  Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server"></asp:Label>


                    <asp:GridView ID="loanGridView" runat="server" />     

           <%End If%>
       <br />
        <br /> 
        </div>
    </form>
</body>
</html>
