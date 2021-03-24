class Diary < ApplicationRecord
enum kind: {publlic:1, privatte:2}

has_many :notes, dependent: :destroy
validates :title, presence: true, length: { minimum: 1 }
validates :kind, presence: true
end
