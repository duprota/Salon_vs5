class AddImagetoStylist < ActiveRecord::Migration
  def change
  	change_table :stylists do |t|
  		t.string :image_url 
  end
 end
end
