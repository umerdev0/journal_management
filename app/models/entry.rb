class Entry < ApplicationRecord
  belongs_to :journal

  validates :body, presence: true, length: { minimum: 5 }
end
