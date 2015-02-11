{"filter":false,"title":"shares_controller.rb","tooltip":"/app/controllers/shares_controller.rb","undoManager":{"mark":96,"position":96,"stack":[[{"group":"doc","deltas":[{"start":{"row":3,"column":17},"end":{"row":3,"column":18},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":3,"column":18},"end":{"row":3,"column":19},"action":"insert","lines":["h"]}]}],[{"group":"doc","deltas":[{"start":{"row":3,"column":19},"end":{"row":3,"column":20},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":3,"column":20},"end":{"row":3,"column":21},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":3,"column":21},"end":{"row":3,"column":22},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":3,"column":22},"end":{"row":3,"column":23},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":3,"column":22},"end":{"row":3,"column":23},"action":"remove","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":3,"column":22},"end":{"row":3,"column":23},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":3,"column":23},"end":{"row":3,"column":24},"action":"insert","lines":["_"]}]}],[{"group":"doc","deltas":[{"start":{"row":64,"column":0},"end":{"row":65,"column":0},"action":"insert","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":65,"column":0},"end":{"row":73,"column":3},"action":"insert","lines":["def correct_user","  #@area = current_user.areas.find_by(id: params[:id])","  #redirect_to areas_path, notice: \"Not authorized to edit this area\" if @area.nil?","  if ( current_user.id == @area.user_id || current_user.is_admin? || @area.shares.exists?(:user_id => current_user.id) )","    # Proceed","  else","    redirect_to :back, notice: \"Not authorized to edit this area\" if current_user.id != @area.user_id","  end","end"]}]}],[{"group":"doc","deltas":[{"start":{"row":65,"column":4},"end":{"row":65,"column":5},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":65,"column":5},"end":{"row":65,"column":6},"action":"insert","lines":["h"]}]}],[{"group":"doc","deltas":[{"start":{"row":65,"column":6},"end":{"row":65,"column":7},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":65,"column":7},"end":{"row":65,"column":8},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":65,"column":8},"end":{"row":65,"column":9},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":65,"column":9},"end":{"row":65,"column":10},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":65,"column":10},"end":{"row":65,"column":11},"action":"insert","lines":["_"]}]}],[{"group":"doc","deltas":[{"start":{"row":66,"column":0},"end":{"row":67,"column":83},"action":"remove","lines":["  #@area = current_user.areas.find_by(id: params[:id])","  #redirect_to areas_path, notice: \"Not authorized to edit this area\" if @area.nil?"]}]}],[{"group":"doc","deltas":[{"start":{"row":66,"column":0},"end":{"row":67,"column":0},"action":"remove","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":66,"column":65},"end":{"row":66,"column":118},"action":"remove","lines":[" || @area.shares.exists?(:user_id => current_user.id)"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":32},"end":{"row":69,"column":33},"action":"insert","lines":["O"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":33},"end":{"row":69,"column":34},"action":"insert","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":34},"end":{"row":69,"column":35},"action":"insert","lines":["l"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":35},"end":{"row":69,"column":36},"action":"insert","lines":["y"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":36},"end":{"row":69,"column":37},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":37},"end":{"row":69,"column":38},"action":"insert","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":38},"end":{"row":69,"column":39},"action":"insert","lines":["h"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":39},"end":{"row":69,"column":40},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":40},"end":{"row":69,"column":41},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":41},"end":{"row":69,"column":42},"action":"insert","lines":["A"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":42},"end":{"row":69,"column":43},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":43},"end":{"row":69,"column":44},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":44},"end":{"row":69,"column":45},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":45},"end":{"row":69,"column":46},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":46},"end":{"row":69,"column":47},"action":"insert","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":47},"end":{"row":69,"column":48},"action":"insert","lines":["w"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":48},"end":{"row":69,"column":49},"action":"insert","lines":["n"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":49},"end":{"row":69,"column":50},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":50},"end":{"row":69,"column":51},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":41},"end":{"row":69,"column":42},"action":"remove","lines":["A"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":41},"end":{"row":69,"column":42},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":51},"end":{"row":69,"column":52},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":52},"end":{"row":69,"column":53},"action":"insert","lines":["m"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":53},"end":{"row":69,"column":54},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":54},"end":{"row":69,"column":55},"action":"insert","lines":["y"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":55},"end":{"row":69,"column":56},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":56},"end":{"row":69,"column":57},"action":"insert","lines":["m"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":57},"end":{"row":69,"column":58},"action":"insert","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":58},"end":{"row":69,"column":59},"action":"insert","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":59},"end":{"row":69,"column":60},"action":"insert","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":60},"end":{"row":69,"column":61},"action":"insert","lines":["f"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":61},"end":{"row":69,"column":62},"action":"insert","lines":["y"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":62},"end":{"row":69,"column":63},"action":"insert","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":63},"end":{"row":69,"column":64},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":64},"end":{"row":69,"column":65},"action":"insert","lines":["h"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":65},"end":{"row":69,"column":66},"action":"insert","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":66},"end":{"row":69,"column":67},"action":"insert","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":67},"end":{"row":69,"column":68},"action":"insert","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":68},"end":{"row":69,"column":69},"action":"insert","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["N"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["u"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["h"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["z"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["o"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["d"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["t"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["h"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["i"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["s"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":[" "]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["r"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["e"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"remove","lines":["a"]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":69},"end":{"row":69,"column":70},"action":"insert","lines":["."]}]}],[{"group":"doc","deltas":[{"start":{"row":69,"column":71},"end":{"row":69,"column":107},"action":"remove","lines":[" if current_user.id != @area.user_id"]}]}],[{"group":"doc","deltas":[{"start":{"row":3,"column":45},"end":{"row":3,"column":49},"action":"insert","lines":[":new"]}]}],[{"group":"doc","deltas":[{"start":{"row":3,"column":49},"end":{"row":3,"column":50},"action":"insert","lines":[","]}]}],[{"group":"doc","deltas":[{"start":{"row":3,"column":50},"end":{"row":3,"column":51},"action":"insert","lines":[" "]}]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":3,"column":51},"end":{"row":3,"column":51},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1423626534318,"hash":"2e0c96eb6c48f63e0f23419123a7d91c1131a88f"}