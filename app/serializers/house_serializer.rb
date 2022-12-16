class HouseSerializer < ActiveModel::Serializer
  attributes :id, :address, :state, :zip, :sq_ft
  has_one :users
end
