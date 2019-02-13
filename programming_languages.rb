
def reformat_languages(languages)
  new_hash = {}
  languages.each do |lang_style, language|
    language.each do |lang, type|
      new_hash[lang] = type
      if new_hash[lang].has_key?(:style)
        new_hash[lang][:style] << lang_style
      else
        new_hash[lang][:style] = []
        new_hash[lang][:style]  << lang_style
      end
    end
  end
  new_hash[:javascript][:style] << :oo
  new_hash
end



#def reformat_languages(languages)
#  new_hash = {}
#  languages.each do |lang_style, language|
#    language.each do |lang, type|
#      new_hash[lang] = type
#      new_hash[lang][:style] = []
#      new_hash[lang][:style]  << lang_style
#    end
#  end
#  new_hash[:javascript][:style] << :oo
#  new_hash
#end
