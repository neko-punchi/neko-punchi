class User < ActiveRecord::Base
  def self.create_with_omniauth(auth)
    create!do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]

      if user.provider == ("facebook" || "google_oauth2")
        user.name = auth["info"]["name"]
      else
        user.name = auth["info"]["nickname"]
      end

    end
  end
end