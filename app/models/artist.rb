class Artist < ActiveRecord::Base
  has_many :items, dependent: :destroy
  belongs_to :gallery
end
