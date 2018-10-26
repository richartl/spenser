module Transable
  extend ActiveSupport::Concern
  included do
    has_many :transactions, as: :transable
  end
end
