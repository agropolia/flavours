<div class="newsletter-wrap">
  <h4><?php echo $heading_title; ?></h4>
  <div id="container_form_news">
    <div id="container_form_news2">	
	  <input  type="text" name="subscriber_email" id="subscriber_email" value="" placeholder="Enter Your Email" class="form-control" />
	  <input type="button" name="submit_newsletter" id="submit_newsletter" class="button subscribe" value="Subscribe" onclick="return MgkEmailValidation()" />
	  <p id="subscriber_content"></p>	  
	</div>  
  </div>
</div>
<script language="javascript">
function MgkEmailValidation(mail)   
{  
	subscribemail = document.getElementById("subscriber_email").value;
	var emailRegEx = /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i;
	if (subscribemail != '') { 

	    if ( subscribemail.search(emailRegEx)!=-1 ) {  
		    

		    email = document.getElementById("subscriber_email").value;
		    var xmlhttp;
		    if (window.XMLHttpRequest){
			    xmlhttp=new XMLHttpRequest();
		    }else{
			    xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
		    }
		    
		    xmlhttp.onreadystatechange=function() {
			    if (xmlhttp.readyState==4 && xmlhttp.status==200) {
				    document.getElementById("subscriber_content").innerHTML=xmlhttp.responseText;
			    }
		    }
		    xmlhttp.open("GET","index.php?route=module/newslettersubscription/addsubscriberemail&email="+email,true);
		    xmlhttp.send();
		    return (true) ; 
	  }  
		  document.getElementById("subscriber_content").innerHTML="<p style='color:#a94442'>Please enter an email address.</p>";
		  return (false); 
	}
		document.getElementById("subscriber_content").innerHTML="<p style='color:#a94442'>This is a required field.</p>";
		return false;
}  
</script>
