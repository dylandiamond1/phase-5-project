class HouseSerializer < ActiveModel::Serializer
  attributes :id, :address, :state, :zip, :sq_ft, :image, :user_id
  has_one :user
end
