def make_snippet(string)
    output = string.split(" ")
    fail "Sentence not long enough" if output.length < 5
    cut_string = output[0, 5]
    return cut_string.join(" ") + "..."
end

