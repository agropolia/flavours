          <div id="form-search" class="search-bar">
          <div method="get" action="#" id="search_mini_form">
            <input type="text" maxlength="128" value="" name="search" id="search" class="search-bar-input" autocomplete="off" >
            <button class="search-icon" id="search-b1" title="Search"><span></span></button>
            <button style="display:none" class="search-icon" id="search-b2" title="Search"><span></span></button>
            
          </div>
        </div>
<script type="text/javascript">
$(document).ready(function() {
$('body').click(function(){
	
	$(".search-bar-input").hide();
	 $('#search-b1').show();
    $('#search-b2').hide();
	$('#form-search').attr('class', 'search-bar');
	});
	// search
	$('#search-b1').on('click', function(e) {
		$(".search-bar-input").show();
		 e.stopPropagation();
    $('#form-search').attr('class', 'search-bar search-bar-open');
    $('#search-b1').hide();
    $('#search-b2').show();
	});

	

   $('.search-bar-input').on('click', function(e) {
	  e.stopPropagation();
	 });

    $('#search-b2').on('click', function(e) {
	 e.stopPropagation();
	});

});
</script>