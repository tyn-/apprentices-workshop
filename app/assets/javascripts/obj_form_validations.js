//  --=={ VALIDATTIONS }==-

function validMaxAC () {
  if( ( $('#obj_object_type').val() == 9 || $('#obj_object_type').val() === 14 ) && // IF ARMOR and if AC > MAX AC
      $('#ItemValueGroupArmor').find('#obj_v0').val() > $('#ItemValueGroupArmor').find('#obj_v1').val() ) {
        bootbox.alert('<strong>Max AC</strong> cannot be less than <strong>AC</strong>.  Setting Max AC to match AC.');
        $('#ItemValueGroupArmor').find('#obj_v1').val( $('#ItemValueGroupArmor').find('#obj_v0').val() );
    return false
  }
  return true
}


function validMetallic () {
  if( $('#obj_metallic').is(':checked') == true &&
    ( $('#obj_object_type').val() != 9 && $('#obj_object_type').val() != 14) ) {
        bootbox.alert('The <strong>METALLIC</strong> flag may only be used with an armor object type.');
        $('#obj_metallic').prop('checked', false); 
    return false
  }
  if( $('#obj_metallic').is(':checked') == false &&
    ( $('#obj_object_type').val() == 9 || $('#obj_object_type').val() === 14) &&
      $('#ItemValueGroupArmor').find('#obj_v0').val() > 5 ) {
        bootbox.alert('The <strong>METALLIC</strong> flag set for armor with an AC of greater than 5.');
        $('#obj_metallic').prop('checked', true); 
    return false
  }
  return true
}

function validTwoHanded () {
  if( $('#obj_two_handed').is(':checked') == true &&
    ( $('#obj_object_type').val() != 5 && $('#obj_object_type').val() != 6) ) {
        bootbox.alert('<strong>TWO HANDED</strong> flag may only be used with a weapon object type.');
        $('#obj_two_handed').prop('checked', false); 
        return false
      } else {
        return true
      }
}

function validUnderwaterBreath () {
  if( $('#obj_underwater_breath').is(':checked') == true &&
    ( $('#obj_object_type').val() != 9 && $('#obj_object_type').val() != 14) ) {
        bootbox.alert('The <strong>UNDERWATER BREATH</strong> flag may only be used with an armor object type.');
        $('#obj_underwater_breath').prop('checked', false); 
    return false
  } else {
    return true
  }
}

function validWeight () {
  if( $('#obj_weight').val() > 9 && 
    ($('#obj_object_type').val() == 5 || $('#obj_object_type').val() == 6) &&
      $('#obj_two_handed').is(':checked') == false ) {
        bootbox.alert('<strong>TWO HANDED</strong> flag set for a weapon of weight greater than 9 kg.');
        $('#obj_two_handed').prop('checked', true); 
        return false
      } else {
        return true
      }
}

function validUseCost () {
  if($('#obj_cost').val()!= 0 && $('#obj_use_cost').is(':checked') == false) {
    bootbox.alert('Object cost should be 0 since the object is not flagged with <strong>USE COST</strong>.');
    $('#obj_cost').val('0');
    return false
  } else {
    return true
  }
}

//  --=={ WATCH FOR FORM CHANGES }==-

$(function() {
  $('#ItemValueGroupArmor').find('#obj_v0').change(function() { // This is the AC field.
    validMetallic();
    validMaxAC();
  })
});

$(function() {
  $('#ItemValueGroupArmor').find('#obj_v1').change(function() { // This is the MAX AC field.
    validMaxAC();
  })
});

$(function() {
  $('#obj_metallic').change(function() {
    validMetallic();
  })
});

$(function() {
  $('#obj_two_handed').change(function() {
    validTwoHanded();
  })
});

$(function() {
  $('#obj_use_cost').change(function() {
    validUseCost();
  })
});

$(function() {
  $('#obj_underwater_breath').change(function() {
    validUnderwaterBreath();
  })
});

$(function() {
  $('#obj_weight').change(function() {
    validWeight();
  })
});

$(function() {
  $('#obj_cost').change(function() {
    validUseCost();
  })
});

  
$(function() {
  
    $('#obj_object_type').change(function() {
      
      setObjValues();
      
      validMaxAC();
      validMetallic();
      validTwoHanded();
      validUnderwaterBreath();
      validWeight();
      validUseCost();
      
    })

});




