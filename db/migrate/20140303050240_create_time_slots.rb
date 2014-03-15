class CreateTimeSlots < ActiveRecord::Migration
  def change
    create_table :time_slots do |t|
      t.integer "salon_stylist_service_id"
      t.integer "time_slot"
      t.integer "availability"
      t.timestamps
    end
  end
end
