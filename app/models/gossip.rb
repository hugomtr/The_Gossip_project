class Gossip < ApplicationRecord
  belongs_to :user
  has_many :gossip_tag_attributions
  has_many :comments
  has_many :tags, through: :gossip_tag_attributions
  has_many :likes , dependent: :destroy
  validates :title,
  presence: true,
  length: {minimum:3,maximum:14}
  validates :content,
  presence: true
end
