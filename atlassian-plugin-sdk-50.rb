require 'formula'

class AtlassianPluginSdk50 < Formula
  homepage 'https://developer.atlassian.com/display/DOCS/Atlassian+Plugin+SDK+Documentation'
  url 'https://maven.atlassian.com/content/repositories/atlassian-public/com/atlassian/amps/atlassian-plugin-sdk/5.0.4/atlassian-plugin-sdk-5.0.4.tar.gz'
  # If the file goes missing from above, swap out for the one mirrored in this repo:
  # mirror 'https://cdn.rawgit.com/dvdsmpsn/homebrew-tap/master/repository-mirror/atlassian-plugin-sdk/5.0.4/atlassian-plugin-sdk-5.0.4.tar.gz'
  mirror 'https://github.com/dvdsmpsn/homebrew-tap/raw/master/repository-mirror/atlassian-plugin-sdk/5.0.4/atlassian-plugin-sdk-5.0.4.tar.gz'
  sha256 'd4381986d3c44a39b7b896ce270598d6980ae79f26f51f29cb367f80ab26f74e'

  def install
    # Remove windows files
    rm_f Dir["bin/*.bat"]

    # Install jars in libexec to avoid conflicts
    libexec.install Dir['*']

    # Symlink binaries
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  def caveats
    <<-EOS
      Thanks for installing the Atlassian Plugin SDK. For more information,
      visit https://developer.atlassian.com.

      To create a plugin skeleton using atlas-create-APPLICATION-plugin, e.g.:
        atlas-create-jira-plugin or atlas-create-confluence-plugin

      To run your plugin's host application with the plugin skeleton installed:
        atlas-run
    EOS
  end
end
