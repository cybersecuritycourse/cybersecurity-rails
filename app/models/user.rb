class User < ApplicationRecord
  def self.read_content
    ERB.new(YAML.load_file('lib/content.yml')['content']).result
  end
end
