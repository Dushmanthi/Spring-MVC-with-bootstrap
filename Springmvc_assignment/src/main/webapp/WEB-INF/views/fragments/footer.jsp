<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="https://getbootstrap.com/docs/4.0/assets/js/vendor/popper.min.js"></script>
    <script src="https://getbootstrap.com/docs/4.0/dist/js/bootstrap.min.js"></script>

    <!-- Icons -->
    <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
    <script>
      feather.replace()
    </script>

  <script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
	<script src="https://getbootstrap.com/docs/4.3/examples/dashboard/dashboard.js"></script>
	
	<script>
	// Activate Next Step

	$(document).ready(function() {
	    
	    var navListItems = $('ul.setup-panel li a'),
	        allWells = $('.setup-content');

	    allWells.hide();

	    navListItems.click(function(e)
	    {
	        e.preventDefault();
	        var $target = $($(this).attr('href')),
	            $item = $(this).closest('li');
	        
	        if (!$item.hasClass('disabled')) {
	            navListItems.closest('li').removeClass('active');
	            $item.addClass('active');
	            allWells.hide();
	            $target.show();
	        }
	    });
	    
	    $('ul.setup-panel li.active a').trigger('click');
	    
	    // DEMO ONLY //
	    $('#activate-step-2').on('click', function(e) {
	        $('ul.setup-panel li:eq(1)').removeClass('disabled');
	        $('ul.setup-panel li a[href="#step-2"]').trigger('click');
	        $(this).remove();
	    })
	    
	    $('#activate-step-3').on('click', function(e) {
	        $('ul.setup-panel li:eq(2)').removeClass('disabled');
	        $('ul.setup-panel li a[href="#step-3"]').trigger('click');
	        $(this).remove();
	    })
	    
	    $('#activate-step-4').on('click', function(e) {
	        $('ul.setup-panel li:eq(3)').removeClass('disabled');
	        $('ul.setup-panel li a[href="#step-4"]').trigger('click');
	        $(this).remove();
	    })
	    
	    $('#activate-step-3').on('click', function(e) {
	        $('ul.setup-panel li:eq(2)').removeClass('disabled');
	        $('ul.setup-panel li a[href="#step-3"]').trigger('click');
	        $(this).remove();
	    })
	});


	// Add , Dlelete row dynamically

	     $(document).ready(function(){
	      var i=1;
	     $("#add_row").click(function(){
	      $('#addr'+i).html("<td>"+ (i+1) +"</td><td><input name='name"+i+"' type='text' placeholder='Name' class='form-control input-md'  /> </td><td><input  name='sur"+i+"' type='text' placeholder='Surname'  class='form-control input-md'></td><td><input  name='email"+i+"' type='text' placeholder='Email'  class='form-control input-md'></td><td><select type='text' name='gender"+i+"' class='form-control'><option name='male"+i+"' value='male'>Male</option><option name='Female"+i+"' value='Female'>Female</option><option name='3rdgen"+i+"' value='none'>None</option></select></td>");

	      $('#tab_logic').append('<tr id="addr'+(i+1)+'"></tr>');
	      i++; 
	  });
	     $("#delete_row").click(function(){
	    	 if(i>1){
			 $("#addr"+(i-1)).html('');
			 i--;
			 }
		 });

	});


		</script>