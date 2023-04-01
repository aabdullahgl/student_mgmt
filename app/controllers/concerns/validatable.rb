module Validatable
  extend ActiveSupport::Concern

included do
  validates :name,:description , presence: true
end

end
