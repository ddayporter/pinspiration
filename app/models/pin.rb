class Pin < ActiveRecord::Base
  belongs_to :user
  belongs_to :board
  has_many :pin_tags
  has_many :tags, through: :pin_tags
end
