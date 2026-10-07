<%@ Page Title="Registration" Language="C#" MasterPageFile="~/student/student_master.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="college_management_system.student.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>
        <!-- Student Registration Panel -->
        <asp:Panel ID="Panel1" runat="server" GroupingText="Student" BackColor="#FFCCFF">
            <table style="width: 400px; background-color: #00FFFF;">
                <tr>
                    <th colspan="3">
                        <h1>Registration here</h1>
                        <h3>
                            <asp:LinkButton ID="Linkbutton_login" runat="server" Font-Bold="True" Font-Names="Arial" Font-Size="Small">
                                Login here
                            </asp:LinkButton>
                        </h3>
                    </th>
                </tr>
                <tr>
                    <td>Student ID</td>
                    <td><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                    <td rowspan="2">
                        <asp:LinkButton ID="Linkbutton_other" runat="server" OnClick="Linkbutton_other_Click1">Other</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td>First Name</td>
                    <td><asp:TextBox ID="txt_rg_firstname" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><asp:TextBox ID="txt_rg_lastname" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td colspan="2">
                        <asp:RadioButtonList ID="RadioButtonList_gender" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>Mobile</td>
                    <td><asp:TextBox ID="txt_rg_mobile" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><asp:TextBox ID="txt_rg_email" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>UserName</td>
                    <td><asp:TextBox ID="txt_rg_uname" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td colspan="2"><asp:TextBox ID="txt_rg_pas" TextMode="Password" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td colspan="2"><asp:TextBox ID="txt_rg_cpass" TextMode="Password" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Date Of Birth</td>
                    <td colspan="2"><asp:TextBox ID="txt_rg_dates" TextMode="Date" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Select Course</td>
                    <td colspan="2">
                        <asp:DropDownList ID="DropDownList1_course" runat="server" Width="230px">
                            <asp:ListItem>BCA</asp:ListItem>
                            <asp:ListItem>BBA</asp:ListItem>
                            <asp:ListItem>BSC</asp:ListItem>
                            <asp:ListItem>MCA</asp:ListItem>
                            <asp:ListItem>MSC</asp:ListItem>
                            <asp:ListItem>MBA</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Year</td>
                    <td colspan="2"><asp:TextBox ID="txt_rg_year" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="3" align="center">
                        <asp:Button ID="btn_students_Submit" runat="server" Text="Submit" BackColor="#00CC00" Font-Bold="True" OnClick="btn_students_Submit_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton_login_other" runat="server" Font-Bold="True" Font-Size="Medium" Font-Underline="True" ForeColor="Blue">
                            SignIn
                        </asp:LinkButton>
                    </td>
                </tr>
            </table>
        </asp:Panel>

        <!-- Other Registration Panel -->
        <asp:Panel ID="panel2" runat="server" GroupingText="Other" BackColor="#FFCCFF">
            <table style="width: 462px; background-color: #00FFFF;">
                <tr>
                    <th colspan="2"><h1>Registration here</h1></th>
                </tr>
                <tr>
                    <td>User ID</td>
                    <td><asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>First Name</td>
                    <td><asp:TextBox ID="txt_otr_fnm" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Last Name</td>
                    <td><asp:TextBox ID="txt_otr_lnm" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList2_gender" runat="server">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
                <tr>
                    <td>Mobile</td>
                    <td><asp:TextBox ID="txt_otr_mob" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><asp:TextBox ID="txt_otr_eml" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>User Name</td>
                    <td><asp:TextBox ID="txt_unm_othr" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td><asp:TextBox ID="TextBox7" TextMode="Password" runat="server" Width="230px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btn_other_submit" runat="server" Text="Submit" BackColor="#00CC00" Font-Bold="True" Font-Size="Medium" OnClick="btn_other_submit_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </center>

</asp:Content>

