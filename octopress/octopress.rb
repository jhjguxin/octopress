require 'yaml'

class Octopress
  @@config_file = File.join(File.dirname(__FILE__), '..', '_config.yml')
  @@config = {}

  def self.load_config
    #begin
      yaml = YAML.load(File.read(@@config_file)) #
      yaml.each { |k,v| @@config[k.to_sym] = v }
    #rescue => e
    #  puts "YAML Exception reading Jekyll config"
    #end
  end

  def self.config
    self.load_config if @@config.empty?
    @@config
   end 

end