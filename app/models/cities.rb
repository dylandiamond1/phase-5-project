class Cities < ApplicationRecord
     has_many :schools, through: :houses
end
