class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :email,
            presence: true,
            uniqueness: true,
            format: {
              with: URI::MailTo::EMAIL_REGEXP
            }
  validates :auth_token_hash, uniqueness: true, presence: true

  def generate_auth_token
    token = SecureRandom.urlsafe_base64(64)
    self.auth_token_hash = Digest::SHA256.base64digest(token)
    self.save!

    token
  end
end
