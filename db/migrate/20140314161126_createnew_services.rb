class CreatenewServices < ActiveRecord::Migration
 def change
    create_table :services do |t|
      t.integer  "salon_id"
      t.integer  "category_id"
      t.string   "service_name"
      t.string   "service_description"
      t.timestamps
    end
  end
end
