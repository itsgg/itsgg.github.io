# frozen_string_literal: true

module Jekyll
  # Converts wiki-style links [[page]] and [[page#section]] to standard markdown links
  class WikiLinks < Jekyll::Generator
    def generate(site)
      site.pages.each { |page| process_wiki_links(page) }
      site.posts.docs.each { |post| process_wiki_links(post) }
    end

    private

    def process_wiki_links(page)
      page.content = page.content.gsub(/\[\[(.*?)\]\]/) do
        convert_wiki_link(::Regexp.last_match(1).strip)
      end
    end

    def convert_wiki_link(link)
      if link.start_with?('#')
        anchor = link[1..].gsub(/\s+/, '-').downcase
        "[#{link[1..]}](##{anchor})"
      elsif link.include?('#')
        page_name, anchor = link.split('#', 2)
        "[#{page_name}](/#{page_name}/##{anchor.strip.gsub(/\s+/, '-').downcase})"
      else
        "[#{link}](/#{link}/)"
      end
    end
  end
end
