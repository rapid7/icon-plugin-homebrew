# This file was generated by GoReleaser. DO NOT EDIT.
class IconPlugin < Formula
  desc "Development tooling for InsightConnect plugins"
  homepage "https://rapid7.com"
  version "3.8.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/rapid7/icon-plugin-homebrew/releases/download/v3.8.6/icon-plugin_3.8.6_Darwin_x86_64.tar.gz"
    sha256 "981884f6b5c14eeac26f1b241d8d45b7551bed2930c8c14afe670d2aef407ed6"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/rapid7/icon-plugin-homebrew/releases/download/v3.8.6/icon-plugin_3.8.6_Linux_x86_64.tar.gz"
      sha256 "33457ea80de34f649d13fe607632db943f01747761d1baa2fd6c54bd56a2c85f"
    end
  end

  def install
    bin.install "icon-plugin"
  end

  test do
    system "#{bin}/icon-plugin --version"
  end
end
