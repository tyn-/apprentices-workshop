class RoomSpecial < ActiveRecord::Base
  belongs_to :room

  validates :room_id, uniqueness:  { scope: :room,
                                       message: "Only one room special function allowed per room." }
  
  before_create :default_values
  def default_values
    self.room_special_type ||= 'D'
    self.name ||= ''
    self.extended_value_1 ||= -1
    self.extended_value_2 ||= -1
    self.extended_value_3 ||= -1
    self.extended_value_4 ||= -1
    self.extended_value_5 ||= -1
  end

end