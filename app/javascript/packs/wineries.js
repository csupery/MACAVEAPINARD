$(document).on("turbolinks:load", function() {
    var selectizeCallback = null;

    $(".appellation-modal").on("hide.bs.modal", function(e) {
        if (selectizeCallback != null) {
            selectizeCallback();
            selectizeCallback = null;
        }

        $("#new_appellation").trigger("reset");
        var selectors = [$.rails.linkDisableSelector, $.rails.formEnableSelector].join(', ');
        $(selectors).each(function() {
            $.rails.enableElement(this);
        })

    });

    $("#new_appellation").on("submit", function(e) {
        e.preventDefault();
        $.ajax({
            method: "POST",
            url: $(this).attr("action"),
            data: $(this).serialize(),
            success: function(response) {
                selectizeCallback({value: response.id, text: response.name});
                $(".appellation-modal").modal('toggle');
                selectizeCallback = null;
            }
        });
    });

    $(".selectize").selectize({
        create: function(input, callback) {
            selectizeCallback = callback;

            $(".appellation-modal").modal();
            $("#appellation_name").val(input);
        }
    });
});
