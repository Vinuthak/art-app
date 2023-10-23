class Artist < ApplicationRecord
    has_many :arts
    validates :age, numericality: true
    validates :name, format: {with: /[a-zA-z]/},uniqueness: true
    validates :experience_level, presence: true, :numericality => {:less_than => :age}
end
