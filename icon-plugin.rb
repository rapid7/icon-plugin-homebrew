# This file was generated by GoReleaser. DO NOT EDIT.
class IconPlugin < Formula
  desc "Development tooling for InsightConnect plugins"
  homepage "https://rapid7.com"
  version "3.3.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/rapid7/icon-plugin-homebrew/releases/download/v3.3.0/icon-plugin_3.3.0_Darwin_x86_64.tar.gz"
    sha256 "c54ed5963b5038d013a03f5beb95140beb34d62758146c57673022e0da047da4"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/rapid7/icon-plugin-homebrew/releases/download/v3.3.0/icon-plugin_3.3.0_Linux_x86_64.tar.gz"
      sha256 "8b6be2c2d4234e8262809e520dd5dd7f6354a36c9fb4bc0e8d0f5f99a6e93940"
    end
  end

  def install
    bin.install "icon-plugin"
  end

  test do
    system "#{bin}/icon-plugin --version"
  end
end
