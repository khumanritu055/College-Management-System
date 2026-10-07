<%@ Page Title="faculty" Language="C#" MasterPageFile="~/student/student_master.Master" AutoEventWireup="true" CodeBehind="faculty.aspx.cs" Inherits="college_management_system.student.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <content>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
            <Columns>
               <asp:TemplateField HeaderText="Faculty Id">
                   <ItemTemplate>
                       <asp:Label ID="Label1" runat="server" Text='<%#Eval("fId") %>'></asp:Label>
                   </ItemTemplate>
               </asp:TemplateField>
                <asp:TemplateField HeaderText="Faculty name">
                   <ItemTemplate>
                       <asp:Label ID="Label2" runat="server" Text='<%#Eval("name") %>'></asp:Label>
                   </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="degree">
                    <ItemTemplate>
                      <asp:Label ID="Label3" runat="server" Text='<%#Eval("degree") %>'></asp:Label>
                  </ItemTemplate>
               </asp:TemplateField>
                <asp:TemplateField HeaderText="subject">
                 <ItemTemplate>
                      <asp:Label ID="Label2" runat="server" Text='<%#Eval("subject") %>'></asp:Label>
                 </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Faculty name">
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" height="200px" Width="200px" ImageUrl='<%#Eval("photos") %>'/>
                </ItemTemplate>
                </asp:TemplateField>
            </Columns>

        </asp:GridView>
        
    </content>
</asp:Content>
