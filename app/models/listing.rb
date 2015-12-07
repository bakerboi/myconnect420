class Listing < ActiveRecord::Base
    has_attached_file :image, styles: { medium: "200x>", thumb: "200x200>" }, default_url: "default.jpeg"
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  end
