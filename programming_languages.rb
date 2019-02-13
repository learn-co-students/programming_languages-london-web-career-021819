
def reformat_languages(languages)
  new_hash = {}
  languages.each do |lang_style, language|
    language.each do |lang, type|
      if !(new_hash[lang])
        new_hash[lang] = type
        new_hash[lang][:style] = []

      end
      new_hash[lang][:style] << lang_style
    end
  end
  new_hash
end
