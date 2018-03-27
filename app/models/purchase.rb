class Purchase < ApplicationRecord
  belongs_to :User
  belongs_to :Ticket
end
