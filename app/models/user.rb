class User
  include Mongoid::Document
  include Mongoid::Timestamps

  field :n, as: :name, type: String
  
  def readable_profiles
    Profile.all
  end

  def manageable_profiles
    Profile.where(user_id: _id)
  end
end
