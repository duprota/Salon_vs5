class CreatePrices < ActiveRecord::Migration
  def change
    create_table :prices do |t|
      t.integer  "salon_id"
      t.integer  "stylist_id"
      t.integer  "service_id"
      t.integer "price"
      t.timestamps
    end
  end
end
