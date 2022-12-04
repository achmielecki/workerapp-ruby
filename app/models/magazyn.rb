class Magazyn < ApplicationRecord
  has_many :magazynier
  has_one :dyrektor
end
