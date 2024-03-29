# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  name                   :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  role                   :integer          default("ordinary")
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:authsch]

  validates :name, presence: true
  has_many :enquiries, dependent: :destroy
  has_many :pictures, through: :enquiries

  enum :role, [ :ordinary, :member, :editor, :admin ]

  def self.from_omniauth(auth)
    data = auth.extra.raw_info
    user = User.find_by(email: data.mail)
      
    unless user
    user = User.create(name: data.displayName,
                        email: data.mail,
                        password: Devise.friendly_token[0,20])
    end
    user
  end
end
