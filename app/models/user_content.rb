class UserContent
  def self.read_content
    return YAML.load(File.read(File.expand_path('lib/content.yml' )))
  end
end