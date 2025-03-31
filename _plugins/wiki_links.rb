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
      return section_link(link[1..]) if link.start_with?('#')
      return page_with_section_link(*link.split('#', 2)) if link.include?('#')

      "[#{link}](/#{link}/)"
    end

    def section_link(section_text)
      "[#{section_text}](##{generate_anchor(section_text)})"
    end

    def page_with_section_link(page_name, section)
      "[#{page_name}](/#{page_name}/##{generate_anchor(section.strip)})"
    end

    def generate_anchor(text)
      text.downcase
          .gsub(/['"]/, '') # Remove quotes
          .gsub(/[^a-z0-9]+/, '-') # Replace non-alphanumeric chars with hyphens
          .gsub(/^-+|-+$/, '') # Remove leading/trailing hyphens
    end
  end
end
