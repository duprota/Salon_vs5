class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.integer "client_id"
      t.integer "salon_stylist_service_id"
      t.integer "time_slot_id"
      t.timestamps
    end
  end
end
