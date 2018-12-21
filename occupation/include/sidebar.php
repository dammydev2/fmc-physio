<?php include("css.php");?>
<!-- Sidebar Holder -->
<nav id="sidebar">
    <div class="sidebar-header">
        <h5>
            <a href="index.html">Occupational Therapy</a>
        </h5>
        <span>M</span>
    </div>
    <div class="profile-bg"></div>
    <ul class="list-unstyled components">
        <li class="active">
            <a href="index.html">
                <i class="fas fa-th-large"></i>
                Dashboard
            </a>
        </li>
        <li>
            <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false">
                <i class="fas fa-laptop"></i>
                Assessment
                <i class="fas fa-angle-down fa-pull-right"></i>
            </a>
            <ul class="collapse list-unstyled" id="homeSubmenu">
                <li>
                    <a href="add.php">Occupational theraphy</a>
                </li>
                <li>
                    <a href="Mental.php">Mental Health</a>
                </li>
                <li>
                    <a href="sub.php">Subsequent Mental Health</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="#pageSubmenu1" data-toggle="collapse" aria-expanded="false">
                <i class="far fa-file"></i>
                Print
                <i class="fas fa-angle-down fa-pull-right"></i>
            </a>
            <ul class="collapse list-unstyled" id="pageSubmenu1">
                <li>
                    <a href="print-theraphy.php">Print Occupational Theraphy</a>
                </li>
                <li>
                    <a href="print-mental.php">Print Mental health</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="query.php">Query Diagnosis</a>
        </li>
        <li>
            <a href="../index.php">Logout</a>
        </li>
    </ul>
</nav>