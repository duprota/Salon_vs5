class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.integer  "salon_id"
      t.integer  "category_id"
      t.string   "service_ name"
      t.string   "service_description"
      t.timestamps
    end
  end
end
