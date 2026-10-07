<%@ Page Title="" Language="C#" MasterPageFile="~/student/student_master.Master" AutoEventWireup="true" CodeBehind="Loginpage.aspx.cs" Inherits="college_management_system.student.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center style="height: 250px">
        <table style="background-color: #0000FF; color: #FFFFFF" >
           
            <tr>
                <th align="center" colspan="2"><h3>Login here</h3></th>
            </tr>
            <tr>
                <td>Select</td>
                <td>
                    <asp:DropDownList ID="DropDownList1_su" runat="server" Height="31px" Width="122px"> 
                        <asp:ListItem>select</asp:ListItem>
                        <asp:ListItem>Student</asp:ListItem>
                        <asp:ListItem>User</asp:ListItem>
                    </asp:DropDownList></td>
            </tr>
            <tr>
                <td>Username</td>
                <td>
                    <asp:TextBox ID="txt_usernam_signin" runat="server" Placeholder="Username"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Password</td>
                
                <td>  <asp:TextBox ID="txt_pass_signin" runat="server" placeholder="Password"></asp:TextBox></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="Btn_login" runat="server" Text="Login" BackColor="Red" Font-Bold="True" Font-Size="Smaller" Height="21px" Width="60px"  />&nbsp&nbsp&nbsp <asp:LinkButton ID="LinkButton1_signup" runat="server" Font-Bold="True" Font-Size="Small">Registration</asp:LinkButton></td>
            </tr>
        </table>
    </center>

</asp:Content>
