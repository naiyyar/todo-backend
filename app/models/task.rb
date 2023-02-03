class Task < ApplicationRecord
	enum :status, { in_progress: 0, completed: 1, on_hold: 2, blocked: 3 }
	
	validates :title, presence: true
end
