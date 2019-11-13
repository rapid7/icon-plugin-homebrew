# This file was generated by GoReleaser. DO NOT EDIT.
class IconPlugin < Formula
  desc "Development tooling for InsightConnect plugins"
  homepage "https://rapid7.com"
  version "3.8.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/rapid7/icon-plugin-homebrew/releases/download/v3.8.3/icon-plugin_3.8.3_Darwin_x86_64.tar.gz"
    sha256 "4e6065e958c1574e6cc4d23d3ce0fa877914f01e591a57dce153b82670696e7b"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/rapid7/icon-plugin-homebrew/releases/download/v3.8.3/icon-plugin_3.8.3_Linux_x86_64.tar.gz"
      sha256 "216d2e7d7679953029c187d37cf4fb643955a43bdac408f3acfce92dab5b818e"
    end
  end

  def install
    bin.install "icon-plugin"
  end

  test do
    system "#{bin}/icon-plugin --version"
  end
end
