class User < ActiveRecord::Base
has_many :salon,  dependent: :destroy
end
