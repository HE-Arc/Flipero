$(function() {
    $(".button-bet").submit(function(event) {
        //event.preventDefault();
        //$('form.button-bet').trigger('submit.rails');
        $.get('/getcurrentuser').success(function(data) {
            updateSaleStatus(data.id);
        });
    });



    function updateSaleStatus(id)
    {
        $.get('/getsalestatus').success(function(data) {
            $.each(data, function(index, value ) {
                console.log(value);
                if(parseInt(value.user_id) == parseInt(id))
                {
                    $('.sale-'+value.id).val("It's yours... for now!");
                }
                else
                {
                    $('.sale-'+value.id).val(value.price + " pts");
                }
            });
        });
    }

    updateButtons();

    function updateButtons() {
        $.get('/getcurrentuser').success(function(data) {
            setTimeout(updateButtons,5000);
            updateSaleStatus(data.id);
        });
    }
});


