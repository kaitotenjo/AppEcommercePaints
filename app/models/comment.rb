class Comment < ApplicationRecord
    belongs_to :paint
    belongs_to :user
end
