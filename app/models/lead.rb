class Lead < ApplicationRecord
  def first_name
    if self.full_name.include?(' ')
      self.full_name.split(' ').first
    else
      self.full_name
    end
  end
end
