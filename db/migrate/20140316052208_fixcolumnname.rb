class Fixcolumnname < ActiveRecord::Migration
  def change
  	rename_column :stylists, :user_id, :salon_id
  end
end
