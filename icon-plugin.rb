# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class IconPlugin < Formula
  desc "Development tooling for InsightConnect plugins"
  homepage "https://rapid7.com"
  version "4.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/rapid7/icon-plugin-homebrew/releases/download/v4.12.0/icon-plugin_4.12.0_Darwin_arm64.tar.gz"
      sha256 "26e5cc8da140cc102b2fe0be775f2be844751e3b63c0844b284d2cb9bda72620"

      def install
        bin.install "icon-plugin"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rapid7/icon-plugin-homebrew/releases/download/v4.12.0/icon-plugin_4.12.0_Darwin_x86_64.tar.gz"
      sha256 "84c55660329665a2c0a8bbe2f8bc8fcb07dd76fb4ce7018a517445b435f73540"

      def install
        bin.install "icon-plugin"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/rapid7/icon-plugin-homebrew/releases/download/v4.12.0/icon-plugin_4.12.0_Linux_arm64.tar.gz"
      sha256 "6d87ff958ba8668f1f0192f2a37f12db6bee7157605f8d6a626b6c6d888572e2"

      def install
        bin.install "icon-plugin"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/rapid7/icon-plugin-homebrew/releases/download/v4.12.0/icon-plugin_4.12.0_Linux_x86_64.tar.gz"
      sha256 "425ecde919c99fbaca5e350983bb9937f398f76b2130c958ca5932a8772f89ef"

      def install
        bin.install "icon-plugin"
      end
    end
  end

  test do
    system "#{bin}/icon-plugin --version"
  end
end
