class StudentTestimony < ApplicationRecord
  include AASM

  enum kind: {
    youtube: "youtube",
    text: "text",
  }

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
