class Item < ApplicationRecord
    belongs_to :category, optional: true
    belongs_to :menu, optional: true
    belongs_to :order, optional: true
    belongs_to :cart, optional: true
    validates :name, presence: true
    validates :price, presence: true

    # validates :menu_id, presence: true, blank: false, nil: false
    # validates :category_id, presence: true, blank: false, nil: false

    def self.by_menu(menu_id)
        where(menu: menu_id)
    end

    def self.by_category(category_id)
        where(category: category_id)
    end
    
end
