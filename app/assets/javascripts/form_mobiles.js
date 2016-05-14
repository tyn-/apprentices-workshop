//  --=={ VALIDATTIONS }==-


//  --=={ WATCH FOR FORM CHANGES }==-

$(function() {
  $('#mobile_ldesc').keyup(function() {
    setFormattedLdesc();
  })
});

$(function() {
  $('#mobile_alignment_0').change(function() {
    setFormattedLdesc();
  })
});

$(function() {
  $('#mobile_alignment_-1000').change(function() {
    setFormattedLdesc();
  })
});

$(function() {
  $('#mobile_alignment_1000').change(function() {
    setFormattedLdesc();
  })
});

$(function() {
  $('#mobile_invisible').change(function() {
    setFormattedLdesc();
  })
});

$(function() {
  $('#mobile_improved_invis').change(function() {
    setFormattedLdesc();
  })
});

$(function() {
  $('#mobile_hide').change(function() {
    setFormattedLdesc();
  })
});

$(function() {
  $('#mobile_sanctuary').change(function() {
    setFormattedLdesc();
  })
});

$(function() {
  $('#mobile_faerie_fire').change(function() {
    setFormattedLdesc();
  })
});

$(function() {
  $('#mobile_passdoor').change(function() {
    setFormattedLdesc();
  })
});

//  --=={ INITIALIZE THE OBJECTS FORM FOR VISIBLE VS HIDDEN }==-

function setFormattedLdesc() {
  var text = $( '#mobile_ldesc' ).val();
  if ($('#mobile_passdoor').is(':checked') == true) text = "(Translucent) " + text;
  if ($('#mobile_faerie_fire').is(':checked') == true) text = "(Pink Aura) " + text;
  if ($('#mobile_sanctuary').is(':checked') == true) text = "(White Aura) " + text;
  if ($('#mobile_hide').is(':checked') == true) text = "(Hide) " + text;
  if ($('#mobile_improved_invis').is(':checked') == true || $('#mobile_invisible').is(':checked') == true) text = "(Invis) " + text;
  if ($('#mobile_alignment_1000').is(':checked') == true) text = "(Light Blue Aura) " + text;
  if ($('#mobile_alignment_-1000').is(':checked') == true) text = "(Light Red Aura) " + text;
  $('#formatted_ldesc').val(text);

}

function initMobileForm() {
  setFormattedLdesc();
  $('input').attr('autocomplete','off');
}