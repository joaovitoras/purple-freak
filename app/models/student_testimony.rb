class StudentTestimony < ApplicationRecord
  include AASM

  aasm column: :status do
    state :pending, initial: true
    state :accepted
    state :rejected

    event :accept do
      transitions from: :pending, to: :accepted
    end

    event :reject do
      transitions from: [:pending, :accepted], to: :rejected
    end
  end
end
