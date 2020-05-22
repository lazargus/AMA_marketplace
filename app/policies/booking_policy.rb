class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    return true
  end

  def create?
    return true
  end

  def update?
    true
  end

  def destroy?
    true
  end
end
