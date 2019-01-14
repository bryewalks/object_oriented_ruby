require 'http'

response = HTTP.get("https://data.cityofchicago.org/resource/ygr5-vcbg.json")
towed_cars = response.parse

# puts towed_cars

towed_cars.each do |car|

  plate = car["plate"]
  phone_number = car["tow_facility_phone"]
  make = car["make"]
  color = car["color"]
  state = car["state"]
  address = car["towed_to_address"]

  puts "State:#{state} Color:#{color} Make:#{make} license plate number #{plate} has been towed. Please contact #{phone_number} at #{address}"

end

# p towed_cars.count

