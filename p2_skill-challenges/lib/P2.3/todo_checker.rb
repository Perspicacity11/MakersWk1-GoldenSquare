def todo_checker(text)
    if text.split(" ").include?("#T0D0")
        return true
    else
        return false
    end
end