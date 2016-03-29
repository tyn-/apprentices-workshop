{"changed":true,"filter":false,"title":"oxdesc.rb","tooltip":"/app/models/oxdesc.rb","value":"class Oxdesc < ActiveRecord::Base\n  belongs_to :obj\n  \n  validates :keywords, length: { in: 2..75 }, format: { with: /\\A[ -~]+\\z/, message: \"Only US-ASCII characters are permitted.\" }\n  validates :description, length: { minimum: 4 }, format: { with: /\\A[\\x0A\\x0D -~]+\\z/, message: \"Only US-ASCII characters are permitted.\" }\n\nend\n","undoManager":{"mark":-2,"position":0,"stack":[[{"start":{"row":3,"column":37},"end":{"row":3,"column":38},"action":"remove","lines":["4"],"id":5},{"start":{"row":3,"column":37},"end":{"row":3,"column":38},"action":"insert","lines":["2"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":3,"column":38},"end":{"row":3,"column":38},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1428179491862}