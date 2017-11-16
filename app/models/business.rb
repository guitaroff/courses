class Business < ApplicationRecord
  has_one :user, as: :account
end
