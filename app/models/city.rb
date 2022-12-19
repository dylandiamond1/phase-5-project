class City < ApplicationRecord
    cities has_many :schools, :through :houses
end
