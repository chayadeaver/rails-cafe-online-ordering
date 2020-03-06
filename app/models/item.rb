class Item < ApplicationRecord
    belongs_to :category, optional: true
    belongs_to :menu, optional: true
    belongs_to :order, optional: true
    belongs_to :cart, optional: true
    validates :name, presence: true

    # validates :menu_id, presence: true, blank: false, nil: false
    # validates :category_id, presence: true, blank: false, nil: false

    # def self.muffins
    #     where()
    # end
    
end
