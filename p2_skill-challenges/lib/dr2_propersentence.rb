# As a user
# So that I can improve my grammar
# I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

def propersentence(text)
    if (text[0].match /[[:upper:]]/) && [".", "?", "!"].include?(text[-1])
        true
    else
        false
    end
end