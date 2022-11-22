class Article < ApplicationRecord
    validates :title, presence: true
    validates :intro, presence: true
    validates :content, presence: true
end
