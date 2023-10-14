class Artist < ApplicationRecord
    validates :age, numericality: true
end
