class Journal < ApplicationRecord
  has_many :entries, dependent: :destroy

  validates :title, presence: true, length: { minimum: 2, maximum: 25 }
end
