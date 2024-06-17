# frozen_string_literal: true

class User < ApplicationRecord
  has_many :products, dependent: :destroy
end
