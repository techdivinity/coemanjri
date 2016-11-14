<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">
        <!-- App Favicon icon -->
        <link rel="shortcut icon" href="assets/images/favicon.ico">
        <!-- App Title -->
        <title>Ubold - Responsive Admin Dashboard Template</title>

        <!-- Plugins css -->
       
        <link href="../assets/plugins/timepicker/bootstrap-timepicker.min.css" rel="stylesheet">
		<link href="../assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
		<link href="../assets/plugins/bootstrap-datepicker/css/bootstrap-datepicker.min.css" rel="stylesheet">
		<link href="../assets/plugins/clockpicker/css/bootstrap-clockpicker.min.css" rel="stylesheet">
		<link href="../assets/plugins/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

        <link href="../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/core.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/components.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="../assets/css/responsive.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <script src="../assets/js/modernizr.min.js"></script>

    </head>


    <body>

<jsp:include page="top.jsp"/>
<jsp:include page="menu.html"/>
        <div class="wrapper">
            <div class="container">

                <!-- Page-Title -->
          
              
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card-box">
                           <c:if test="${param.success eq 1}">
                                        <div> success </div>
                                       </c:if>
                            <div class="row">
                                  <form  class="form-horizontal m-t-20" action="AddStudent" method="post">   
                                        
               <div>
                                            <div class="row">
                                        <div style="width: 49%;float: left">
                                            <h5><b>Name: <font color="tomato">*</font></b></h5>
                                            <input type="text" class="form-control"  name="name" id=studentname"  placeholder="Enter student name" id="town"/>
                                        </div>
                                        <div style="width: 49%;float: right">
                                             <h5><b>PRN No: <font color="tomato">*</font></b></h5>
                                            
                                         <input type="text" class="form-control" name="prnno"  placeholder="Enter prn no" id="prnno"/>
                                        </div>
                                    </div>
                                            
                                       <div class="row">
                                        <div style="width: 49%;float: left">
                                            <h5><b>Admission Date: <font color="tomato">*</font></b></h5>
                                            <input type="text" class="form-control"  name="admissiondate" id="admissiondate"  placeholder="Enter  admission date" id="town"/>
                                        </div>
                                        <div style="width: 49%;float: right">
                                             <h5><b>Academic Year: <font color="tomato">*</font></b></h5>
                                            
                                         <input type="text" class="form-control" name="admissionyear"  placeholder="Enter academicyear" id="admissionyear"/>
                                        </div>
                                    </div>
                                            
                                              <div class="row">
                                        <div style="width: 49%;float: left">
                                            <h5><b>Passout Year: <font color="tomato">*</font></b></h5>
                                            <input type="text" class="form-control"  name="passoutyear" id="passoutyear"  placeholder="Enter passout year " id="passoutyear"/>
                                        </div>
                                        <div style="width: 49%;float: right">
                                             <h5><b>Branch: <font color="tomato">*</font></b></h5>
                                            
                                       <select class="form-control"  name="branchname" id="branchname"   >
                                                   <c:forEach var="cat" items="${requestScope.branchname}">
                                                   <option value="${cat.key}">${cat.value}</option>
                                                   </c:forEach>
                                                
                                               </select>
                                        </div>
                                    </div>
                                                  
                                         <div class="row">
                                        <div style="width: 49%;float: left">
                                            <h5><b>Passout Date: <font color="tomato">*</font></b></h5>
                                            <input type="text" class="form-control"  name="passoutdate" id="passoutdate"  placeholder="Enter passoutdate  " />
                                        </div>
                                        <div style="width: 49%;float: right">
                                             <h5><b>Gender: <font color="tomato">*</font></b></h5>
                                            
                                         <input type="radio" name="gender" value="male" style="display: inline"/>Male
                                          <input type="radio" name="gender" value="female" style="display: inline"/>Female
                                        </div>
                                    </div>
                                                  
                                       <div class="row">
                                        <div style="width: 49%;float: right;margin-top: 15px;">
                                            <h5><b>Company: <font color="tomato">*</font></b></h5>
                                            <input type="text" class="form-control"  name="company" id="company"  placeholder="Enter comapany name " id="branch"/>
                                        </div>
                                        <div style="width: 49%;float: left">
                                             <h5><b>City: <font color="tomato">*</font></b></h5>
                                            
                                         <input type="text" class="form-control"  name="city" id="city"  placeholder="Enter city name " id="branch"/>
                                        </div>
                                    </div>
                                                  
                                      <div class="row">
                                        <div style="width: 49%;float: right;margin-top: 15px;">
                                            <h5><b>State: <font color="tomato">*</font></b></h5>
                                            <input type="text" class="form-control"  name="state" id="state"  placeholder="Enter state " />
                                        </div>
                                        <div style="width: 49%;float: left;margin-top: 12px;">
                                             <h5><b>Contact No: <font color="tomato">*</font></b></h5>
                                            
                                         <input type="text" class="form-control"  name="contactno" id="contactnno"  placeholder="Enter contactno" />
                                        </div>
                                    </div>
                                                     <div class="row">
                                        <div style="width: 49%;float: left;margin-top: 15px;">
                                            <h5><b>Email: <font color="tomato">*</font></b></h5>
                                            <input type="text" class="form-control"  name="email" id="email"  placeholder="Enter Email " id="branch"/>
                                        </div>
                                                         <div style="width: 49%;float: right;margin-top: 15px;">
                                                             <h5><b>Course: <font color="tomato">*</font></b></h5>
                                          <select class="form-control"  name="course" id="course"   >
                                              <option>B.Tech</option>
                                              <option>M.Tech</option>
