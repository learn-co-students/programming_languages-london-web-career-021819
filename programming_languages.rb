def reformat_languages(languages)
  # your code here
languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}


def reformat_languages(languages)
  #build a new hash and equate it to an empty array
   new_array = []

  languages.each do |style, data| #style: oo, functional. data: hash
    binding.pry

    data.each do |lang_name, describe|
      binding.pry

       if new_hash[lang_name] == nil
          new_hash[lang_name] = describe
          #set style key empty so we can add the style later
          new_hash[lang_name][:style] = []
        end
        #add style to new_hash

        new_hash[lang_name][:style] << style
    end
  end
  new_hash
end
#Iterating over the hash and build a new hash that has the languages as keys
