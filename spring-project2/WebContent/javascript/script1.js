 
 var listA = [{name:'1 Bedroom 350 to 700 sq ft', value:'1 Bedroom 350 to 700 sq ft'}, {name:'2 Bedroom 700 to 1300 sq ft', value:'2 Bedroom 700 to 1300 sq ft'}, {name:'3 Bedroom 1300 to 2000 sq ft', value:'3 Bedroom 1300 to 2000 sq ft'}];

 var listB = [{name:'Studio 400-600 sq ft', value:'Studio 400-600 sq ft'}, {name:'Studio Alcove 600-700 sq ft', value:'Studio Alcove 600-700 sq ft'}];

  $(document).ready( function() {
      $("input[name='chk']").on('change',function() {
          
          if($(this).is(':checked') && $(this).val() == '1')
          {
            $('#describe').empty()
            $.each(listA, function(index, value) {
             $('#describe').append('<option value="'+value.value+'">'+value.name+'</option>');
            });                  
          }
          else if($(this).is(':checked') && $(this).val() == '2')
          {
            $('#describe').empty()
            $.each(listB, function(index, value) {
             $('#describe').append('<option value="'+value.value+'">'+value.name+'</option>');
            }); 
          }
          else
          {
              
          }
              
    });
 });  
 
