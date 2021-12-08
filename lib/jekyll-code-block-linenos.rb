Jekyll::Hooks.register :documents, :pre_render do |doc|
  next if doc['ext'] != ".md"

  doc.content = replace_code_block_with_highlight_tag_including_linenos(doc.content)
end

def replace_code_block_with_highlight_tag_including_linenos(content)
  regex = /[[:blank:]]*\`\`\`(.*)[[:blank:]](.*)\n([\w\W]*?)[[:blank:]]*\`\`\`[[:blank:]]*(\n|$)/

  content = content.gsub(regex) { |_|
    match = Regexp.last_match
    language = match[1].strip

    if match and language.length > 0 and match[2].strip == "linenos"
      res = "{% highlight #{language} linenos %}"
      res += "\n#{match[3]}{% endhighlight %}#{match[4]}"
    else
      res = match
    end
    res
}
  return content
end 
