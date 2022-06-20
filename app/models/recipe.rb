class Recipe < ApplicationRecord
  after_create_commit { broadcast_prepend_to "recipes" }
  after_update_commit { broadcast_replace_to "recipes" }
  after_destroy_commit { broadcast_remove_to "recipes" }

  validates :problem, presence: true
  validates :solution, presence: true
  validates :discussion, presence: true
    validates :title, presence: true
  validates :introduction, presence: true

    has_one_attached :banner
  validates :banner, presence: true
end
