class Note < ApplicationRecord
  belongs_to :folder, optional: true
  belongs_to :user
end
