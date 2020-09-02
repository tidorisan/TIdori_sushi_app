# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

    can :manage, [:session, :menus, :store_admin_application, :home, :stores]
    can [:search, :top, :show], :store
    can :read, :store_buzz
    can :index, :coupon

    if user.present?

        if user.customer?
            can :manage, [:session, :store, :menus, :store_buzz, :store_admin_application,
             :home, :coupon]
             can :read, :favorite, user_id: user.id
             can :manage, :user, user_id: user.id
        end

        if user.store_admin?
            can :manage, :store, user_id: user.id
        end

        if user.site_admin?
            can :manage, :all
        end


    end

    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
