<%@ Page Title="" Language="C#" MasterPageFile="~/student/student_master.Master" AutoEventWireup="true" CodeBehind="course.aspx.cs" Inherits="college_management_system.student.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<center>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" GridLines="Horizontal" OnPageIndexChanged="GridView1_PageIndexChanged" height="700px" Width="849px">
        <FooterStyle BackColor="White" ForeColor="#333333" />
        <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="White" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#487575" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#275353" />

        <Columns>
            <asp:TemplateField HeaderText="Course Id">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%#Eval("cid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Course name">
    <ItemTemplate>
        <asp:Label ID="Label2" runat="server" Text='<%#Eval("course name") %>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>

            <asp:TemplateField HeaderText="Eligibility">
    <ItemTemplate>
        <asp:Label ID="Label3" runat="server" Text='<%#Eval("eligibility") %>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>

            <asp:TemplateField HeaderText="Fields">
    <ItemTemplate>
        <asp:Label ID="Label4" runat="server" Text='<%#Eval("field") %>'></asp:Label>
    </ItemTemplate>
</asp:TemplateField>
        </Columns>

    </asp:GridView>





    <br />

</center>
    




</asp:Content>
