class Gossip < ApplicationRecord
  belongs_to :user
  has_many :gossip_tag_attributions
  has_many :tags, through: :gossip_tag_attributions
end
