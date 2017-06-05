require 'formula'

class AtlassianPluginSdk61 < Formula
  homepage 'https://developer.atlassian.com/display/DOCS/Atlassian+Plugin+SDK+Documentation'
  url 'https://maven.atlassian.com/content/repositories/atlassian-public/com/atlassian/amps/atlassian-plugin-sdk/6.1.0/atlassian-plugin-sdk-6.1.0.tar.gz'
  mirror 'https://cdn.rawgit.com/dvdsmpsn/homebrew-tap/master/repository-mirror/atlassian-plugin-sdk/5.0.4/atlassian-plugin-sdk-5.0.4.tar.gz'
  sha256 '3228aa6a742d7b28fa1374102fbf7c7c900e4f42870ea1ba22354c83ed1c23a1'

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
