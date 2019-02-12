require 'pry'
def reformat_languages(languages)
  # your code here
  new_hash = {}
  array = []
  languages.each do |key, val|
    temp = key
    val.each do |k2, v2|
      new_hash[k2] = {}
      if k2.to_s == "javascript"
        array.push(temp)
        new_hash[k2][:style] = array
      else
        new_hash[k2][:style] = [temp]
      end

      v2.each do |k3, v3|
        new_hash[k2][k3] = v3
      end

    end

  end
    new_hash
    #binding.pry
end
