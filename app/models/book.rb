class Book < ApplicationRecord
    
    belongs_to :author
    validates :name, presence: true, lenght: {minimum: 10}
    
end
