class PinTag < ActiveRecord::Base
  belongs_to :pin
  belongs_to :tag
end
