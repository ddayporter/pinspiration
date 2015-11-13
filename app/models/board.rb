class Board < ActiveRecord::Base
  belongs_to :user
  has_many :pins, dependent: :destroy
end
