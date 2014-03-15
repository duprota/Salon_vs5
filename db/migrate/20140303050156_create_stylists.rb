class CreateStylists < ActiveRecord::Migration
  def change
    create_table :stylists do |t|
      t.integer  "user_id"
      t.string   "first_name"
      t.string   "last_name"
      t.string   "sex"
      t.date     "date_of_birth"
      t.string   "phone"
      t.string   "email"
      t.timestamps
    end
  end
end
