module WikisHelper

  def wiki_style(txt)
    txt.blank? ? '' : Maruku.new(wiki_words(txt)).to_html
  end

  def wiki_words(txt)
    txt.gsub /(\[\[.*?\]\])/ do |lk|
      link = lk[2..-3].gsub(/([A-Z]+|[A-Z][a-z])/){|x| ' ' + x }.strip
      exist = Wiki.where(:name => link).take
      if exist.blank?
        "[#{link}?](/wikis/new)"
      else
        "[#{link}](/wikis/#{exist.id})"
      end
    end
  end

end
