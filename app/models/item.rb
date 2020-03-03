class Item < ApplicationRecord
    belongs_to :category
    belongs_to :menu
    belongs_to :order
    belongs_to :cart
    validates :name, presence: true
    validates :name, uniqueness: true

end
