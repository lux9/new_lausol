class Dictionary < ApplicationRecord
  validates :word, uniqueness: true
end
