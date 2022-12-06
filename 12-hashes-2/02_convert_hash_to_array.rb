# typed: strict

require 'sorbet-runtime'

module ConvertHashToArray
    extend T::Sig

    spice_girls = {
        scary: 'Melanie Brown',
        sporty: 'Melanie Chisholm',
        baby: 'Emma Bunton',
        ginger: 'Geri Halliwell',
        posh: 'Victoria Beckham'
    }

    p spice_girls.to_a # [[:scary, "Melanie Brown"], [:sporty, "Melanie Chisholm"], [:baby, "Emma Bunton"], [:ginger, "Geri Halliwell"], [:posh, "Victoria Beckham"]]
    p spice_girls.to_a.flatten # [:scary, "Melanie Brown", :sporty, "Melanie Chisholm", :baby, "Emma Bunton", :ginger, "Geri Halliwell", :posh, "Victoria Beckham"]

    power_rangers = [
        [:red, 'Jason'],
        [:black, 'Zack'],
        [:blue, 'Billy'],
        [:yellow, 'Trini'],
        [:pink, 'Kimberly']
    ]

    p power_rangers.to_h # {:red=>"Jason", :black=>"Zack", :blue=>"Billy", :yellow=>"Trini", :pink=>"Kimberly"}
    
end
