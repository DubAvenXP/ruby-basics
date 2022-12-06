# typed: strict

require 'sorbet-runtime'

module Hashes
    extend T::Sig

    empty_hash = {}
    empty_array = []

    p empty_hash
    p empty_hash.class

    p empty_array.instance_of?(empty_hash.class)
end
