<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
    <title>Document</title>
    <style>
        #bc{
            background-color:;
        }
    </style>
</head>
<body>
    <div class="container px-4 px-lg-5 my-5">
        <div style=" margin-left: 85px; margin-top: 45px; width: 1000px; height: 1150px; border: solid 1px black; text-align: center;">
            <div style="letter-spacing: 70px; margin-left: 60px; margin-top: 25px; background-color: rgb(255, 255, 249); text-align: center; color: black; font-size: 35px; font-weight: bolder; vertical-align: top;" >
                    휴가신청서
                    <!-- reportVaca -->
            </div>
            <hr >
            <div style="margin-top: 50px; margin-left: 45px; width: 900px; height: 950px; border: solid 1px black;" >
                    <div style="width: 250px; height: 700px; border-right: solid 1px black;">
                        <div style="width: 900px; height: 100px; border-bottom: solid 1px black;">
                            <div id="bc" style="text-align: left; font-weight: bold; font-size: 20px; padding-left: 70px; padding-top: 34px; letter-spacing: 70px;">
                                소속
                                <div style=" margin-left: 180px; width: 650px; height: 100px; margin-top: -64px;">
                                    <textarea style="border: 0; text-align: center; width: 645px; height: 97px;">DEPNAME</textarea>
                                    <!-- DEOARTMENT.DEPNAME = 부서번호 -->
                                </div>
                            </div>
                        </div>
                        <div style="width: 900px; height: 100px; border-bottom: solid 1px black;">
                            <div id="bc" style="text-align: left; font-weight: bold; font-size: 20px; padding-left: 70px; padding-top: 34px; letter-spacing: 70px;">
                                성명
                                <div style=" margin-left: 180px; width: 650px; height: 100px; margin-top: -64px;">
                                    <textarea value="NAME" style="border: 0; text-align: center; width: 645px; height: 97px;"></textarea>
                                    <!-- USER.NAME = 이름 -->
                                </div>
                            </div>
                            
                        </div>
                        <div style="width: 900px; height: 100px; border-bottom: solid 1px black;">
                            <div id="bc" style="text-align: left; font-weight: bold; font-size: 20px; padding-left: 70px; padding-top: 34px; letter-spacing: 70px;">
                                직위
                                <div style=" margin-left: 180px; width: 650px; height: 100px; margin-top: -64px;">
                                    <textarea value="ROLENAME" style="border: 0; text-align: center; width: 645px; height: 97px;"></textarea>
                                    <!-- ROLE.ROELNAME = 직급이름  -->
                                </div>
                            </div>
                            
                        </div>
                        <div style="width: 900px; height: 100px; border-bottom: solid 1px black;">
                            <div  id="bc" style="text-align: left; font-weight: bold; font-size: 20px; padding-left: 70px; padding-top: 34px; letter-spacing: 70px;">
                                종류
                                    <div style="margin-left: 180px; width: 650px; height: 100px; margin-top: -64px;">
                                        <div style="margin-left: 29px; margin-top: 5px;">
                                            <input type="radio" id="mail" name="category" value="1" />
                                            <label for="mail">연차</label>
                                            <input type="radio" id="mail" name="category" value="2" />
                                            <label for="mail">월차</label>
                                            <input type="radio" id="mail" name="category" value="3" />
                                            <label for="mail">병가</label>
                                            <input type="radio" id="mail" name="category" value="4" />
                                            <label for="mail">반차</label>
                                            <input type="radio" id="mail" name="category" value="5" />
                                            <label for="mail">기타</label>
                                        </div>
                                    </div>   
                            </div>
                        </div>
                        <div style="width: 900px; height: 100px; border-bottom: solid 1px black;">
                            <div id="bc" style="text-align: left; font-weight: bold; font-size: 20px; padding-left: 70px; padding-top: 34px; letter-spacing: 70px;">
                                사유
                                <div style=" margin-left: 180px; width: 650px; height: 100px; margin-top: -64px;">
                                    <textarea value="text" style="border: 0; text-align: left; width: 645px; height: 97px;"></textarea>
                                </div>
                            </div>    
                        </div>

                        <div style="width: 900px; height: 100px; border-bottom: solid 1px black;">
                            <div id="bc" style="text-align: left; font-weight: bold; font-size: 20px; padding-left: 70px; padding-top: 34px; letter-spacing: 70px;">
                                기간
                                <div style=" margin-left: 150px; width: 650px; height: 100px; margin-top: -64px; letter-spacing: 25px;">
                                    <div class="d-flex" style="font-weight: bold; margin-left: 90px; margin-top: 35px; font-size: 15px;">
                                        <input type="number" style="width: 60px; border:0 solid black; text-align:right" value="2022"/>
                                        <div>년</div>
                                        <input type="number" style="width: 40px; border:0 solid black; text-align:right" value="12"/>
                                        <div>월</div>
                                        <input type="number" style="width: 40px; border:0 solid black; text-align:right" value="30"/>
                                        <div>일</div>
                                        ~
                                        <input type="number" style="width: 60px; border:0 solid black; text-align:right" value="2022"/>
                                        <div>년</div>
                                        <input type="number" style="width: 40px; border:0 solid black; text-align:right" value="12"/>
                                        <div>월</div>
                                        <input type="number" style="width: 40px; border:0 solid black; text-align:right" value="30"/>
                                        <div>일</div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div style="width: 900px; height: 100px; border-bottom: solid 1px black;">
                            <div id="bc" style="text-align: left; font-weight: bold; font-size: 20px; padding-left: 45px; padding-top: 34px; letter-spacing: 15px;">
                                비상연락망
                                <div style="margin-left: 205px; width: 650px; height: 100px; margin-top: -64px;">
                                    <input type="call" style="border: 0; width: 645px; height: 97px;  text-align:center"/>
                                </div>
                            </div>
                        </div>
                        <div style=" width: 900px; height: 250px;">
                            <div style="font-weight: bold; margin-top: 45px;">
                                위와 같이 휴가를 신청하오니 허락하여 주시기 바랍니다.
                            </div>
                            <div class="d-flex" style="font-weight: bold; margin-left: 240px; margin-top: 45px;">
                                <div><input type="text" style="width: 100px; border:0 solid black; text-align:right" value="2022" />년</div>
                                <div><input type="text" style="width: 100px; border:0 solid black; text-align:right" value="12"/>월</div>
                                <div><input type="text" style="width: 100px; border:0 solid black; text-align:right" value="31"/>일</div>
                            </div>
                            <div style="font-weight: bold; margin-top: 50px; margin-left: 150px;">
                                신청자 : <input type="text" value="홍길동" style="border:0 solid black"/>
                            </div>
                        </div>


                    </div>
            </div>

        </div>    

    </div>
</body>
</html>
