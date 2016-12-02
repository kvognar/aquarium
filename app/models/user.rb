# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  username      :string(255)      not null
#  password_hash :string(255)      not null
#  session_token :string(255)      not null
#  created_at    :datetime
#  updated_at    :datetime
#

class User < ActiveRecord::Base
  has_many :impressions
  has_many :notes, through: :impressions

  attr_reader :password

  validates_uniqueness_of :username, :session_token
  validates_presence_of :username, :session_token
  validates :password, length: { minimum: 6, allow_nil: true }

  after_initialize :ensure_session_token

  def password=(password)
    @password=password
    self.password_hash = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_hash).is_password?(password)
  end

  def reset_session_token!
    self.session_token = generate_token
    self.save!
    self.session_token
  end

  private

  def ensure_session_token
    self.session_token ||= generate_token
  end

  def generate_token
    SecureRandom::urlsafe_base64(16)
  end

end
