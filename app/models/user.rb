class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #validates_presence_of :hic_name, :hic_address_one, :hic_city,
               #:hic_postal_code, :hic_country, :hic_telephone,
               #:privacy_contact_name, :approver

  has_many :accesses, dependent: :destroy
end
