# typed: strict

require 'sorbet-runtime'

module RemoveArrayItems
    extend T::Sig

    # Remove array items that exists in other array
    p [1, 2, 3, 4, 5] - [1, 3, 5] # [2, 4]

    # this removes [1, 2]
    # p [1, 1, 2, 2, 3, 3].-([1, 2]) # [3, 3]

    registered_users = %w[user1 user2 user3]
    deleted_users = %w[user1 user2]
    active_users = registered_users - deleted_users
end
