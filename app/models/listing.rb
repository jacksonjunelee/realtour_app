class Listing < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :amenities
  has_and_belongs_to_many :restrictions

  # has_attached_file :floor_map, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  # validates_attachment_content_type :floor_map, content_type: /\Aimage\/.*\Z/

 #  has_attached_file :pic, :path => ":user_name/:original_picture_id/:picture_type(:style)/:id/:basename.:extension", :storage => :s3, :bucket => 'selfmadepictures', :url =>':s3_domain_url', :s3_host_alias => 'd1wa66qgcl7v1x.cloudfront.net'
 # validates_attachment_content_type :pic, content_type: [/\Aimage\/.*\Z/, /\Avideo\/.*\Z/]

  scope :borough, -> (borough) { where borough: borough }
  scope :price, -> (min_price, max_price) { where price: min_price..max_price}
  scope :guest_capacity, -> (guest_capacity) { where('guest_capacity <= ?', guest_capacity) }
  scope :rent_or_sublease, -> (rent_or_sublease) { where rent_or_sublease: rent_or_sublease}
  # scope :pets, -> (pets) { where pet: min_price..max_price}

end


  # scope :location, -> (location_id) { where location_id: location_id }
  # scope :starts_with, -> (name) { where("name like ?", "#{name}%")}
  #
  # filter by boroughs
  # filter by prices
  # filter by amenities
  # filter by guest capacity
  # filter by pets vs no pets
  # filter by rent vs sub lease
