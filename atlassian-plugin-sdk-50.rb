require 'formula'

class AtlassianPluginSdk50 < Formula
  homepage 'https://developer.atlassian.com/display/DOCS/Atlassian+Plugin+SDK+Documentation'
  url 'https://maven.atlassian.com/content/repositories/atlassian-public/com/atlassian/amps/atlassian-plugin-sdk/5.0.4/atlassian-plugin-sdk-5.0.4.tar.gz'
  # If the file goes missing from above, swap out for the one mirrored in this repo:
  # url 'https://cdn.rawgit.com/dvdsmpsn/homebrew-tap/master/repository-mirror/altassian-plugin-sdk/5.0.4/atlassian-plugin-sdk-5.0.4.tar.gz'
  sha1 '3ef24d40ef6924ef535ccff7f91d0f2ca10fbccf'

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
