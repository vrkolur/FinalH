class Notice < ApplicationRecord
    belongs_to :sender, class_name: 'User'
    belongs_to :recipient, class_name: 'User'
    validates :msg, presence: true
end
