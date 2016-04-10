{"filter":false,"title":"sub_resets_controller.rb","tooltip":"/app/controllers/sub_resets_controller.rb","undoManager":{"mark":52,"position":52,"stack":[[{"start":{"row":0,"column":49},"end":{"row":1,"column":0},"action":"insert","lines":["",""],"id":1},{"start":{"row":1,"column":0},"end":{"row":1,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":1,"column":2},"end":{"row":1,"column":54},"action":"insert","lines":["before_action :authenticate_user!#, except: [:index]"],"id":2}],[{"start":{"row":37,"column":28},"end":{"row":37,"column":29},"action":"remove","lines":["s"],"id":3}],[{"start":{"row":37,"column":39},"end":{"row":37,"column":40},"action":"insert","lines":[","],"id":4}],[{"start":{"row":37,"column":40},"end":{"row":37,"column":41},"action":"insert","lines":[" "],"id":5}],[{"start":{"row":37,"column":41},"end":{"row":37,"column":42},"action":"insert","lines":["@"],"id":6}],[{"start":{"row":37,"column":42},"end":{"row":37,"column":43},"action":"insert","lines":["r"],"id":7}],[{"start":{"row":37,"column":43},"end":{"row":37,"column":44},"action":"insert","lines":["e"],"id":8}],[{"start":{"row":37,"column":44},"end":{"row":37,"column":45},"action":"insert","lines":["s"],"id":9}],[{"start":{"row":37,"column":45},"end":{"row":37,"column":46},"action":"insert","lines":["e"],"id":10}],[{"start":{"row":37,"column":46},"end":{"row":37,"column":47},"action":"insert","lines":["t"],"id":11}],[{"start":{"row":37,"column":59},"end":{"row":37,"column":60},"action":"insert","lines":["S"],"id":12}],[{"start":{"row":37,"column":60},"end":{"row":37,"column":61},"action":"insert","lines":["u"],"id":13}],[{"start":{"row":37,"column":61},"end":{"row":37,"column":62},"action":"insert","lines":["b"],"id":14}],[{"start":{"row":37,"column":62},"end":{"row":37,"column":63},"action":"insert","lines":["-"],"id":15}],[{"start":{"row":37,"column":63},"end":{"row":37,"column":64},"action":"insert","lines":["r"],"id":16}],[{"start":{"row":37,"column":64},"end":{"row":37,"column":65},"action":"remove","lines":["R"],"id":17}],[{"start":{"row":45,"column":52},"end":{"row":45,"column":57},"action":"remove","lines":["Reset"],"id":18},{"start":{"row":45,"column":52},"end":{"row":45,"column":61},"action":"insert","lines":["Sub-reset"]}],[{"start":{"row":54,"column":52},"end":{"row":54,"column":57},"action":"remove","lines":["Reset"],"id":19},{"start":{"row":54,"column":52},"end":{"row":54,"column":61},"action":"insert","lines":["Sub-reset"]}],[{"start":{"row":45,"column":18},"end":{"row":45,"column":41},"action":"remove","lines":["area_resets_path(@area)"],"id":20},{"start":{"row":45,"column":18},"end":{"row":45,"column":48},"action":"insert","lines":["area_reset_path(@area, @reset)"]}],[{"start":{"row":54,"column":18},"end":{"row":54,"column":41},"action":"remove","lines":["area_resets_path(@area)"],"id":21},{"start":{"row":54,"column":18},"end":{"row":54,"column":48},"action":"insert","lines":["area_reset_path(@area, @reset)"]}],[{"start":{"row":56,"column":18},"end":{"row":56,"column":41},"action":"remove","lines":["area_resets_path(@area)"],"id":22},{"start":{"row":56,"column":18},"end":{"row":56,"column":48},"action":"insert","lines":["area_reset_path(@area, @reset)"]}],[{"start":{"row":36,"column":22},"end":{"row":37,"column":0},"action":"insert","lines":["",""],"id":23},{"start":{"row":37,"column":0},"end":{"row":37,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":37,"column":0},"end":{"row":37,"column":6},"action":"remove","lines":["      "],"id":24},{"start":{"row":37,"column":0},"end":{"row":39,"column":10},"action":"insert","lines":["      if params[:return_to_room]","        redirect_to area_room_path(@area, params[:return_to_room]), notice: 'Reset was sucessfully created.'","      else"]}],[{"start":{"row":40,"column":6},"end":{"row":40,"column":8},"action":"insert","lines":["  "],"id":25}],[{"start":{"row":40,"column":96},"end":{"row":41,"column":0},"action":"insert","lines":["",""],"id":26},{"start":{"row":41,"column":0},"end":{"row":41,"column":8},"action":"insert","lines":["        "]}],[{"start":{"row":41,"column":8},"end":{"row":41,"column":9},"action":"insert","lines":["e"],"id":27}],[{"start":{"row":41,"column":9},"end":{"row":41,"column":10},"action":"insert","lines":["n"],"id":28}],[{"start":{"row":41,"column":10},"end":{"row":41,"column":11},"action":"insert","lines":["d"],"id":29},{"start":{"row":41,"column":6},"end":{"row":41,"column":8},"action":"remove","lines":["  "]}],[{"start":{"row":38,"column":76},"end":{"row":38,"column":79},"action":"insert","lines":["Sub"],"id":30}],[{"start":{"row":38,"column":78},"end":{"row":38,"column":79},"action":"remove","lines":["b"],"id":31}],[{"start":{"row":38,"column":77},"end":{"row":38,"column":78},"action":"remove","lines":["u"],"id":32}],[{"start":{"row":38,"column":76},"end":{"row":38,"column":77},"action":"remove","lines":["S"],"id":33}],[{"start":{"row":38,"column":77},"end":{"row":38,"column":78},"action":"insert","lines":["S"],"id":34}],[{"start":{"row":38,"column":78},"end":{"row":38,"column":79},"action":"insert","lines":["u"],"id":35}],[{"start":{"row":38,"column":79},"end":{"row":38,"column":80},"action":"insert","lines":["b"],"id":36}],[{"start":{"row":38,"column":80},"end":{"row":38,"column":81},"action":"insert","lines":["="],"id":37}],[{"start":{"row":38,"column":80},"end":{"row":38,"column":81},"action":"remove","lines":["="],"id":38}],[{"start":{"row":38,"column":80},"end":{"row":38,"column":81},"action":"insert","lines":["-"],"id":39}],[{"start":{"row":38,"column":81},"end":{"row":38,"column":82},"action":"insert","lines":["s"],"id":40}],[{"start":{"row":38,"column":82},"end":{"row":38,"column":83},"action":"remove","lines":["R"],"id":41}],[{"start":{"row":38,"column":81},"end":{"row":38,"column":82},"action":"remove","lines":["s"],"id":42}],[{"start":{"row":38,"column":81},"end":{"row":38,"column":82},"action":"insert","lines":["r"],"id":43}],[{"start":{"row":48,"column":42},"end":{"row":49,"column":0},"action":"insert","lines":["",""],"id":44},{"start":{"row":49,"column":0},"end":{"row":49,"column":6},"action":"insert","lines":["      "]}],[{"start":{"row":49,"column":0},"end":{"row":49,"column":6},"action":"remove","lines":["      "],"id":45},{"start":{"row":49,"column":0},"end":{"row":51,"column":10},"action":"insert","lines":["if params[:return_to_room]","        redirect_to area_room_path(@area, params[:return_to_room]), notice: 'Sub-reset was sucessfully created.'","      else"]}],[{"start":{"row":49,"column":0},"end":{"row":49,"column":2},"action":"insert","lines":["  "],"id":46}],[{"start":{"row":49,"column":2},"end":{"row":49,"column":4},"action":"insert","lines":["  "],"id":47}],[{"start":{"row":49,"column":4},"end":{"row":49,"column":6},"action":"insert","lines":["  "],"id":48}],[{"start":{"row":52,"column":6},"end":{"row":52,"column":8},"action":"insert","lines":["  "],"id":49}],[{"start":{"row":52,"column":96},"end":{"row":53,"column":0},"action":"insert","lines":["",""],"id":50},{"start":{"row":53,"column":0},"end":{"row":53,"column":8},"action":"insert","lines":["        "]}],[{"start":{"row":53,"column":8},"end":{"row":53,"column":9},"action":"insert","lines":["e"],"id":51}],[{"start":{"row":53,"column":9},"end":{"row":53,"column":10},"action":"insert","lines":["n"],"id":52}],[{"start":{"row":53,"column":10},"end":{"row":53,"column":11},"action":"insert","lines":["d"],"id":53},{"start":{"row":53,"column":6},"end":{"row":53,"column":8},"action":"remove","lines":["  "]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":53,"column":9},"end":{"row":53,"column":9},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1425097026311,"hash":"bcd51e6ea588ef7bf5f04b2f9c6ea7c0742cde27"}