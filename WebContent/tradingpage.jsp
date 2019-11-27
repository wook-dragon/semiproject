<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

 

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link href="style.css" rel="stylesheet">

    <!-- Responsive CSS -->
    <link href="css/responsive/responsive.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>


<style type="text/css">
body {
 background-color:#eee;   
}    

#pinBoot {
  position: relative;
  max-width: 100%;
  width: 100%;
}
img {
  width: 100%;
  max-width: 100%;
  height: auto;
}
.white-panel {
  position: absolute;
  background: white;
  box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.3);
  padding: 10px;
}
/*
stylize any heading tags withing white-panel below
*/

.white-panel h1 {
  font-size: 1em;
}
.white-panel h1 a {
  color: #A92733;
}
.white-panel:hover {
  box-shadow: 1px 1px 10px rgba(0, 0, 0, 0.5);
  margin-top: -5px;
  -webkit-transition: all 0.3s ease-in-out;
  -moz-transition: all 0.3s ease-in-out;
  -o-transition: all 0.3s ease-in-out;
  transition: all 0.3s ease-in-out;
}
</style>


<script>

$(document).ready(function() {
   $('#pinBoot').pinterest_grid({
   no_columns: 4,
   padding_x: 10,
   padding_y: 10,
   margin_bottom: 50,
   single_column_breakpoint: 700
   });
   });

   /*
   Ref:
   Thanks to:
   http://www.jqueryscript.net/layout/Simple-jQuery-Plugin-To-Create-Pinterest-Style-Grid-Layout-Pinterest-Grid.html
   */


   /*
       Pinterest Grid Plugin
       Copyright 2014 Mediademons
       @author smm 16/04/2014

       usage:

        $(document).ready(function() {

           $('#blog-landing').pinterest_grid({
               no_columns: 4
           });

       });


   */
   ;(function ($, window, document, undefined) {
       var pluginName = 'pinterest_grid',
           defaults = {
               padding_x: 10,
               padding_y: 10,
               no_columns: 3,
               margin_bottom: 50,
               single_column_breakpoint: 700
           },
           columns,
           $article,
           article_width;

       function Plugin(element, options) {
           this.element = element;
           this.options = $.extend({}, defaults, options) ;
           this._defaults = defaults;
           this._name = pluginName;
           this.init();
       }

       Plugin.prototype.init = function () {
           var self = this,
               resize_finish;

           $(window).resize(function() {
               clearTimeout(resize_finish);
               resize_finish = setTimeout( function () {
                   self.make_layout_change(self);
               }, 11);
           });

           self.make_layout_change(self);

           setTimeout(function() {
               $(window).resize();
           }, 500);
       };

       Plugin.prototype.calculate = function (single_column_mode) {
           var self = this,
               tallest = 0,
               row = 0,
               $container = $(this.element),
               container_width = $container.width();
               $article = $(this.element).children();

           if(single_column_mode === true) {
               article_width = $container.width() - self.options.padding_x;
           } else {
               article_width = ($container.width() - self.options.padding_x * self.options.no_columns) / self.options.no_columns;
           }

           $article.each(function() {
               $(this).css('width', article_width);
           });

           columns = self.options.no_columns;

           $article.each(function(index) {
               var current_column,
                   left_out = 0,
                   top = 0,
                   $this = $(this),
                   prevAll = $this.prevAll(),
                   tallest = 0;

               if(single_column_mode === false) {
                   current_column = (index % columns);
               } else {
                   current_column = 0;
               }

               for(var t = 0; t < columns; t++) {
                   $this.removeClass('c'+t);
               }

               if(index % columns === 0) {
                   row++;
               }

               $this.addClass('c' + current_column);
               $this.addClass('r' + row);

               prevAll.each(function(index) {
                   if($(this).hasClass('c' + current_column)) {
                       top += $(this).outerHeight() + self.options.padding_y;
                   }
               });

               if(single_column_mode === true) {
                   left_out = 0;
               } else {
                   left_out = (index % columns) * (article_width + self.options.padding_x);
               }

               $this.css({
                   'left': left_out,
                   'top' : top
               });
           });

           this.tallest($container);
           $(window).resize();
       };

       Plugin.prototype.tallest = function (_container) {
           var column_heights = [],
               largest = 0;

           for(var z = 0; z < columns; z++) {
               var temp_height = 0;
               _container.find('.c'+z).each(function() {
                   temp_height += $(this).outerHeight();
               });
               column_heights[z] = temp_height;
           }

           largest = Math.max.apply(Math, column_heights);
           _container.css('height', largest + (this.options.padding_y + this.options.margin_bottom));
       };

       Plugin.prototype.make_layout_change = function (_self) {
           if($(window).width() < _self.options.single_column_breakpoint) {
               _self.calculate(true);
           } else {
               _self.calculate(false);
           }
       };

       $.fn[pluginName] = function (options) {
           return this.each(function () {
               if (!$.data(this, 'plugin_' + pluginName)) {
                   $.data(this, 'plugin_' + pluginName,
                   new Plugin(this, options));
               }
           });
       }

   })(jQuery, window, document);
</script>


<jsp:include page="/common/top.jsp"></jsp:include>
<body>

 <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/hero.jpg)">
 <section  style = "padding-top : 150px;"> 
<div class="container">
  <div class="row">
  
  <!--   <h2>판매페이지</h2> -->


    <section id="pinBoot">

      <article class="white-panel" ><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5GFFn1AmfCSMjFI3JTaaZNIWZb_A8lpmofkzWwTq_uw3U16u9&s" alt="">
        <h4><a href="#">Title 1</a></h4>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
          irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
      </article>

      <article class="white-panel"> <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsX2EbCJIRVm1ztlZfPmC1KthtW_ZOng-0UEdZ20OfEPqWzfZS&s" alt="">
        <h4><a href="#">Title 2</a></h4>
        <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
      </article>

      <article class="white-panel"> <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRik6LGuQoxYg64ZxqCICC6cDDKnuCZiEMif-EsHkm1pxdO-4ct0A&s" alt="">
        <h4><a href="#">Title 3</a></h4>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
          irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
      </article>


      <article class="white-panel"> <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRwQm8UoKPEGkQKjIFevsPHgcxyekJPgmQYURnrsCMZ37h3wKwV&s" alt="">
        <h4><a href="#">Title 4</a></h4>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
          irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
      </article>

      <article class="white-panel"> <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs1GVbSxW55YngfIaCqk6-hm5PzI7fLu6TTjtl3wrhbI6-ef5e7w&s" alt="">
        <h4><a href="#">Title 5</a></h4>
        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
      </article>

      <article class="white-panel"> <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTu3jc8Gz1gGOZZ554_fTGxni0pWJKzIEv2s5WytzEMggwCg13d&s" alt="">
        <h4><a href="#">Title 6</a></h4>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
          irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</p>
      </article>



      <article class="white-panel"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3G2LryihGMjc4ce8Ar5wA-wEShMygTe_5eU12AiqIJ-BQX1h0&s" alt="">
        <h4><a href="#">Title 7</a></h4>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
          irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
      </article>

      <article class="white-panel"> <img src="http://i.imgur.com/8lhFhc1.gif" alt="">
        <h4><a href="#">Title 8</a></h4>
        <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
      </article>

    </section>



  </div>
 

</div>
</section>

</body>

</html>