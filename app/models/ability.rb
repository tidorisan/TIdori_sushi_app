# frozen_string_literal: true

class Ability
  include CanCan::Ability

  def initialize(user)

    can :manage, :session
    can [:top, :index, :search, :show], Store
    cannot :favorites, Store

    # index, showアクションが実行可能
    # can :create, Store # new, createアクションが実行可能
    # can :update, Store # edit, updateアクションが実行可能
    # can :destroy, Store # destroyアクション実行可能
    # can :manage, Store # 全アクションが実行可能(resourceの7つ以外も実行可能)
    # can [:read, :create, :update, :destroy], Store #全アクションが実行可能(resourceの7つ以外は不可)

    # アクセスチェックした結果をログに出力
    Rails.logger.debug("can? :index is " + (can? :index, Store).to_s)
    Rails.logger.debug("can? :show is " + (can? :show, Store).to_s)
    Rails.logger.debug("can? :new is " + (can? :new, Store).to_s)
    Rails.logger.debug("can? :create is " + (can? :create, Store).to_s)
    Rails.logger.debug("can? :edit is " + (can? :edit, Store).to_s)
    Rails.logger.debug("can? :update is " + (can? :update, Store).to_s)
    Rails.logger.debug("can? :destroy is " + (can? :destroy, Store).to_s)
    Rails.logger.debug("can? :top is " + (can? :top, Store).to_s)


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
