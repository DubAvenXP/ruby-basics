# typed: strict

require 'sorbet-runtime'

module Hashes
    extend T::Sig

    nfl_roster = {
        'Tom Brady' => 'New England Patriots',
        'Tony Romo' => 'Dallas Cowboys',
        'Rob Gronkowski' => 'New England Patriots'
    }

    nba_roster = {
        'Cleveland Cavaliers' => ['LeBron James', 'Kevin Love', 'Kyrie Irving'],
        'Golden State Warriors' => ['Stephen Curry', 'Klay Thompson', 'Kevin Durant']
    }

    p nfl_roster['Tom Brady']
    p nfl_roster['Tom brady'] # nil # case sensitive
    p nfl_roster['Lionel Messi'] # nil
    puts
    p nba_roster['Golden State Warriors']
end