//  --=={ INITIALIZE THE OBJECTS FORM FOR VISIBLE VS HIDDEN }==-

function setObjValues() {
  
  var i = $( '#obj_object_type' ).val();

  if(i== 1) {
    hideItemGroups();
    $('#ItemValueGroupLight').prop('disabled', false).show();
    $('#obj_takeable').prop('checked', true);
    $('#obj_wear_flags').val('0');
  }
  if(i== 20) {
    hideItemGroups();
    $('#ItemValueGroupMoney').prop('disabled', false).show();
    $('#obj_takeable').prop('checked', true);
    $('#obj_wear_flags').val('0');
  }
  if(i== 17) {
    hideItemGroups();
    $('#ItemValueGroupDrink').prop('disabled', false).show();
    $('#obj_takeable').prop('checked', true);
    $('#obj_wear_flags').val('0');
  }
  if(i== 30) {
    hideItemGroups();
    $('#ItemValueGroupJewelry').prop('disabled', false).show();
    $('#obj_takeable').prop('checked', true);
  }
  if(i== 8 || i== 12 || i== 13 || i== 18 || i== 22 || i== 27) {
    hideItemGroups();
    $('#ItemValueGroupGeneric').prop('disabled', false).show();
    $('#obj_wear_flags').val('0');
    if(this.value == 27) {$('#obj_wear_flags').val('32768');}; // DECORATION set to WEAR as DECORATION
  }
  if(i== 25) {
    hideItemGroups();
    $('#ItemValueGroupFountain').prop('disabled', false).show();
    $('#obj_takeable').prop('checked', false);
    $('#obj_wear_flags').val('0');
  }
  if(i== 5 || i== 6) {
    hideItemGroups();
    $('#ItemValueGroupWeapon').prop('disabled', false).show();
    $('#obj_two_handed').parent().show();
    $('#obj_takeable').prop('checked', true);
    $('#obj_wear_flags').val('8192');
  }
  if(i== 9 || i== 14) {
    hideItemGroups();
    $('#ItemValueGroupArmor').prop('disabled', false).show();
    $('#obj_metallic').parent().show();
    $('#obj_underwater_breath').parent().show();
    $('#obj_takeable').prop('checked', true);
  }
  if(i== 15) {
    hideItemGroups();
    $('#ItemValueGroupContainer').prop('disabled', false).show();
    $('#obj_wear_flags').val('0');
  }
  if(i== 3 || i== 4 || i== 7 || i== 29 || i== 33) {
    hideItemGroups();
    $('#ItemValueGroupMultiUseMagicItems').prop('disabled', false).show();
    $('#obj_wear_flags').val('16384');
    if(this.value == 29) {$('#obj_wear_flags').val('2');};  // RING set to WEAR on FINGER
  }
  if(i== 2 || i== 10 || i== 26) {
    hideItemGroups();
    $('#ItemValueGroupSingleUseMagicItems').prop('disabled', false).show();
    $('#obj_takeable').prop('checked', true);
    $('#obj_wear_flags').val('16384');
  }
  if(i== 11 || i== 19) {
    hideItemGroups();
    $('#ItemValueGroupFood').prop('disabled', false).show();
    $('#obj_takeable').prop('checked', true);
    $('#obj_wear_flags').val('0');
  }

}

function hideItemGroups() {
  $('#ItemValueGroupGeneric').prop('disabled', true).hide();
  $('#ItemValueGroupMoney').prop('disabled', true).hide();
  $('#ItemValueGroupDrink').prop('disabled', true).hide();
  $('#ItemValueGroupJewelry').prop('disabled', true).hide();
  $('#ItemValueGroupFountain').prop('disabled', true).hide();
  $('#ItemValueGroupWeapon').prop('disabled', true).hide();
  $('#ItemValueGroupLight').prop('disabled', true).hide();
  $('#ItemValueGroupArmor').prop('disabled', true).hide();
  $('#ItemValueGroupContainer').prop('disabled', true).hide();
  $('#ItemValueGroupMultiUseMagicItems').prop('disabled', true).hide();
  $('#ItemValueGroupSingleUseMagicItems').prop('disabled', true).hide();
  $('#ItemValueGroupFood').prop('disabled', true).hide();
  
  $('#obj_metallic').parent().hide();
  $('#obj_two_handed').parent().hide();
  $('#obj_underwater_breath').parent().hide();
}
