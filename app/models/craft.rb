class Craft < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy
    
    mount_uploader :user_craft, UserCraftUploader
    is_impressionable
    acts_as_votable
end
