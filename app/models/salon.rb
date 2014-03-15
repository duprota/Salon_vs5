class Salon < ActiveRecord::Base
has_many :stylists
has_many :comments,  dependent: :destroy

belongs_to :user

has_many :services, dependent: :destroy

end
