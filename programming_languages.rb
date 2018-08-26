def reformat_languages(languages)
  new_hash = {}
  
  
    languages.each_with_object({}) do |(k, v), inverted_languages|
        if k.is_a? Hash
            k = recursive_invert(k)
        end
        inverted_languages[v] = k 
    end
end

