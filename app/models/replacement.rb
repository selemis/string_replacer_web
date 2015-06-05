class Replacement < ActiveRecord::Base
  belongs_to :template
  belongs_to :value
end
