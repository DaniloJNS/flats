class DuplicateValidator < ActiveModel::Validator
  attr_accessor :option
  def initialize(options={})
    super
    @option = options
  end
  def validate(record)
    duplicate?(record)
  end

  def duplicate?(record)
    if option[:class].exists?(name: record.name)
      record.errors.add record.name, "está em uso"
      true
    else
      false
    end
  end
end
