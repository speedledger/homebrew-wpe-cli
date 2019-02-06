# This file was generated by GoReleaser. DO NOT EDIT.
class WpeCli < Formula
  desc "WP Engine Command Line Interface"
  homepage "https://wpengine.com"
  url "https://s3-us-east-2.amazonaws.com/wpeclibinaries/wpe-cli/v0.10.7/wpe-cli_0.10.7_darwin_amd64.tar.gz"
  version "0.10.7"
  sha256 "6784bc0d5824e4cb806b00a1b6cf243e0f60f266982f8a51ea1235595755b009"

  def install
    bin.install "wpe"
  end

  test do
    system "#{bin}/wpe version"
  end
end
