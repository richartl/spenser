class Transaction < ApplicationRecord
  belongs_to :transable, polymorphic: true
end
