class Contact < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, uniqueness: true

  has_many :contact_groups
  has_many :groups, through: :contact_groups

  belongs_to :user

  def full_name
    "#{first_name} #{middle_name} #{last_name}"
    # first_name + " " + last_name
  end
end
