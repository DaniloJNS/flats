# require_relative 'duplicate_validator'
class PropertyType < ApplicationRecord
  include ActiveModel::Validations
  validates_with DuplicateValidator
  has_many :properties
  validates :name, presence: true
end
