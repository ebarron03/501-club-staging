class User < ApplicationRecord
  ROLES = %w[admin editor unauthorized].freeze

  validates :email, presence: true, uniqueness: true
  validates :role, presence: true, inclusion: { in: ROLES }

  def admin?
    role == "admin"
  end

  def editor?
    role == "editor"
  end

  def unauthorized?
    role == "unauthorized"
  end

  def authorized?
    admin? || editor?
  end
end
