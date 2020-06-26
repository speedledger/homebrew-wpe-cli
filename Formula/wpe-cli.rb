# This file was generated by GoReleaser. DO NOT EDIT.
class WpeCli < Formula
  desc "WP Engine DevKit Command Line Interface"
  homepage "https://wpengine.com"
  version "0.18.3"
  bottle :unneeded

  if OS.mac?
    url "https://s3-us-east-2.amazonaws.com/wpeclibinaries/wpe-cli/v0.18.3/wpe-cli_0.18.3_darwin_amd64.tar.gz"
    sha256 "bc2058dd3909581f1fc87752965790744afc2160b9f31c228795c1d435b82b90"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://s3-us-east-2.amazonaws.com/wpeclibinaries/wpe-cli/v0.18.3/wpe-cli_0.18.3_linux_amd64.tar.gz"
      sha256 "a1f6efbacb90ce54dce4d12bed12557ef2ba312916b041b4d50b74d4f33f2f87"
    end
  end
  
  devel do
    url "https://s3-us-east-2.amazonaws.com/wpeclinightly/wpe-cli/nightly/wpe-cli_nightly_darwin_amd64.tar.gz"
  end

  def install
    bin.install "wpe"
  end

  test do
    system "#{bin}/wpe version"
  end
end
