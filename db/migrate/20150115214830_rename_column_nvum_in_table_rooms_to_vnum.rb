class RenameColumnNvumInTableRoomsToVnum < ActiveRecord::Migration
  def change
    rename_column :rooms, :vnum, :vnum
  end
end
