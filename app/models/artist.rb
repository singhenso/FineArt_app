class Artist < ActiveRecord::Base
  has_many :items
  belongs_to :gallery
end
