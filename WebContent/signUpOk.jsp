<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Camping Easy</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link href="style.css" rel="stylesheet">

    <!-- Responsive CSS -->
    <link href="css/responsive/responsive.css" rel="stylesheet">
    
    <!--  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" />


   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

  <script type="text/javascript">
  
   $(function(){
    
     var getUser = new RegExp("^[a-zA-Z0-9]{3,16}$");
     var getpwd = new RegExp("^[a-zA-Z0-9]{8,16}$");
     var getPhone = new RegExp("^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$");
 
     var idCheck = false;
     var pwdCheck = false;
     var pwd2Check = false;
     var phoneCheck = false;
     
     
     
     //ID 유효성 검증
     $('#id').on(
         {
             keyup : function(){
                 if(getUser.test($('#id').val()) != true) {  
                     var ment = "잘못된 형식으로 입력하셨습니다.";
                         $('.ckid').text(ment);
                         $('#id').css("border","2px solid #F7819F");
                         idCheck = false;
                 } else {
                     var ment = "올바른 형식으로 입력하셨습니다.";
                        $('.ckid').text(ment);
                        $('#id').css("border","2px solid #9F81F7");
                        idCheck = true;
                 };
         }, 
           blur : function() {
               $('.ckid').empty();
           }
     });
     
     
     //PASSWORD 검증
     $('#pwd').on(
             {
                 keyup : function(){
                     
                     if(getpwd.test($(this).val()) != true) {  
                         var ment = "잘못된 형식으로 입력하셨습니다.";
                             $('.ckpwd').text(ment);
                             console.log($('#pwd').val());
                             $('#pwd').css("border","2px solid #F7819F");
                             pwdCheck=false;
                     } else {
                         var ment = "올바른 형식으로 입력하셨습니다.";
                            $('.ckpwd').text(ment);
                            $('#pwd').css("border","2px solid #9F81F7");
                            pwdCheck=true;
                     };
             },
               blur : function() {
                   $('.ckpwd').empty();
               }
 
     });
     
     
     //PASSWORD 일치여부 
     $('#pwdcheck').on(
             {
                 keyup : function(){ 
                        if($('#pwdcheck').val() != $('#pwdcheck').val()){
                            $('.ckpwdcheck').text('암호가 일치하지 않습니다');
                            $('#pwdcheck').css("border","2px solid #F7819F");
                             pwd2Check = false;
                        }else{
                            $('.ckpwdcheck').text('암호가 일치합니다');
                            $('#pwdcheck').css("border","2px solid #9F81F7");
                             pwd2Check = true;
                        }
             }, 
                     blur : function() {
                   $('.ckpwdcheck').empty();
               }
     });
     
     
    
    //휴대폰 번호 검증 
     $('#hp').on(
             {
                 keyup : function(){    
                     if(getPhone.test($(this).val()) != true) {  
                         var ment = "잘못된 형식으로 입력하셨습니다.";
                             $('.ckhp').text(ment);
                             $('#hp').css("border","2px solid #F7819F");
                             phoneCheck = false;
                     } else {
                         var ment = "올바른 형식으로 입력하셨습니다.";
                            $('.ckhp').text(ment);
                            $('#hp').css("border","2px solid #9F81F7");
                            phoneCheck = true;
                     };
             },
                 blur : function() {
                 $('.ckhp').empty();
                    }
     });
    
    
    $('input[type=submit]').click(function(){
        
        if(idCheck && pwdCheck && pwd2Check && phoneCheck)
        {    
            return true;
        }else {
            alert('입력되지 않은 빈칸이있습니다. 확인해주세요.');
            return false;
        }
    });
 
 
});

</script>


</head>

<style>
   .container{
      text-align: center;
   
   }
   
   button{
     background-color: #6b8e23;
   
   }
   
   section {
   padding-top : 200px;
   }
   
   
    joinform {
     display: block;
     width: 10%;
   } 

   article {
   margin-bottom: 10%;
   }   
   
   signup-img{
   		width: 100px;
   		height: 100px;
   
   }
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   
<jsp:include page="/common/top.jsp"></jsp:include>
 <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/hero.jpg)"> 

