class CreateSalons < ActiveRecord::Migration
  def change
    create_table :salons do |t|
      t.integer  "user_id"
      t.string   "salon_name"
      t.string   "owner_name"
      t.string   "contact_name"
      t.string   "phone"
      t.string   "address"
      t.string   "email"
      t.timestamps
    end
  end
end
