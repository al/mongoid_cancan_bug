class Profile
  include Mongoid::Document
  include Mongoid::Timestamps

  field :n, as: :name, type: String
  field :u, as: :user_id, type: Moped::BSON::ObjectId

  validates :name, presence: true
  validates :user_id, presence: true
end
