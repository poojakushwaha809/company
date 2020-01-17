class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :my_company
  belongs_to :role

    mount_uploader :image, UserUploader
    has_and_belongs_to_many :regions

end