<section>
<article class="container" style=" height: 80%;">
   <div class="page-header">
      <h1>회원가입 완료</h1>
      <br>
      <br>
      <div style="margin-left: auto; margin-right: auto;">
      <p style="text-align:center;"> 반갑습니다. 회원가입이 완료되었습니다.</p>
      <hr>
       </div>
       <div>
      <img id ="signup-img" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAPsAAADJCAMAAADSHrQyAAABHVBMVEX///+kglE6n0iVyleim5CGf3FqSywdZFCTyVMynEEsmjyt1rM2nkWTyVShzqaRyFDw9/H4/PSv14FxuHv2+/fX7Nr1+u3O5rN9vYXe7uBAoU2EwIzC4cchmDSZzF6hfkrr9uzb7Mq324708/IAXEbQ59NLqFiNxkfv9+ZlRCHz7+np9N2j0W/i8NOr1Xxfr2nI46vh3NZiPxbY1dHe08O1sanLyMJTqV6UyZvW6r++3pprtHR5XkSbiHa5q5/b2dWwkmi7o4DNu6LDvrjd0cGpiVvDrY+PiXzd5+TF1M+ctq5cjoC22Lp8YkqtnI1dOAaJcl2dinlxUzTQv6malImLhHd9dWV4opUzcl9Ifm65ycRxnI+SraSTtawAUjkdZTP+AAASRElEQVR4nO1ciXbayBKVEU4kISEEYl/MYhazEy8IyJs4duzYCZk3iT2JnWTe/3/Gq+qW0IJEcCYnIFt35sTQakTfrrpV1S0JhgkQIECAAAECBAgQIECAAAECBAgQIECAAE8XJ5sewOZw8unJkh99OPgw2vQgNoPafw6eHfyntulhbAR/Hjx79uzgz00PYxM4f/EM8eIJSn708hnFyycneRQ7xcFfT03yfxrUn57kz//7zMR/zzc9nN+J0adnVnx6QpJv/3Vg437wV3vTQ/pt+PjimR0vPm56SL8Lx07qQP6PTQ/q98Ah9qckeafYn5Dkax/dqAP5j4+/xPnDnTqQf/SSH9mo2988csm3X1roHnwYfbC+fdyrGrvYP50wJ9aY/7g3MmxiJwJfbnmkOLEWNQe0lrN5wuPayBhZ0nb7pZX6S3DwNyCDlzYZWCR/9er3D/dXohY+X2jY3K4gLA+B+h6QP/SQfC2862/5H4fDCzdekvboYu8C7HzsLvnz3d2wn8mfh8PhW911z21i/xMkcLq3s3fatu3hgOT1jYzDz7u7u8ebG/q/xWGYgFjPtoI5+ABtr/d2dnb2XoN3f1iWfPvtLsK3sa9GqYePa06xYwl3A9Tx/xtHsUckD2In+NunXl871rnfnpPrTxZ+0HC0gw5/sbNzcQR6sPkExoDPlPvurT/Jn4cXgJh+aN+YRbHvHOkzYN+2hc4nuwv4UvKHYQvAen8YsY5syIPY986g1+UelfxiUf8CJ+Zvk7sfJd+2UkfJm4oHO59hiEd3JsEeJqFtUbshdh2+W+HUwnacmxs2J0TsO3uU0xFGe5D8ie4TMDHHNuq7b/0m+XMHdyJ5W2a/YWpHNzXq9abk7WL3peQPndQNyS/Eftk+O4V/a3QidMnjdm3bSd1nkh8tUydZ/uPBJ2ppSG17tLRpQ2kLfy+B9Cfcpq/dLnPf9dGqxil2i+TPdYUbQPJnWOJglgex145dqPtJ8ue3ruRBy20U+86Og/wFkEfJt13ETvDZN5I/cWUOwMjefr23Yyd/2h7t0TkAsbhSB/jkUu0rL+phtN6lgzqwvhiR2h4kz4S9uP99uGla68Bd7Ibd3yxRR8sfoTPgRsYrL+7+kPyxJ/UThsR0F5yeYfvpiOxYeCC8aWI/hqfYSZx3it3Axake9pxFnQVbH+9WiL3mJna781965HdfSN5b7Ldtd7HbyYPkR5+9yG+55P/w5A5GG/2AOWLkleIJ+U3TW4UT96LmB2K3Gv50leS3ucT5V2JfR/K7Wyv5tid1XMTdrEOd7l26LOUMr9/SjYyad2aHddhoPep0T8Nb8lu6d7la7Kdrc/eh5F22K0yx19YSu07+UnVu2VnJb+NGxujcy+drZG9yfZC9y7eucr89PtxOp6+9Og+7+P0rx3bFGuSPwI2c9t69PT55tZ3Ey+Tf2uHxrZ3+7clDxK5zJ5I367vPn3fDJyOd99X15ki6Q9UaWlnFV7UTm++fg9jXKGoc5F9bdunf3p7rmU2tXX+52/++SZ6uiAqCMJtnCf22Sf/4oWLXyaPkbz/vvg0fn9A7N9Sr63fv9/f3n++/2yhPN0SEUIgXxvl5Gd/VRlT6t6MHi10njxsZx4e6o6vX777dP99/jthC7gXgHgqJfGicKZCG2uiYit19u2Il8b29ncvFma/+eX9/pxNH7l83RdETdT5EIfJFUUuWsa32ar0VjJ33xenrG13gtauv3+7Q0a3YuljHJBsGeaAviINInbaPXu89oKzZu3h9c6TfmnX19fv75w7egLvt465mM0VeXNDn+UYiGsMDtdHZxTr0wdEvLo/aeia7/v7+/vkSb8T91SZpeiGbsdgefJ/nB/MYCfyjy9OdFfRhatDRdXvXrv65d/r5AvvPv2xnfcPUMyELewz8Da1QxiPtN5en7taH1tPLmxGZIyhcvn6/9+INzO++fVU3SdADhTn8oxZmgmhlj9LXaOBvv1mWPjg6BDZD4O++v7/zJg42f3e1jczB5rkZCW+FsWizPTh/bhwtkz7tm9Mdgz/+PT0zKlX1+os1kbkRv/+6pd4Oox/zQiKJdpnPeJvt0frCQK/5js5eo7UhoJ+9cVRsK7B//4WE91SlupWWz/Ag9jzavhwZCA72QL+h13zto0vgrTt67PrdlxUCp8T377+S4N4Z9pvVjfFbhblA/DtfhtexiLDMHmq+vF7z0U/EoFJd6eiU+bdr0r9S7cpcc7Ihdquh8pShkM/iu+jY6fm05ssnY7T/P3f/+98PeKPK36GTq610qclJLCttpcsTpycQclFkn402BCd5MjezSJ3wAZmvNvr+3ZevOFFKb1qSgTjLytvp8sZyhvAbRJFdVuOXbU9rvkgZPxG7/u6d1IyUpqTjOnPgXtkoQ2+UB7xp3QapaMuZnBt7ERpnBeq+19/cJL///D2pYtTOtMRxrA6un9oowxWIWHhCXCdhPZnP8cvkie/n8nXsgSHvzs5+//47SWmtSr9pmJxwT2+Q3WrE5ry1oBcSETCdWs8Iruyx4p9FSeBXr76a0jdT2rRrmhwhdTubJbgSWVtJy4cGSE2tDzzYg/RzA1rzwQqGLFghpV2RlDYxVW5gayMdhRq1ubgoDIisC4mQB3voUjRqPqhr3/+DxBcpzcF9a9WuozCwZTZeyGBGizkXOXb6jXwB0yJDTK5Upksm94HZEeW8nSWfy2ChG5s3VrHnGxr9uDLsuzJnJXab1Q6YI81Cw+bgENIzxKqRsejOHlJigmhD6UxZmXMhvt1BnqI8wLyezThI8qKG7GMuixyUxUAjy9/WBFKaO/Gtzu0GCsTG6twZ2YUxYV+O5hybG1DjUq0vpTQH920t6SzIQFEDf5IDR0EHSzwN3bqshcwj8CpD1vzMpF9aDuz+CnTg12O+iOtYR7YjAS0XIYucfENf8oXoXq7ScU1p1jgnd5UN81oLhRysZbCmKYyd6zhRGNNCFxc5UNMWCHOPlGaxebM73fIYbyDKQ16LMhjyljcwxEEEjqjJhBgl120hpbGrmEtyk6v2tj7MLZAXsKBLwqt5Y6mcA3vP9d0LWJhXZa+URuKbXOpPe5uk8mCoCbwom8OVTD2xRB5SGt25ak3ismdKQ4uz/WHFFzK3IosreZHHkBeL2vxeROZl7LM6pYGrd4cd6uqVia8mgJAP8Q00cNKs5nixQTbzGHXSZz0Du8Rxpe60RU6EexdbvXJ1QXaM5MWiVgbTayGRCD1Et6qUzhBS2gqNx4dU460edGx2W5sk8jNI0g0sHi/WqIUcpjStTlNa1TulSbIcn3SIi6cmw74kS3LfZ1ZHZOlaVs92iZCR0rpezCVOlrvpFtV2ZUr7yX3fWR2h5nnq6rOk3gIprelFXOa61TSJbUoKMh/tJ3FVX4U5EyrROQT2OXm7IqWBxquTjt5r2jW6SexwSy9FrIFCTvhhSkNXj0+oqyuTaldaeIZc2s4LUGuiTBauwAmIu+7FyGy3ShmqyqQvWXpJ7PYv2H8IpeeR0iCod6dU42pnUmVtnSDsbXrgvwATtulicolrlqYVGsQ7abzEag8AVV/GdyfUXt+pdHhfiuuleirdL3H26M9JXX8tYFahEmfNCC/h4oxuQCmddL8pOyIB1HU+2J5aH0plSuM3anxYoXm8l44vbcpCnp/6b+32A8CihG3KTdZYnHWG/ZJDChIs3krTzmNjTtEb0vpFIfNgc3XI8pzv9ikejlS627Qwl7C4wRCQ7j1Oi1uhdHqTabzfZWWo2qG26cenk14n5d/q9eFQGRXBPCXOAQIECBAgQIBtw3Il4mx5HLVKXdPwsoqJeWI8HuiPPRJktQG05JPePdRCxIosnNV8R/plFp/O5suMOrf1N76+ns/rQynn8/h8QtLsM4+Z36Lfo1u2HLUxWBvRoiCatJjkoMiLosgXE1naENOgA7bot1Et94A+s6Jgojhn1MyioTiDUc6KY/0pwqxYnJXLA1t//RATKfI8HUq2yAsRMjYDjSwTM05aFMkN3AXzaM44xcMQEUI5k3t9zONVVF4M8QNCLYb3y/MC3lQkjLNuPbBTAmdDv+1AFOZ4xYK+hjlKMIwmhPgx+ZIkfLqYLw+s/U3uQihkcA/xEdpAzyKOs3Qo9KIfj7fpFcyjjV/BHYYmNLSIluOBGjZoPF5ziUbywBcMig8LYY856TFbkzs+SkpmKjuGKctlCffQg7gPFtxFAW96yP5y7mAgAa+skcEX4duTxZBILaYmtJi9hxAqzq1nikKDfq8FfJxPxMxDZSQ/TiYFq7fAV+RsMdONe24hLOTOZ1RqDz5PuAs/x9mNuzomZiKAlzMyPtv5LT1U2sMEci/rx/K8OCuT9SttwAu2/CBnpc5keHGJOwgXP5M0udcXZ0HudEJF4nLIvWD5jn/HPdkQF0zngjguMwPwJ+Sig0nmRCFp6+HFPdRIZBB6OkiCt4Of8w3zE27cQ4k8fCaf4Bc+Txoymo17TtS5izNyNP8LuBdy4mJsWUFsJGNg2wy8meUagNxAXerhzT3EIzBc0945VKdpdQ/uIvkUflrnTs8ys3KvQ+jMUL3T7rlfwz1nY1YG7jipYwG+QeTHD+FOhiUsuINPwVBnP+LOk5zlxV0cROYQZsVQsUC506O/gnsWfL6waBfHMVA98fl8IpGZQaJRszlTFVHSw4u7OJgXEDrZOvo8jHVQXs09H0VoC5/PRclZ6pQ7PneK6ZXMBXDn6dEC83OwxXmQ91gfPdUUfB3OBmo9aUzGwOyRsJ7Jzt0W55l6A7UewiC1IO8a61bHeZLTDPcB7sV/H+frMQp84lNIZFVGxbiMBs5CPAnhXYJqGUw5tvYYO1LAUpzP0pMivXqRsM4aed6T+3KOW4yNcM8NZuBAIZJbSZxXjaM/yT00SxBApZ0AP2rkoxmoXAQSPSGfi/xA0/INgdYyM2cPD+6hhn5WTbc6ci6MedPt1+JuGRuJdVkVTiaOdbuLA3o0k2V+BpbgCmfMDgSRVKyikCBDjOUF0WghGW2phxd3/aQoTajr9OSGtyAbwdKFu7jM3RybEefxTt4EY43z/M/WdUXeAM5mDKIoxvRc1BhWpEGiqdjQqGfF8rRHI+qoKbQib3IXjJMKOMxszjB2XVxEu4wgiDZnXeZuGxuuZZB7bADLmSiuZRZHf5J7PboAXUzWo1pei1icqDzX8raWpR4UBS2q6dOhFsyzEm0mF73ri1dzLWqfviysRvX51VfCtrGpc02bkwUcLLvhk1nnyH8JlorEpbLxcexdBAgQIMAPoBggUU9VUinF1gyw908pqvk6pVhPpNK/KZ/clTDpxyn6eLdUb9otdeMTlekYzYCp5YbJDnbQ7zVJpeOlUneo31mXqvb72N6rds3G7Ua6yeFNJLKMP8cyKckc/CcPmUoTmjiOHLM8DdDpYqNcwnlqxWkHenOdUuW4ZoWeAhv9QD4ts2wJIU2AGceW+l1W4iY9bGTpIfOeeKUqs6VuSeJK8KYrS/AGOrMppCyxLHBvdTkJe8jdDXJaF2mZq4JsASqT5rg4SHXI6k1VTh7aJN0Dk/eYVkmSesykybLgKj3gOWWUEt5WDNwrTfylB5wBH9xwmJbNR1fTnNSfKIzSq/RI1KrKsv228E61OoRVb58DJ4GJmWLbRJa6CtNvgr8Ad5xKaBzK3PB3svg5pGHoU0QHqJXQYacLvsDdcXe0gjVxC/y8o8AEEKGnulypw6TTShz1PmkS7lOZTsx2A/QukVCHRColDHVNOU2z2DJ3RAq8vIpuXSK3Hqb6HAl9DOHegWBQrUxlXzwIncboBSgRI7bSVYjTkjw0fH6Ze6/Lyf0Umpv+qAPanXyWcFemMt58yLL+sDsXT7UAwLYzqbSUViXOSjRFuXEfAvU4Ho1zNBh0QCekACDcGWUoN5txSHi+0DsIlF6ugAglTxW0pMRZuauTRXXT6UNio6yGMvk1DwXmgro35Q5poaVA8N/2X/pAoM8bdV0PxdrrDUtcl5DVuU/AkDTPdcCbpT5GxhSmNYmdTiHLy5Qm4a5OwehxWfKD3EmswwBHfmZv2IS4x8HIqWl17sMmp5dpvSZ5QATQwsAIHUHdxg+a6LEO60HJH88IppsSBfmJQShrEENbnIdCVqfX0ztzElLrxLFv1yhi4jL6fGcKc1ka+uKZKTVlgK7jKun04kEIVXEuyBad9be9Xst6jE5ZsA0WIECAAAECBAgQIECAAAECBAgQIECAAAECBAjga/wfFE+DGWUogTQAAAAASUVORK5CYII=" style ="width:100px; height:100px;"alt="왜안먹지">
      </div>
      <p style="text-align:center;">짝짝짝! 환영합니다!</p>
      <p style="text-align:center;">Easy Camping과 함께 즐거운 캠핑을 즐겨보세요.</p>
      
   <button class="btn dorne-btn" style ="width: 200px;"><i class="fas fa-sign-in-alt"></i>&nbsp;&nbsp;로그인</button>
   <button class="btn dorne-btn" style ="width: 200px;"><i class="fas fa-home"></i>&nbsp;메인으로</button>
     
   </div>
   <!--    form roll="form" 에서 속성들 role : 폼 양식이 있는 곳을 알려주거나 변경된 경우 joinok.jsp  -->
   


</article>
</section>

</body>
<jsp:include page="/common/bottom.jsp"></jsp:include>
</html>