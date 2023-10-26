class Art < ApplicationRecord
    belongs_to :artist
    validates :art_name, format: {with: /[a-zA-Z]/},uniqueness: true
    validates :price, :numericality => {greater_than: 0}
    validates :year, presence: true, :numericality => true, length: {is: 4}
end
