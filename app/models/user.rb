class User < ActiveRecord::Base

  before_create do |user|
    user.api_key = User.generate_api_key
  end

  def self.generate_api_key
    loop do
      token = SecureRandom.hex
      break token unless User.exists?(api_key: token)
    end
  end

end