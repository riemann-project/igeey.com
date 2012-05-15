# encoding: utf-8
class Venue < ActiveRecord::Base
  include VenueAssociable
  include VenueCountable

  CATEGORIES_HASH = ActiveSupport::OrderedHash[
    'nature','自然景观',
    'living','居住区',
    'public','公共设施',
    'education','教育场所',
    'service','服务场所',
    'business','商业场所',
    'school','乡村小学',
    'city','城市',
    'others','其他'
  ]

  has_attached_file :cover, :styles => {:_48x48 => ["48x48#",:jpg],:_100x100 => ["100x100#",:jpg]},
    :url=>"/media/:attachment/venues/:id/:style.jpg",
    :default_style=> :_100x100,
    :default_url=>"/defaults/:attachment/venue/:style.png"

  self.per_page = 10

  validates :name,:latitude,:longitude,:creator_id, :presence   => true
  #validates :intro,:length     => { :within => 1..100,:message => '填请写100字以内的简介' }
  validates :category,:inclusion => { :in => CATEGORIES_HASH.keys}
  validates :cover_file_name,:format => { :with => /([\w-]+\.(gif|png|jpg))|/ }

  default_scope :order => 'follows_count desc'

  # def category_name # unused methods
  #   CATEGORIES_HASH[self.category]
  # end

  def init_geocodding
    begin
      response = Net::HTTP.get_response(URI.parse("http://maps.googleapis.com/maps/api/geocode/json?address=#{URI.escape(self.address)},#{URI.escape(self.geo.name)}&sensor=false"))
      json = ActiveSupport::JSON.decode(response.body)
      self.latitude, self.longitude = json["results"][0]["geometry"]["location"]["lat"], json["results"][0]["geometry"]["location"]["lng"]
    rescue
      self.latitude, self.longitude = self.geo.latitude, self.geo.longitude
    end
  end

  def tag_list
    self.tags.uniq.map(&:name)
  end

  def self.generate_json
    require 'json'
    venues = Venue.all
    venues_json = []
    venues.each do |v|
      venues_json << {"venue" => {:id => v.id,
        :category => v.category,
        :name => v.name,
        :latitude => v.latitude,
        :longitude => v.longitude,
      }}
    end

    file = File.open("#{Rails.root.to_s}/public/json/venues.json", 'w')
    file.write venues_json.to_json
    file.close    
  end

  define_index do
    indexes name
    indexes intro
    indexes geo.name,:as => :city
    indexes address
    has geo_id
    has follows_count
  end

end
