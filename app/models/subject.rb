class Subject < ApplicationRecord
    validates :name, :credits, :tuition, presence: true
end
