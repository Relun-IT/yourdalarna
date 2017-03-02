class User < ApplicationRecord
  has_many :trip_routes, dependent: :destroy

  has_attached_file :avatar, styles: {
    thumb: "35x35#",
    square: "200x200#",
    medium: "300x300#"
  }, default_url: "/default_avatar.png"

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
