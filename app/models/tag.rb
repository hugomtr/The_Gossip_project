class Tag < ApplicationRecord
  has_many :gossip_tag_attributions
  has_many :gossips, through: :gossip_tag_attributions
end
