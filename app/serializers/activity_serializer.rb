class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :category_id, :description, :image_url, :location
  belongs_to :category
end
