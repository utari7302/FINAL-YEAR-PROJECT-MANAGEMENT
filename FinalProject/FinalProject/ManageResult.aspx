<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageResult.aspx.cs" Inherits="FinalProject.ManageResult" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Result</title>
</head>
<body>
    <h1>Result</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1"> 
               <tr>  
                    <td>Project ID :</td>  
                    <td>  
                        <asp:TextBox ID="txtProjectID" runat="server"></asp:TextBox> 
                    </td>  
               </tr>
                <tr>  
                    <td>Group Name :</td>  
                    <td>  
                        <asp:TextBox ID="txtGroupName" runat="server"></asp:TextBox> 
                    </td>  
               </tr>
               
                <tr>  
                    <td>Advisor Name :</td>  
                    <td>  
                        <asp:TextBox ID="txtAdvisorName" runat="server"></asp:TextBox> 
                    </td>  
               </tr> 
                <tr>  
                    <td>Obtained Marks :</td>  
                    <td>  
                        <asp:TextBox ID="txtObtainedMarks" runat="server"></asp:TextBox> 
                    </td>  
               </tr>
                <tr>  
                    <td>Total Marks :</td>  
                    <td>  
                        <asp:TextBox ID="txtTotalMarks" runat="server"></asp:TextBox> 
                    </td>  
               </tr>
                <tr>  
                    <td>Grade :</td>  
                    <td>  
                        <asp:TextBox ID="txtGrade" runat="server"></asp:TextBox> 
                    </td>  
               </tr>

                
            </table>
            <p>
            <asp:Button ID="btnInsert" runat="server" Text="INSERT" />
            <asp:Button ID="btnUpdate" runat="server" Text="UPDATE" />
            <asp:Button ID="btnDelete" runat="server" Text="DELETE" />
            <asp:Button ID="btnReset" runat="server" Text="RESET" />
        </p>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        </div>
    </form>
</body>
</html>
