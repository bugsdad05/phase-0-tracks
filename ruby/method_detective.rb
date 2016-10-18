# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# "iNvEsTiGaTiOn".<swapcase>
# => “InVeStIgAtIoN”

# "zom".<insert(index, other_str)>
# => “zoom”

# "enhance".<center(width, padstr=''>
# => "    enhance    "

# "Stop! You’re under arrest!".<upcase>
# "Stop! You’re under arrest!".<upcase!>
# => "STOP! YOU’RE UNDER ARREST!"

# "the usual".<concat>
#=> "the usual suspects"

# " suspects".<replace (other_str)>
# => "the usual suspects"

# "The case of the disappearing last letter".<chop>
# "The case of the disappearing last letter".<delete([other_str]+)>
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<delete([other_str]+)>
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<strip>
# => "Elementary, my dear Watson!"

# "z".<ord>
# => 122 
# (What is the significance of the number 122 in relation to the character z? ASCII ordinal for 'z')

# "How many times does the letter 'a' appear in this string?".<count([other_str}+)>
# => 4