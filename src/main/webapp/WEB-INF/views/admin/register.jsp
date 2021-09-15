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
        <link rel="stylesheet" href="<c:url value="/resources/css/admin/css/styles.css"/>"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    
    	<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
    	
    <!-- SweetAlert Lib -->
		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
		
    
    <script>
        $(document).ready(function () {
            var checkPw = false;
            //비밀번호
            var pwd1;
            //비밀번호확인.
            var pwd2;
            var email; 
            var nickname;
            //패스워드가 정규식에 부합하는지 판단하는 변수. 
            var pwdchk;
            //동의 여부 판단 변수 3개
            //참 : 동의 
            //거짓 : 비동의
            var chkAllFlag = false;
            var chkService = false;
            var chkPersonal = false;
          //아이디 중복 버튼 클릭 여부.
            var idChkBtn = false;
          //아이디 중복 여부판단 변수.
            var overlap = false;
            $("#alert-success").hide();
            $("#alert-danger").hide();
            $("#alert-danger-email").hide();
            $("#alert-danger-nick").hide();
            $("#alert-danger-pw").hide();

        });    
        $(function () {
            $("input").keyup(function () {
                //비밀번호 입력란에 들어 있는 값을 각각 가져온다.
                pwd1 = $("#adminPw").val();
                pwd2 = $("#adminPwCheck").val();
                email = $("#adminEmail").val();
                nickname = $("#adminName").val();
                
                //아이디 input 태그를 한번이라도 클리한다면, 
                //overlap 변수를 true 로 변경한다.
                overlap = true;
				
                if(email === "" ){
                    $("#alert-danger-email").hide();
                }
                if(nickname === "" ){
                    $("#alert-danger-nick").hide();
                }
                if (pwd1 === "" && pwd2 === "") {
                    $("#alert-success").hide();
                    $("#alert-danger").hide();
                    $("#alert-danger-pw").hide();
                }
                
                //비밀번호 입력란이 비어있지 않다면.
                if (pwd1 != "" || pwd2 != "") {
                    pwdchk=chkPW();
                    if(pwdchk){
                        $("#alert-danger-pw").hide();
                    }else{
                        $("#alert-danger-pw").show();
                    }
                    //비밀번호와 비밀번호 확인란이 일치 한다면
                    if (pwd1 == pwd2) {
                        $("#alert-success").show();
                        $("#alert-danger").hide();
                        checkPw = true;
                    } else {
                        $("#alert-success").hide();
                        $("#alert-danger").show();
                        checkPw = false;
                    }
                }
            });
            
        });
      //ID 중복 여부를 서버와 통신하여 체그하는 함수.
        //중복 확인 버튼 클릭 시 동
        //만약 응답받은 값이 'no'라면 사용불가.(중복된 아이디 입니다.)
        //만약 응답받은 값이 'ok'면   사용가능.(사용 가능한 아이디 입니다.)
        //사용자가 가입을 완료하기 위해서는 
        //idChkBtn : ture , overlap : false 여야 한다.
        $(document).on('click','#adminIdCheck',function(){
            var adminId = $("#adminId").val();
            console.log(adminId);
            //아이디 입력란이 비어있다면 중복확인을 수행하면 안됨.
           // if(adminId != ""){//begin userId empty check
            	//버튼 클릭했기 때문에 클릭 완료 : true
                idChkBtn = true;
                $.ajax({
                	url:"/idcheck.mdo",
                	type:"post",
                	data:{"id":adminId},
                	success:function(responseData){
                		if(responseData === 'NO'){
                			//버튼 클릭 했으나 중복되었기 때문에 false
                			idChkBtn = false;
                			//중복됨 : true
                			overlap = true;
                			alert("중복되었습니다.")
                			/*Swal.fire({
                  			  icon:'error',
                  			  title:'사용불가능한 아이디 입니다.',
                        });*/
                		}else if(responseData === 'YES'){
                			overlap = false;
                			alert("사용가능합니다.")
                			/*Swal.fire({
                    			  icon:'success',
                    			  title:'사용 가능한 아이디 입니다.',
                          });*/
                		}
                	}
                });
            	//}//end userId empty check
            	//else{
            		//alert("아이디를 입력해주세요.");
            	//}
             });
        
   
                
       
   </script>
    
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
                                        <form method="POST" action="/register.mdo">
                                            <div class="row mb-3">
                                                <!-- id -->
                                                <div class="col-md-6">
                                                    <div id="divInputId" class="form-floating mb-3 mb-md-0" style="display: flex; float: left;">
                                                        <input class="form-control" name="adminId" id="adminId" type="text" placeholder="Enter your admin_id" style="width: 345px;"/>
                                                        <label for="adminId">ID
                                                        </label>
                                                        <input type="button" class="btn btn-primary btn-block" id="adminIdCheck" onclick="adminIdCheck()"
                                                        value="check" style="margin-left: 10px;"/>
                                                        
                                                    </div>
                                                </div>
                                                <!-- name -->
                                                <div class="col-md-6">
                                                    <div class="form-floating" style="width: 268px; float: right;">
                                                        <input class="form-control" name="adminName" id="adminName" type="text" placeholder="Enter your admin_name"  />
                                                        <label for="adminName">NAME</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" name="adminEmail" id="adminEmail" type="text" placeholder="name@example.com" />
                                                <label for="adminEmail">Email</label>
                                            </div>
                                            <div class="form-floating mb-3">
                                                <input class="form-control" name="adminTel" id="adminTel" type="text" placeholder="010-****-****" />
                                                <label for="adminTel">Tel</label>
                                            </div>
                                            <div class="row mb-3">
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" name="adminPw" id="adminPw" type="password" placeholder="Create a password" />
                                                        <label for="adminPw">Password</label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="form-floating mb-3 mb-md-0">
                                                        <input class="form-control" name="adminPwCheck" id="adminPwCheck" type="password" placeholder="Confirm password" />
                                                        <label for="adminPwCheck">Confirm Password</label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="mt-4 mb-0">
                                                <div class="d-grid"><input type="submit" class="btn btn-primary btn-bloack" value="Create Account"></div>
                                            </div>
                                            
                                        </form>
                                    </div>
                                    <div class="card-footer text-center py-3">
                                        <div class="small">
                                        <a href="/login.mdo">Have an account? Go to login</a></div>
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
        <script src="resources/css/admin/js/scripts.js"></script>
        
        <script>
        </script>



        
        <script>

		</script>

    </body>
</html>
