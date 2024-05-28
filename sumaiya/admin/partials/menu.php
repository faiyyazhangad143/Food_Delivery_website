<?php 

    include('config/constants.php'); 
    include('login-check.php');

?> 
<html>
    <head>
    <style>
    .tbl-full tr td,
    .tbl-full tr th {
        padding: 10px; /* Adjust the value according to your preference */
    }
</style>
        <link rel="stylesheet" href="../css/admin.css">
        <title>
            food order website project
        </title>
       
     
    </head>
    <body>


         <div class="menu text-center"> 
            <div class='wrapper'>
                <ul>
                    <li><a href="index.php">Home</a></li>
                    <li><a href="manage-admin.php">Admin</a></li>
                    <li><a href="manage-category.php">Category</a></li>
                    <li><a href="manage-food.php">Food</a></li>
                    <li><a href="manage-order.php">Order</a></li>
                    <li><a href="logout.php">Logout</a></li>
                  

                </ul>
            </div>
        </div>