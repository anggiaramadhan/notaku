# frozen_string_literal: true

# user model attributes
# email: string, uniq
# password: string, digest
class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true,
                    format: { with: /\A[^@\s]+@[^@\s]+\z/, message: 'Invalid email format' }

  SECRET_KEY_BASE = Rails.application.credentials.secret_key_base

  has_many :notes
  has_many :folders

  # return token for jwt
  def token
    payload = { id:, email: }
    JWT.encode(payload, SECRET_KEY_BASE, 'HS256')
  end

  # create folder and note
  def create_notes(folder_id, name = 'Default')
    notes.create(name:, folder_id:)
  end
end
