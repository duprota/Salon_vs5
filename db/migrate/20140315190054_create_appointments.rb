class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
    	t.integer "salon_id"
    	t.integer "stylist_id"
    	t.integer "service_id"
    	t.date "date"
    	t.time "time"
      t.timestamps
    end
  end
end
