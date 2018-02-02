
<%@page import="java.util.Map"%>
<%@page import="java.net.Socket"%>
<%@page import="java.net.InetAddress"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>



<%
System.out.println(
        InetAddress.getLocalHost().getHostAddress());
String fullname=request.getParameter("fullname");

String department=request.getParameter("department");

String degination=request.getParameter("degination");

String phonenumber=request.getParameter("phonenumber");

String password=request.getParameter("password");

String printer1=request.getParameter("printer1");

String printer2=request.getParameter("printer2");

String scanner1=request.getParameter("scanner1");

String scanner2=request.getParameter("scanner2");

  Process p,p1,p2;
  
 //RETURNING VALUE FROM CMD
try 
            { 
              
            
                 p1=Runtime.getRuntime().exec("cmd /c hostname"); 
                p1.waitFor(); 
                BufferedReader reader1=new BufferedReader(
                    new InputStreamReader(p1.getInputStream())
                ); 
                String line1;
                String hostname=null;
                while((line1 = reader1.readLine()) != null) 
                { 
                //    System.out.println(line1);
                    hostname=line1;
                } 

                 p2=Runtime.getRuntime().exec("cmd /c whoami"); 
                p2.waitFor(); 
                BufferedReader reader2=new BufferedReader(
                    new InputStreamReader(p2.getInputStream())
                ); 
                 String line2;
                 String user=null;
                while((line2 = reader2.readLine()) != null) 
                { 
                  //  System.out.println(line2);
                    user=line2;
                }
              
     Map<String, String> env = System.getenv(); 
  String n=  System.getProperty("user.name"); 
        System.out.println("N"+n);
    
    
    

           Class.forName("com.mysql.jdbc.Driver");
       //  cn=DriverManager.getConnection("jdbc:mysql://192.168.10.7:3306/login","utsav","utsav");
     Connection  cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/router", "root", "");
     PreparedStatement pst=cn.prepareStatement ("Insert into landesk1(fullname,department,degination,phonenumber,ip,hostname,username,password,printer1,printer2,scanner1,scanner2) values (?,?,?,?,?,?,?,?,?,?,?,?)");
      pst.setString(1, fullname);
      pst.setString(2, department);
      pst.setString(3, degination);
      pst.setString(4, phonenumber);
      pst.setString(5, request.getRemoteAddr());
      pst.setString(6, n);
      pst.setString(7, request.getRemoteAddr());
      pst.setString(8, password);
      pst.setString(9, printer1);
      pst.setString(10, printer2);
      pst.setString(11, scanner1);
      pst.setString(12, scanner2);
      
      int rs=pst.executeUpdate();
            if(rs>0){
                
                
              %>
              <%
%>
              <h1>Thankyou For Filling the form</h1>
<% 
                
                
                
                
               
            }
            else{
              %>
              <h1>The form is already filled from this device.Thankyou anyways!!</h1>
<% 
             
                
            }
     
     
    }catch(Exception ex)

    {

       %><h1>The form is already filled from this device.Thankyou anyways!! </h1>
       <%=ex%>
       <%
          };

%>
