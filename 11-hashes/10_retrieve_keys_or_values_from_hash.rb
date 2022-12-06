# typed: strict

require 'sorbet-runtime'

module RetrieveKeysOrValuesFromHash
    extend T::Sig

    salaries = {
        director: 100_000,
        producer: 200_000,
        ceo: 300_000
    }

    p salaries.keys
    p salaries.values
    p salaries.values.uniq
end
