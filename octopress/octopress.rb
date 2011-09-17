require 'yaml'

class Octopress

  def self.config
    @config ||= lambda do
      begin
        config_file = File.join(File.dirname(__FILE__), '..', '_config.yml')
        config = YAML::load(File.open(config_file))

        # Include optional configuration file for deployment settings
        if config['deploy_config']
          deployconfig_file = File.join(File.dirname(__FILE__), '..', config['deploy_config'])
          config.merge! YAML::load(File.open(deployconfig_file)) if File.exists?(deployconfig_file)
        end
        config
      rescue
        puts "YAML Exception reading Octopress config"
      end
    end.call
  end

end