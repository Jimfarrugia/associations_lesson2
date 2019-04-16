class Author < ApplicationRecord
    has_one :address, dependent: :destroy
    # has_one :address, class_name: "Address", foreign_key: "author_id"
    has_many :books, dependent: :destroy

    has_many :images, as: :imageable
end
