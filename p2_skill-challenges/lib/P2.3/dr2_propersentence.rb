def propersentence(text)
    if (text[0].match /[[:upper:]]/) && [".", "?", "!"].include?(text[-1])
        true
    else
        false
    end
end