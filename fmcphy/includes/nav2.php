<?php
include('includes/db.php');
error_reporting(0);
 $username = $_SESSION['username'];
if (isset($_POST['logout'])) {
    session_destroy();
    header("Location:login.php");
    exit();
}
?>

<nav class="navbar-default navbar-static-side" role="navigation">
            <!-- sidebar-collapse -->
            <div class="sidebar-collapse">
                <!-- side-menu -->
                <ul class="nav" id="side-menu">
                    <li>
                        <!-- user image section-->
                        <div class="user-section">
                            <div class="user-section-inner">
                                <img src="assets/img/user.jpg" alt="">
                            </div>
                            <div class="user-info">
                                <div><strong><b><?php echo $username;?></b></strong></div>
                                <div class="user-text-online">
                                    <span class="user-circle-online btn btn-success btn-circle "></span>&nbsp;Online
                                </div>
                            </div>
                        </div>
                        <!--end user image section-->
                    </li>
                   
                    <!--li >
                        <a href="dashboard.php"><i class="fa fa-dashboard fa-fw">&nbsp</i>Dashboard</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-user fa-fw"></i> Patient Data<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="viewdata.php"><i class="fa fa-eye fa-fw">&nbsp</i>View</a>
                            </li>
                            <li>
                               <a href="updatedata.php"> <i class="fa fa-upload">&nbsp</i>Update</a>
                            </li>
                            <li>
                                <a href="Deletedata.php"><i class="fa fa-flask fa-fw" >&nbsp</i>Delete</a>
                            </li>
                        </ul>
                        <!-- second-level-items -->
                    </li-->
                    
                     <li>
                        <a href="start.php"><i class="fa fa-flask fa-fw">&nbsp</i>Patient consultation</a>
                    </li>
                    <li>
                        <a href="report.php"><i class="fa fa-table fa-fw"></i>Check report</a>
                    </li>
                    <li>
                        <a href="query.php"><i class="fa fa-table fa-fw"></i>Query Diagnosis</a>
                    </li>
					<li>
                       <a href="../index.php">Logout</a>
                    </li>
                   
                    
                          
                                   
                    
                  
                    
                </ul>
                <!-- end side-menu -->
            </div>
            <!-- end sidebar-collapse -->
        </nav>