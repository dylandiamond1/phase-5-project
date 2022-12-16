class ArchitectSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :contact_number, :website_url
  has_one :houses
end
