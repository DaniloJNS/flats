class PropertyLocation < ApplicationRecord
  include ActiveModel::Validations
  validates_with DuplicateValidator
  has_many :properties
  validates :name, presence: true
end

