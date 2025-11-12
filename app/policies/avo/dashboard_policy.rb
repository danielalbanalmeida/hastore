# app/policies/avo/dashboard_policy.rb
class Avo::DashboardPolicy < ApplicationPolicy
  # This controls who can see the main dashboard page
  def show?
    user&.admin?
  end
end