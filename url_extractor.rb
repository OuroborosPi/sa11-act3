def extract_urls(text)
    pattern = /(?i)\b(?:https?|ftp):\/\/\S+/ # regex pattern for URLs
    urls = text.scan(pattern) # Scan the text using the regex pattern to find all URLs
    urls.each { |url| puts url } # Output each URL found on a new line
  end
  
  sample_text = "Visit our site at http://www.example.org for more information.
  Check out our search page at https://example.com/search?q=ruby+regex. Don’t
  forget to ftp our resources at ftp://example.com/resources."
  extract_urls(sample_text)
  