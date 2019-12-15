<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FormationOfStudentGroup.aspx.cs" Inherits="FinalProject.GroupID" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Gropus</title>
</head>
<body>
    <h1>Group Information</h1>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">           
               <tr>  
                    <td>Group ID :</td>  
                    <td>  
                        <asp:TextBox ID="txtGroupId" runat="server"></asp:TextBox> 
                    </td>  
               </tr>
                <tr>  
                    <td>Group Name :</td>  
                    <td>  
                        <asp:TextBox ID="txtGroupName" runat="server"></asp:TextBox> 
                    </td>  
               </tr> 
             
            </table>

            <asp:Button ID="btnInsert" runat="server" Text="INSERT" />
            <asp:Button ID="btnUpdate" runat="server" Text="UPDATE"  />
            <asp:Button ID="btnDelete" runat="server" Text="DELETE" />
            <asp:Button ID="btnReset" runat="server" Text="RESET" />
            <br />
            <h3>Student List :</h3> 
            <asp:GridView ID="GridView1" runat="server">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />

                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                   
            </asp:GridView>


                    <asp:Button ID="btnSelectData" runat="server" Text="Select Student"/>
                
                    <h3>Advisor :</h3>  
                    <asp:GridView ID="GridView2" runat="server">
                        <Columns>
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox2" runat="server" />

                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>

                    </asp:GridView>
                    <asp:Button ID="btnSelectDataAdvisor" runat="server" Text="Select Advisor" />
            <h3>Project Details</h3>
                <asp:GridView ID="GridView3" runat="server">
                <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox3" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns> 
         </asp:GridView>
            <asp:Button ID="btnGroupData" runat="server" Text="Assign Project" />
            <h3>FINAL GROUPS</h3>
                <asp:GridView ID="GridView4" runat="server">
                 
         </asp:GridView>

        </div>
    </form>
</body>
</html>
