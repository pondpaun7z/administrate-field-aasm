class Order < ApplicationRecord
  include AASM

  enum state: %i[pending confirmed shipped completed]

  aasm column: :state, enum: true do
    state :pending, initial: true
    state :confirmed
    state :shipped
    state :completed

    event :confirm do
      transitions from: :pending, to: :confirmed
    end

    event :ship do
      transitions from: :confirmed, to: :shipped
    end

    event :complete do
      transitions from: :shipped, to: :completed
    end
  end
end
