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
    <script defer src="/js/Apology.js"></script>

</head>
<body>
    <div class="container px-4 px-lg-5 my-5">
        <div style=" margin-left: 85px; margin-top: 45px; width: 1000px; height: 1300px; border: solid 1px black; text-align: center;">
            <div style="letter-spacing: 70px; margin-left: 60px; margin-top: 25px; background-color: rgb(255, 255, 249); text-align: center; color: black; font-size: 35px; font-weight: bolder; vertical-align: top;" >
                   시말서
            </div>
            <hr >

            <div  style="border: solid 1px black; margin-top: 25px; margin-left: 45px; width: 900px; height: 110px; ">
                <div style="height: 55px; border-bottom: solid 1px black;">
                    <div class="d-flex">
                        <div style="width: 225px; height: 55px; border-right: solid 1px black;">
                            <div style=" font-size:  16px; padding-top: 15px; font-weight: bolder; letter-spacing: 70px; padding-left: 50px;">
                                성명
                            </div>
                        </div>
                        <input style="width: 220px; height: 50px; border: 0; text-align: center;" id="ApologyName" value="홍길동"/>

                        <div style="width: 225px; height: 55px; border-right: solid 1px black;  border-left: solid 1px black;">
                            <div style=" font-size:  16px; padding-top: 15px; font-weight: bolder; letter-spacing: 40px; padding-left: 50px;">
                                부서명
                            </div>
                        </div>
                        <input style="width: 220px; height: 50px; text-align: center; border: 0;" id="ApologyPartname" value="구디아카데미"/>
                    </div>    
                </div> 

                <div style="height: 55px;">
                    <div class="d-flex">
                        <div class="d-flex">         
                            <div style="width: 225px; height: 55px; border-right: solid 1px black;">
                                <div style=" font-size:  16px; padding-top: 15px; font-weight: bolder; letter-spacing: 70px; padding-left: 50px;">
                                    직책
                                </div>
                            </div>
                            <input style="width: 220px; height: 50px; border: 0; text-align: center;" id="ApologyRes" value="홍길동"/>
    
                            <div style="width: 225px; height: 55px; border-right: solid 1px black;  border-left: solid 1px black;">
                                <div style=" font-size:  16px; padding-top: 15px; font-weight: bolder; letter-spacing: 40px; padding-left: 50px;">
                                    작성일
                                </div>
                            </div>
                            <input style="width: 220px; height: 50px; text-align: center; border: 0;" id="ApologyWDate" value="구디아카데미"/>
                        </div> 
                    </div>    
                </div>    
            </div>

            <div style="margin-top: 20px; margin-left: 45px; width: 900px; height: 1010px; border: solid 1px black;" >
                <div style="font-weight: bold; margin-top: 15px;">
                    위 본인은 직원으로서 제 사규를 맡은바 책임과 의무를 다하여 성실히 복무하여야함에도<br>
                    불구하고 아래와 같이 회사의 관련 규정을 위반하였는바 이에 시말서를 제출하고<br>
                    그에 따른 처벌을 감수하며 차후 본건을 계기로 과오의 재발이 없을 것임을 서약합니다.
                </div>
                <div style="border: solid 1px red; margin-top: 15px; height: 50px; text-align: center; font-weight: bold;">
                    <div style="padding-top: 10px; font-size: 20px;">
                        위 반 내 용(상세히 기술요함)
                    </div>   
                </div>
                <div style="border-bottom: solid 1px black; height: 600px;">
                    <textarea style=" width: 895px; height: 595px; border: 0;" id="ApologyText"></textarea>
                </div>
                <div style="font-weight: bold; text-align: center; margin-top: 25px;">
                    상기 기록사실에 허위가 없습니다.
                </div>
                <div style=" width: 900px; height: 250px;"> 
                    <div class="d-flex" style="font-weight: bold; margin-left: 240px; margin-top: 45px;">
                        <div><input type="text" style="width: 100px; border:0 solid black; text-align:right" id="ApologyY" value="2022"/>년</div>
                        <div><input type="text" style="width: 100px; border:0 solid black; text-align:right" id="ApologyM" value="12"/>월</div>
                        <div><input type="text" style="width: 100px; border:0 solid black; text-align:right" id="ApologyD" value="31"/>일</div>
                    </div>
                    <div style="font-weight: bold; margin-top: 50px; margin-left: 150px;">
                        신청자 : <input type="text" value="홍길동" style="border:0 solid black" id="ApologyWN"/>
                    </div>
                </div>
            </div>

        </div>    

    </div>
    <div style=" text-align: center;">
        <button id="addSorry">제출하기</button>
    </div>
</body>
</html>