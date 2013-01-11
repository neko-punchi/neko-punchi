class User < ActiveRecord::Base
  def self.create_with_omniauth(auth)
    create!do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]

      case user.provider
        when "facebook" then
          user.name = auth["info"]["name"]
          user.nickname = auth["info"]["name"]
        when "google_oauth2" then
          user.name = auth["info"]["name"]
          user.nickname = auth["info"]["name"]
        when "twitter" then
          user.name = auth["info"]["nickname"]
          user.nickname = auth["info"]["nickname"]
      end

    end
  end
end