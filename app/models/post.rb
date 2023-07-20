class Post < ApplicationRecord
    validates :title, presence: true
    validates :category, inclusion: { in: ['Fiction', 'Non-Fiction'] }
    validates :content, length: {minimum: 100}
end
#1. The title cannot be blank
# 2. The category is either `"Fiction"` or `"Non-Fiction"`
# 3. The content is at least 100 characters long