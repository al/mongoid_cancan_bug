class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    # NOTE: See the "Block Conditions with Scopes" section of
    #       https://github.com/ryanb/cancan/wiki/Defining-Abilities-with-Blocks
    #       for an explanation of the DSL syntax used below.

    # Comment out either one of the following 2 rules to avoid the error.

    # Comment me out and you should see a 2 document response.
    can [:read], Profile, user.readable_profiles do |profile|
      true
    end

    # Comment me out and you should see a 4 document response.
    can [:manage], Profile, user.manageable_profiles do |profile|
      profile.user_id == user._id
    end
  end
end
