module Jekyll
    module Scholar
      class BoldName < BibTeX::Filter
        def apply(entry)
          first_names = @config['scholar']['first_name']
          last_names = @config['scholar']['last_name']
  
          first_names.each do |first_name|
            entry.author.each do |author|
              if author.first.to_s.include?(first_name) && last_names.include?(author.last.to_s)
                author.prefix_first "\textbf{"
                author.suffix_first "}"
                author.prefix_last "\textbf{"
                author.suffix_last "}"
              end
            end
          end
        end
      end
    end
  end
  