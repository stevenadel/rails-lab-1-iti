class Author < ApplicationRecord
    validates :name, :DOB, :email, :phone_number, presence: true
    validates :email, format: { with: URI::Mail::RFC2822_REGEX }
end