<!--                                              <option>B.Tech(SEM-III)</option>
                                              <option>B.Tech(SEM-IV)</option>
                                              <option>B.Tech(SEM-V)</option>
                                              <option>B.Tech(SEM-VI)</option>
                                              <option>B.Tech(SEM-VII)</option>
                                              <option>B.Tech(SEM-VIII)</option>
                                              <option>M.Tech(SEM-I)</option>
                                              <option>M.Tech(SEM-II)</option>
                                              <option>M.Tech(SEM-III)</option>
                                              <option>M.Tech(SEM-IV)</option>-->
                                              
                                              
                                               </select>
                                                             </div>
                                                              <div style="width: 49%;float: right;margin-top: 15px;margin-right: 0px;">
                                                             <h5><b>Course: <font color="tomato">*</font></b></h5>
                                          <select class="form-control"  name="semester" id="semester"   >
                                              <option>SEM-I</option>
                                              <option>SEM-II</option>
                                              <option>SEM-III</option>
                                              <option>SEM-IV</option>
                                              <option>SEM-V</option>
                                              <option>SEM-VI</option>
                                              <option>SEM-VII</option>
                                              <option>SEM-VIII</option>
                                             
                                              
                                              
                                               </select>
                                                             </div>
                                    </div>
                       
                                                  
                                                  <button type="submit" class="btn btn-warning waves-effect waves-light w-lg" style="float: right;margin-top: 130px;height: 40px;">Submit</button>
                                            </div>
                                    </form>
                            </div>
                        </div>
                    </div>
                </div>



             




                <!-- Footer -->
                <footer class="footer text-right">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-6">
                                � 2016. All rights reserved.
                            </div>
                            <div class="col-xs-6">
                                <ul class="pull-right list-inline m-b-0">
                                    <li>
                                        <a href="#">About</a>
                                    </li>
                                    <li>
                                        <a href="#">Help</a>
                                    </li>
                                    <li>
                                        <a href="#">Contact</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </footer>
                <!-- End Footer -->

            </div> <!-- end container -->
        </div>
        <!-- end wrapper -->



        <!-- jQuery  -->
        <script src="../assets/js/jquery.min.js"></script>
        <script src="../assets/js/bootstrap.min.js"></script>
        <script src="../assets/js/detect.js"></script>
        <script src="../assets/js/fastclick.js"></script>
        <script src="../assets/js/jquery.slimscroll.js"></script>
        <script src="../assets/js/jquery.blockUI.js"></script>
        <script src="../assets/js/waves.js"></script>
        <script src="../assets/js/wow.min.js"></script>
        <script src="../assets/js/jquery.nicescroll.js"></script>
        <script src="../assets/js/jquery.scrollTo.min.js"></script>

        <!-- plugins js -->
        <script src="../assets/plugins/moment/moment.js"></script>
     	<script src="../assets/plugins/timepicker/bootstrap-timepicker.js"></script>
     	<script src="../assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
     	<script src="../assets/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js"></script>
     	<script src="../assets/plugins/clockpicker/js/bootstrap-clockpicker.min.js"></script>
     	<script src="../assets/plugins/bootstrap-daterangepicker/daterangepicker.js"></script>

        <!-- App core js -->
        <script src="../assets/js/jquery.core.js"></script>
        <script src="../assets/js/jquery.app.js"></script>

        <!-- page js -->
        <script src="../assets/pages/jquery.form-pickers.init.js"></script>

    </body>
</html>