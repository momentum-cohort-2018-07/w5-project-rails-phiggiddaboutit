class Story < ApplicationRecord
    belongs_to :user, optional: true
    has_many :comments, as: :commentable
    validates :title, :text, presence: true
end
