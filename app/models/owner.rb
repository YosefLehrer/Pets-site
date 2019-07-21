class Owner < ApplicationRecord
    has_one_attached :image
    has_many :pets, :dependent => :destroy
end
