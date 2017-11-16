class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  enum account_role: [:personal, :admin, :business]

  belongs_to :account, polymorphic: true, required: true

  validates :account_role, presence: true
  before_validation :create_account, on: :create

  private

  def create_account
    self.account =
      case
      when personal?
        Personal.new
      when admin?
        Admin.new
      when business?
        #Business.new
      end
  end
end
