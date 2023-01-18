def encode(plaintext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
    ciphertext_chars = plaintext.chars.map do |char|
      (65 + cipher.find_index(char).to_i).chr
    end
    return ciphertext_chars.join
  end

  #ONE CHARACTER WRONG, WHY?
  
  def decode(ciphertext, key)
    cipher = key.chars.uniq + (('a'..'z').to_a - key.chars)
 #   p "here cipher is #{cipher}"
    plaintext_chars = ciphertext.chars.map do |char|
      cipher[char.ord - 65]
    end
  #  p (65 - ciphertext.chars.ord)
 #   p "here plaintext_chars is #{plaintext_chars}"
    return plaintext_chars.join
  end


puts encode("theswiftfoxjumpedoverthelazydog", "secretkey")
# => "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
#
puts decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
# => "theswiftfoxjumpedoverthelazydog"