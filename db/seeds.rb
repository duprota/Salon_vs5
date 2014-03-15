Service.destroy_all
["Hair cut", "Hair paint"].each do |service|
  u = Service.new
  u.salon_id = "61"
  u.category_id = "Hair"
  u.service_name = service
  u.service_description = "cool service"
  u.save
end

