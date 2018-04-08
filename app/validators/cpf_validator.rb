class CpfValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless CPF.valid?(value)
      record.errors.add(:cpf, 'is not a valid cpf')
    end
  end
end
