<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Register - SB Admin</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>

    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">ADMIN ACCOUNT CREATE</h3></div>
                                    <div class="card-body">
                                        <!-- 전송 FORM -->
                                        <form method="POST">
                                            <div class="row mb-3">
                                                <!-- id -->
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0" style="display: flex; float: left;">
                                                        <input class="form-control" name="admin_id" id="admin_id" type="text" placeholder="Enter your admin_id" style="width: 345px;"/>
                                                        <label for="admin_id">ID
                                                        </label>
                                                        <input type="button" class="btn btn-primary btn-block" id="admin_id_check" onclick="adminIdCheck()"
                                                        value="check" style="margin-left: 10px;"/>
                                                        
                                                    </div>
                                                </div>
                                                <!-- name -->
                                                <div class="col-md-6">
                                                    <div class="form-floating" style="width: 268px; float: right;">
                                                        <input class="form-control" name="admin_name" id="admin_name" type="text" placeholder="Enter your admin_name"  />
                                                        <label for="admin_name">NAME</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" name="admin_email" id="admin_email" type="text" placeholder="name@example.com" />
                                                <label for="admin_email">Email</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" name="admin_tel" id="admin_tel" type="text" placeholder="name@example.com" />
                                                <label for="admin_tel">Tel</label>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" name="admin_pw" id="admin_pw" type="password" placeholder="Create a password" />
                                                        <label for="admin_pw">Password</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" name="admin_pw_check" id="admin_pw_check" type="password" placeholder="Confirm password" />
                                                        <label for="admin_pw_check">Confirm Password</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid"><a class="btn btn-primary btn-block" href="login.html">Create Account</a></div>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small"><a href="login.html">Have an account? Go to login</a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2021</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script>
        
        /*
        ID check standard
        1. 아이디 중복일때
        2. 아이디 입력값 없을때
        3. 중복체크 후 아이디를 바꿨을때
        */

        </script>


    </body>
</html>
