﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="GroupTelFV.Result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>תוצאות חיפוש</title>
    <link href="CSS/general.css?v5" rel="stylesheet" />
   <meta name="viewport" content="width=device-width",initail-scale="1.0" />

</head>
<body dir="rtl">
     <div class="top-row" >
		<button type="button" class="nav-btn">
			<span class="material-icons">
				תפריט
			</span>
		</button>
		               <a href="register.aspx" class="btn">הצטרפו אלינו</a>
	</div>
 <div class="hero">
   <header class="nav-overlay ">
       
        <nav class="nav"> 
            
            
                <a class="nav-link" href="Default.aspx" >בית</a>
                <a class="nav-link" href="Login.aspx" >הרשמה/התחברות</a>
                <%--<li><a class="main-nav-link" href="index.aspx" >קטגוריות מוצרים</a></li>--%>
               <a class="nav-link" href="contact.aspx" >צרו קשר</a>
                <a class="nav-link1" href="profile.aspx" >איזור אישי</a>

           
          
    
     </nav>
       
       </header>
                    
                 <div class="header-container">
                   <h1 class="heading-primary">GroupTel</h1><br />
               <h1 class="heading-primary margin-bottom-sm"> המקום לרכישות קבוצתיות </h1>
           </div>
        
          <form id="form1" runat="server" dir="rtl">  

                 <a class="search" dir="rtl">
                    <asp:TextBox runat="server" id="searchBox" placeholder="מה ברצונכם למצוא?"  CssClass="search1"   />
                    <asp:Button runat="server" ID="searchBtn" Text="מצא" OnClick="searchBtn_Click" CssClass="btn-search" />
                 </a>
             

         </form>
          
            </div>
               <center>
            <span class="results">
            <asp:Literal ID="LtlMsg" runat="server"  />
            </span>
            </center>




          <section class="prod-section">
        <div class="prod-item-result">
 
            <asp:Repeater ID="RptAllProds" runat="server">
                <ItemTemplate>
                   <div class="prod-box">
                   <img src="<%#Eval("Ppic") %>" class="prod-img" />
                    <div class="grid-quantity-name">
                   <div class="prod-name"><%#Eval("Pname") %></div>
                        <asp:Literal runat="server" ID="LtlMsg" ></asp:Literal>
                    </div>
                   <div class="grid-price-btn">
                   <a href="#" class="price">₪<%#Eval("Price") %></a>
                   <a href="JoinGroup1.aspx?Pid=<%#Eval("Pid") %>" class="prod-btn float"> לרכישה</a>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
           
        </div>
    </section>
    <script src="JS/nav.js"></script>
            <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
<script nomodule="nomodule" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
    <script src="JS/navbar.js"></script>
</body>
</html>
