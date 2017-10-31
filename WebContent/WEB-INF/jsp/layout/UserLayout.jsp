<%@include file="/WEB-INF/jsp/taglib/taglibs.jsp"%>

<!DOCTYPE HTML>

<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>KarleShaadi</title>
		<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/responsive_style.css">
		<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.css">
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700'
			rel='stylesheet' type='text/css'>
		<!--[if lt IE 9]>
		   <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		<script src="<%=request.getContextPath()%>/resources/js/jquery.min.js"></script>
		<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
		<script>
         $(document).ready(function() {
	     $(".icon").click(function() {
		 $(".headermenu").slideToggle("slow");
	        });
          });
          </script>
          <script type="text/javascript">

function numericValidation(obj,evt) {
	
        var e = event || evt; // for trans-browser compatibility

        var charCode = e.which || e.keyCode;        

        if (charCode == 46) { //one dot
            if (obj.value.indexOf(".") > -1)
                return false;
            else {
                //---if the dot is positioned in the middle give the user a surprise, remember: just 2 decimals allowed
                var idx = doGetCaretPosition(obj);
                var part1 = obj.value.substr(0,idx),
                    part2 = obj.value.substring(idx);

                if (part2.length > 2) {
                    obj.value = part1 + "." + part2.substr(0,2);
                    setCaretPosition(obj, idx + 1);
                    return false;
                }//---

                //allow one dot if not cheating
                return true;
            }
        }
        else if (charCode > 31 && (charCode < 48 || charCode > 57)) { //just numbers
            return false;
        }
}

</script>

                    <script>
function isValid(str){
 return !/[~`!@#$%\^&*+=\-\[\]\\';,/{}|\\":<>\?]/g.test(str);
}
</script>
<script>
function isValidCharacter(str){
 return !/[~`!@#$%\0123456789^&*+=\-\[\]\\';,/{}|\\":<>\?]/g.test(str);
}
</script>
<script>
function isValidNumeric(str){
 return !/[~`!@#$%\^.abcdefghijklmnopqrstuvwxyz&*+=\-\[\]\\';,/{}|\\":<>\?]/g.test(str);
}
</script>
<script type="text/javascript">
function alpha(e) {
    var k;
    document.all ? k = e.keyCode : k = e.which;
    return ((k > 64 && k < 91) || (k > 96 && k < 123) || k == 8 || k == 32 || (k >= 48 && k <= 57));
}
</script>
	</head>

	<body>
<div class="wrap">
		<tiles:insertAttribute name="header" />
		<tiles:insertAttribute name="body" />
		<div class="push"></div>
		</div>
		<tiles:insertAttribute name="footer" />
	</body>
</html>
