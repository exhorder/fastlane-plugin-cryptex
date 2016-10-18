module Fastlane
  module Actions
    class CryptexAction < Action
      def self.run(params)
        UI.message("The cryptex plugin is working!")

        params.load_configuration_file("Cryptexfile")

        Cryptex::Runner.new.run(params)
      end

      def self.description
        "Android Key Store Git repo"
      end

      def self.authors
        ["Helmut Januschka"]
      end

      def self.available_options
        Cryptex::Options.available_options
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Platforms.md
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
