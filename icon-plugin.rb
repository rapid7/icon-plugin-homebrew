# This file was generated by GoReleaser. DO NOT EDIT.
class IconPlugin < Formula
  desc "Development tooling for InsightConnect plugins"
  homepage "https://rapid7.com"
  version "4.6.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/rapid7/icon-plugin-homebrew/releases/download/v4.6.0/icon-plugin_4.6.0_Darwin_x86_64.tar.gz"
    sha256 "86e09556e299b718606b79b4e962ec536c6f86db3cf97b2e491622a24ed3cce4"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/rapid7/icon-plugin-homebrew/releases/download/v4.6.0/icon-plugin_4.6.0_Linux_x86_64.tar.gz"
      sha256 "7fc63ef1829d17d0dcad48167eceb066d1e07f38cf5af727c010359efbbe0727"
    end
  end

  def install
    bin.install "icon-plugin"
  end

  test do
    system "#{bin}/icon-plugin --version"
  end
end
