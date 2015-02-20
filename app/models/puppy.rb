class Puppy < ActiveRecord::Base
  validates :name, :age, :breed, presence: true
  validates :age, numericality: true
end
