class User < ApplicationRecord
  has_many :comments
  has_many :reviews
  has_many :purchases
  has_many :books, :through => :purchases
  
  has_secure_password
  before_save {self.username = username.downcase}
  
  validates :password, presence: true, length: { minimum: 6 }
  validates :name,  presence: true, length: { maximum: 50 }
  validates :lastname,  presence: true, length: { maximum: 50 }
  validates :username, presence: true, length: { maximum: 255 }, uniqueness: true
  
   attr_accessor :remember_token
  
 # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  # Returns a random token.
  def User.new_token
    SecureRandom.urlsafe_base64
  end

  def remember
    self.remember_token = User.new_token
    update_attribute(:remember_digest, User.digest(remember_token))
  end
  
  # Forgets a user.
  def forget
    update_attribute(:remember_digest, nil)
  end
  
  # Returns true if the given token matches the digest.
  def authenticated?(remember_token)
    #BCrypt::Password.new(remember_digest).is_password?(remember_token)
    return false
  end
  
end
