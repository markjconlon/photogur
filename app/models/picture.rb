class Picture < ApplicationRecord
  validates :artist, presence: true
  validates :title, length: { in: 3..20,
    wrong_length: "%{count}" }
  validates :url, presence: true, uniqueness: true

end
