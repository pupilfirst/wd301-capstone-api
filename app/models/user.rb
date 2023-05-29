class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :auth_token_hash, uniqueness: true, presence: true

  def generate_auth_token_hash
    loop do
      token = SecureRandom.hex(32)
      break token unless User.exists?(auth_token_hash: Digest::SHA256.hexdigest(token))
    end
  end

end
