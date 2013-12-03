$("#event_form").dialog({
  autoOpen: true,
  height: 600,
  width: 600,
  modal: true,
  open: function() {
    $("#event_form").html("<%= escape_javascript(render('event')) %>")
  },
});
