require 'formula'

class AtlassianPluginSdk42 < Formula
  homepage 'https://developer.atlassian.com/display/DOCS/Atlassian+Plugin+SDK+Documentation'
  url 'http://maven.atlassian.com/content/repositories/atlassian-public/com/atlassian/amps/atlassian-plugin-sdk/4.2.19/atlassian-plugin-sdk-4.2.19.tar.gz'
  sha1 'dbb6dca8955797db68bd1028b5cc6e827bcab609'

  def install
    # Remove windows files
    rm_f Dir["bin/*.bat"]

    # Install jars in libexec to avoid conflicts
    libexec.install Dir['*']

    # Symlink binaries
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def caveats
    <<-EOS.undent
      Thanks for installing the Atlassian Plugin SDK. For more information,
      visit https://developer.atlassian.com.

      To create a plugin skeleton using atlas-create-APPLICATION-plugin, e.g.:
        atlas-create-jira-plugin or atlas-create-confluence-plugin

      To run your plugin's host application with the plugin skeleton installed:
        atlas-run
    EOS
  end
end