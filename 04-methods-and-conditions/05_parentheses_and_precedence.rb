# typed: true
def authenticate_agent(rank, name, credentials)
    if (rank == '007' && name == 'James Bond') || credentials == 'Secret Agent'
        puts 'Access granted, please proceed to Intelligence department'
    else
        puts "Access denied, #{name}"
    end
end

authenticate_agent('007', 'James Bond', 'Spy')
authenticate_agent('008', 'Frank', 'Secret Agent')
authenticate_agent('009', 'James Bond', 'Spy')
