class SchoolSerializer < ActiveModel::Serializer
  attributes :id, :school_name
  has_one :cities
end
