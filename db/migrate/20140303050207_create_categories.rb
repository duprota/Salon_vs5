class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer  "salon_id"
      t.string   "category"
      t.timestamps
    end
  end
end
