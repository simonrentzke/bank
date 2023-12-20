# frozen_string_literal: true

class User < ApplicationRecord
  has_many :accounts, dependent: :destroy
  has_many :transactions, through: :accounts

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
