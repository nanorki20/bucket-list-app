class BucketListSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name
  belongs_to :user
  has_many :activities
end
