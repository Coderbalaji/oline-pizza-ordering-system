<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import ="pizza.dao.*"%>
<%@ page import ="pizza.pojo.*"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>

<style type="text/css">
        
         #homeImage
        {
           margin-top: 110px;
           position:fixed;
        } 
        
        #head
        {
           margin-top: 100px;
           margin-left: 770px; 
           background:rgb(128, 1, 128);
           color:white;
           font-size:50px;
           position:fixed;
        }
        
        #line1
        {
           margin-top: 170px;
           margin-left: 770px; 
           color:white;
           /*background:black;*/
           font-size:large;
           position:fixed;
        }
        
        #line2
        {
           margin-top: 340px;
           margin-left: 770px; 
           background:#800180;
           color:white;
           position:fixed;
        }
        
        #line3
        {
           margin-top: 390px;
           margin-left: 770px;
           color:white;
           /*background:black;*/
           position:fixed;
        }
        
         #line4
        {
           margin-top: 450px;
           margin-left: 770px; 
           color: green;
           position:fixed;
           background-color:white;
        }
        
      
       
</style>
<link rel="stylesheet" href="style.css">
</head>
<body>
<%
String usertype=(String)session.getAttribute("usertype");

%>



<div id="homeImage">
    <img src="Images/pizza6.png" width="700px" height="500px">
    
</div>


<h1 id="head">----------- ONLINE PIZZA --------</h1>
<p id="line1"> Anyone who says that money cannot buy happiness has clearly never spent their money on pizza.<br>There's no better feeling in the world than a warm pizza box in your lap. Find your favorite pizza location today. <br> Here, "you can start your Hungry Howie's pizza order right now."You can do irrefutably impossible things with the right amount of planning and support from intelligent and hardworking people and pizza.                                                                                       </p>
<h2 id="line2">----------The Promise Of 15-Minute Delivery--------</h2>
<p id="line3">I have to admit I don't like pizza. I love it. And I am prepared to do literally anything to get my hands on a slice.</p>
<h3 id="line4">Pizza's,pizza's and pizza,s I don't like , I avoid but pizza's likes me I cann't avoid.</h3>
<% 
        String status=(String)request.getAttribute("status");
        if(status!=null)
        {
           out.println(status);	
        }
%>
                


<div class="fixed-header">
        <div class="container">
            <nav>
                
                 <%
                 if(usertype!=null && usertype=="CUSTOMER")
                 {
                 %>
                 <a href="AvailablePizza.jsp" >Available Pizza</a>
                   <a href="myCart.jsp">My Cart</a>
                   <a href="myOrder.jsp">My Orders</a>
                   <a href="myProfile.jsp">My Profile</a>
                   <!--  <a href="SignUpServlet?action=logout">Log out</a>-->
       
                 <%
                 }  
                
                 else if(usertype!=null && usertype=="ADMIN")
                 {
                 %>
                   <a href="addPizza.jsp">Add Pizza</a>
                   <a href="totalCustomers.jsp">Total Customer</a>
                   <a href="totalOrders.jsp">Total Orders</a>
                   <a href="myProfile.jsp">My Profile</a>
                   <!-- <a href="ChangePassword.jsp">Change Password</a>  
                   <a href="SignUpServlet?action=logout">Log out</a>-->      
                 <%
                 }
                
                 else
                 {
                 %> 
                    <a href="signup.jsp" >Sign Up</a>
                    <a href="login.jsp" >Login</a>
                    <a href="SkipLogin.jsp">Skip Login</a>
                <%
                 }
                %>
            </nav>
          </div>
        </div> 
        
        
</body>
</html>