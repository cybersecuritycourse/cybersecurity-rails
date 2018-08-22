class User < ApplicationRecord
  def self.read_content
    if YAML.load_file('lib/content.yml')['content'].include?('SECRET')
      return "no thanks!"
    end
  end
end
