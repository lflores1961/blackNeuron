class Marca < ApplicationRecord
    validates :name,        presence: true
    validates :description, presence: true
    validates :start,       presence: true
end
