class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer  "user_id"
      t.string   "image_url"
      t.string   "first_name"
      t.string   "last_name"
      t.string   "sex"
      t.datetime "date_of_birth"
      t.string   "email"
      t.string   "phone"
      t.timestamps
    end
  end
end
