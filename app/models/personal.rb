class Personal < ApplicationRecord
  has_one :user, as: :account
end
