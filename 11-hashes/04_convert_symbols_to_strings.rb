# typed: strict

require 'sorbet-runtime'

module ConvertSymbolsToStrings
    extend T::Sig

    p :age.to_s.class
    p 'age'.to_sym.class
    p 'school_bus'.to_sym.class
end
