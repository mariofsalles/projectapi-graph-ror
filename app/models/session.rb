# frozen_string_literal: true

class Session < ApplicationRecord
  belongs_to :user

  before_create do
    self.token = SecureRandom.hex(20)
  end
end
