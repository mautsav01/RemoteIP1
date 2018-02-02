<%@page import="java.net.InetAddress"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  
    <br><br><br><br>
    <center>
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" margin-down="100">Click Here to Fill the Form</button>
</center>
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">System</h4>
        </div>
        <div class="modal-body">
          <form action="_newjsp.jsp" method="post">
   
   
   <div class="form-group">
      <label for="text">Full Name:</label>
      <input type="text" class="form-control"  placeholder="Enter Full Name" name="fullname" required>
    </div>
   
   <div class="form-group">
      <label for="text">Department:</label>
      <input type="text" class="form-control"  placeholder="Enter Department You Work On" name="department" required>
    </div>
   
   <div class="form-group">
      <label for="text">Degination:</label>
      <input type="text" class="form-control"  placeholder="Your Degination Please" name="degination" required>
    </div>
    
    <div class="form-group">
      <label for="text">Phone Number:</label>
      <input type="text" class="form-control"  placeholder="Mobile" name="phonenumber" required>
    </div>

              <div class="form-group">
      <label for="text">Computer Password:</label>
      <input type="text" class="form-control"  placeholder="Password you use while logging in the computer" name="password">
    </div>
              
   <div class="form-group">
   <h1>In case of use</h1>
      <label for="text">Printer :</label>
      <input type="text" class="form-control"  placeholder="Please View the name of printer" name="printer1">
    </div>
              <div class="form-group">
   
      <label for="text">Printer :</label>
      <input type="text" class="form-control"  placeholder="Please View the name of printer" name="printer2">
    </div>
   
   
   <div class="form-group">
  
      <label for="text">Scanner:</label>
      <input type="text" class="form-control"  placeholder="Please View the name of Scanner" name="scanner1">
    </div>
   
   <div class="form-group">
  
      <label for="text">Scanner:</label>
      <input type="text" class="form-control"  placeholder="Please View the name of Scanner" name="scanner2">
    </div>
   
   <button type="submit" class="btn btn-info btn-lg">Submit</button>
  </form>
       </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
</div>
  

</body>
</html>