class HouseSerializer < ActiveModel::Serializer
  attributes :id, :address, :state, :zip, :sq_ft, :image
  has_one :user
end
