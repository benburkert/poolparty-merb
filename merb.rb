module PoolParty
  class Merb
    
    plugin :merb do
      # loaded is called after the plugin is initialized
      # on a cloud
      def loaded
        install
      end
      # We can use either has_gem which installs the gem with all the ri and rdocs
      # or has_gem_package which does it without the ri and rdocs.
      # Because we probably don't need the ri and rdocs, we'll install it without 
      # the ri and rdocs with has_gem_package
      def install
        has_gempackage(:name => "merb")
      end
    end
    
  end
end