someday = Time.now

p someday.strftime('%Y-%m-%d')
p someday.strftime('%d/%m/%Y')
p someday.strftime('%d-%m-%Y')
p someday.strftime('%B %d %H:%M:%S')

# %b Abbrevated month name (Jan)
# %B Full month name (January)
# %d Day of the month (1..31)
# %j Day of the year (1..366); so-called "Julian date"
# %m Month as number (1..12)
# %w Day of the week as number (0..6)
# %x Preferred representation for the date alone, no time
# %y Two-digit year (00..99) (No century)
# %Y Four-digit year
