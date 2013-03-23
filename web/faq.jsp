<%-- 
    Document   : index
    Created on : 11-mrt-2013, 19:59:48
    Author     : RickSpijker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dryves</title>
        <link type="text/css" rel="stylesheet" href="css/dryver.css"/>
        <script type="text/javascript">
           (function(d){d.fn.extend({accordion:function(){return this.each(function(){var $ul=$(this);if($ul.data('accordiated'))return false;$.each($ul.find('ul, li>div'),function(){$(this).data('accordiated',true);$(this).hide()});$.each($ul.find('a'),function(){$(this).click(function(e){activate(this);return void(0)})});var c=(location.hash)?$ul.find('a[href='+location.hash+']')[0]:'';if(c){activate(c,'toggle');$(c).parents().show()
                               }
                               function activate(a, b) {
                                   $(a).parent('li').toggleClass('active').siblings().removeClass('active').children('ul, div').slideUp('fast');
                                   $(a).siblings('ul, div')[(b || 'slideToggle')]((!b) ? 'fast' : null)
                               }}
                           )
                       }})
               })(jQuery);
 
           (function(jQuery){
     jQuery.fn.extend({  
         accordion: function() {       
            return this.each(function() {
            	
            	var $ul = $(this);
            	
				if($ul.data('accordiated'))
					return false;
													
				$.each($ul.find('ul, li>div'), function(){
					$(this).data('accordiated', true);
					$(this).hide();
				});
				
				$.each($ul.find('a'), function(){
					$(this).click(function(e){
						activate(this);
						return void(0);
					});
				});
				
				var active = (location.hash)?$(this).find('a[href=' + location.hash + ']')[0]:'';

				if(active){
					activate(active, 'toggle');
					$(active).parents().show();
				}
				
				function activate(el,effect){
					$(el).parent('li').toggleClass('active').siblings().removeClass('active').children('ul, div').slideUp('fast');
					$(el).siblings('ul, div')[(effect || 'slideToggle')]((!effect)?'fast':null);
				}
				
            });
        } 
    }); 
})(jQuery); 
            
            
        </script>
        
        <style>
            
	.pageContent { width: 400px; }
	.accordion { list-style-type: none; padding: 0; margin: 0 0 30px; border: 1px solid #17a; border-top: none; border-left: none; }
	.accordion ul { padding: 0; margin: 0; float: left; display: block; width: 100%; }
	.accordion li { background: #3cf; cursor: pointer; list-style-type: none; padding: 0; margin: 0; float: left; display: block; width: 100%;}
	.accordion li.active>a { background: url('close.gif') no-repeat center right; }
	.accordion li div { padding: 20px; background: #aef; display: block; clear: both; float: left; width: 360px;}
	.accordion a { text-decoration: none; border-bottom: 1px solid #4df; font: bold 1.1em/2em Arial, sans-serif; color: #222; padding: 0 10px; display: block; cursor: pointer; background: url('open.gif') no-repeat center right;}
	
	/* Level 2 */
	.accordion li ul li { background: #7FD2FF; font-size: 0.9em; }

	</style>
        
        
    </head>
    <body>
        
        <div class="background">
            
            <img src="images/background1.jpg" />
            
        </div>
        
        <div class="drvyesWrapper">
        
            <div class="logo">    
        <img src="images/Logo_Dryves.png" />
            </div>
        
        
        <div class="navigation">
            
            <div style="float:right; margin-right: -1px;"><button  onclick="window.location='login.jsp';">Login</button></div>
            
            <button onclick="window.location='index.jsp';">Home</button><button onclick="window.location='watisdryves.jsp';">Wat is Dryves</button><button>FAQ</button>
            
        </div>
        
        <div class="contentPanel">
            
            <div class="pageContent">

                <ul class="accordion">
                    <li>
                        <a href="#america">America</a>

                        <ul>	
                            <li>
                                <a href="#america-newyork">New York</a>
                                <div><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></div>
                            </li>
                            <li>
                                <a href="#america-sanfransisco">San Fransisco</a>
                                <div><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></div>

                            </li>
                            <li>
                                <a href="#america-washington">Washington</a>
                                <div><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></div>
                            </li>
                        </ul>
                    </li>
                    <li>

                        <a href="#antarctica">Antarctica</a>
                        <div><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></div>
                    </li>
                    <li>
                        <a href="#afroeuasia">Afro-Eurasia</a>
                        <ul>
                            <li class="current">

                                <a href="#afroeuasia-amsterdam">Amsterdam</a>
                                <div><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></div>
                            </li>
                            <li>
                                <a href="#afroeuasia-paris">Paris</a>
                                <div><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></div>

                            </li>
                            <li>
                                <a href="#afroeuasia-stockholm">Stockholm</a>
                                <div><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></div>
                            </li>
                        </ul>
                    </li>
                    <li>

                        <a href="#australia">Australia</a>
                        <ul>
                            <li>
                                <a href="#australia-melbourne">Melbourne</a>
                                <div><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></div>
                            </li>
                            <li>

                                <a href="#australia-perth">Perth</a>
                                <div><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></div>
                            </li>
                            <li>
                                <a href="#australia-sydney">Sydney</a>
                                <div><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></div>
                            </li>

                        </ul>
                    </li>
                    <li>
                        <a href="http://www.google.com">Google</a>
                    </li>
                </ul>

            </div>
        </div>

        <script src="dependencies/jquery-1.3.2.js" type="text/javascript" charset="utf-8"></script>
        <script src="jquery.accordion.source.js" type="text/javascript" charset="utf-8"></script>
        <script type="text/javascript">
                // <![CDATA[
			
                $(document).ready(function () {
                        $('ul').accordion();
                });
				
                // ]]>
        </script>


        </div>
        
        </div>
 
        
    </body>
</html>
