{"filter":false,"title":"area.rb","tooltip":"/app/models/area.rb","undoManager":{"mark":2,"position":2,"stack":[[{"group":"doc","deltas":[{"start":{"row":336,"column":3},"end":{"row":337,"column":0},"action":"insert","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":337,"column":0},"end":{"row":338,"column":0},"action":"insert","lines":["",""]}]}],[{"group":"doc","deltas":[{"start":{"row":338,"column":0},"end":{"row":358,"column":3},"action":"insert","lines":["def num_to_dir(i)","  $word = nil","  $word = 'North' if i == 0","  $word = 'East' if i == 1","  $word = 'South' if i == 2","  $word = 'West' if i == 3","  $word = 'Up' if i == 4","  $word = 'Down' if i == 5","  return $word","end","","def opposite_dir(i)","  $dir = nil","  $dir = 0 if i == 2  # N opposite of S","  $dir = 2 if i == 0  # S opposite of N","  $dir = 1 if i == 3  # E opposite of W","  $dir = 3 if i == 1  # W opposite of E","  $dir = 4 if i == 5  # U opposite of D","  $dir = 5 if i == 4  # D opposite of U","  return $dir","end"]}]}]]},"ace":{"folds":[],"scrolltop":4837.555631637573,"scrollleft":0,"selection":{"start":{"row":358,"column":3},"end":{"row":358,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":333,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1424495491498,"hash":"f73ace6760817e6cc85b98c43733bcf5ee8eeaed"}