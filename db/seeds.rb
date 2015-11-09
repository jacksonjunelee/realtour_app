# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

["Air Conditioning", "Internet", "TV", "Heating", "Wireless Internet", "Cable TV", "Kitchen", "Hot Tub", "Dryer", "Washer", "Elevator In Building", "Balcony", "Free Parking", "Fireplace", "Pool", "Gym", "Doorman"].each { |amenity| Amenity.create(amenity_type: amenity)}

Listing.create({
  address: "5440 sw 4th st",
  city: "New York",
  state: "NY",
  borough: "Manhatten",
  zip: 12345,
  building_name: "moo",
  apt_num: "1A",
  room_type: "private",
  bedroom: 4,
  bathroom: 2,
  property_type: "apartment",
  area: "1500 ft.sq",
  minimum_stay: "3 months",
  move_in: Time.now,
  the_space: "good space",
  the_neighborhood: "good neighborhood",
  furnished: true,
  list_date: Time.now,
  active: true,
  inactive_date: Time.now,
  price: 1300,
  rent_or_sublease: "rent",
  guest_capacity: 10,
  user_id: 1
  })

  Listing.create({
    address: "1234 sw 5th st",
    city: "New York",
    state: "NY",
    borough: "Queens",
    zip: 12987,
    building_name: "moocat",
    apt_num: "2C",
    room_type: "private",
    bedroom: 1,
    bathroom: 2,
    property_type: "apartment",
    area: "1900 ft.sq",
    minimum_stay: "9 months",
    move_in: Time.new(2015, 10, 3),
    the_space: "bad space",
    the_neighborhood: "bad neighborhood",
    furnished: false,
    list_date: Time.new(2015, 10, 3),
    active: true,
    inactive_date: Time.new(2015, 10, 6),
    price: 2000,
    rent_or_sublease: "rent",
    guest_capacity: 3,
    user_id: 2
    })

  Listing.create({
    address: "9234 sw 8th st",
    city: "New York",
    state: "NY",
    borough: "Brooklyn",
    zip: 12987,
    building_name: "moocat2",
    apt_num: "4CD",
    room_type: "private",
    bedroom: 3,
    bathroom: 8,
    property_type: "apartment",
    area: "800 ft.sq",
    minimum_stay: "12 months",
    move_in: Time.new(2015, 9, 3),
    the_space: "bad space milk",
    the_neighborhood: "bad neighborhood mufasa",
    furnished: false,
    list_date: Time.new(2015, 11, 3),
    active: true,
    inactive_date: Time.new(2015, 11, 6),
    price: 2200,
    rent_or_sublease: "rent",
    guest_capacity: 3,
    user_id: 1
    })

  ["Pets Allowed", "Smoking Allowed", "Wheelchair Accessible", "Family/Kid Friendly", "Suitable for Events"].each { |restriction| Restriction.create(restriction_type: restriction)}

  User.create({
    firstname: "Jackson",
    middlename: "cat",
    lastname: "Lee",
    username: "moocat",
    address: "1234 NW 9th st",
    city: "New York",
    state: "New York",
    zip: 12345,
    phonenumber: "2059890138",
    email: "12345@gmail.com",
    password: 12345678,
    password_confirmation: 12345678,
    is_lister: true
    })

  User.create({
    firstname: "Ankit",
    middlename: "moo",
    lastname: "Milk",
    username: "moosilvercat",
    address: "17834 NW 10th st",
    city: "New York",
    state: "New York",
    zip: 18375,
    phonenumber: "20512345138",
    email: "19995@gmail.com",
    password: 12345678,
    password_confirmation: 12345678,
    is_lister: true
    })

  Conversation.create({
    sender_id: 1,
    recipient_id: 2
    })

  Conversation.create({
    sender_id: 2,
    recipient_id: 1
    })

  Message.create({
    body: "moooooooooo",
    conversation_id: 1,
    user_id: 2,
    read: false
    })

  Message.create({
    body: "moooooooooo",
    conversation_id: 2,
    user_id: 1,
    read: true
    })

  
