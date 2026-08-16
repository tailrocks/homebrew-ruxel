# source-sha: 861d640a02bac5d223be24657c9db79360a2e2e0
class RuxelPreview < Formula
  desc "Fast Rust executor for a closed Ansible workload"
  homepage "https://github.com/tailrocks/ruxel"
  version "0.1.0-preview.81+861d640"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-aarch64-apple-darwin.tar.gz"
      sha256 "6bf7945538d775789b5d6a62d6a4051dfb750f3c0d851c93b991d4f9e42c84ad"
    end
    on_intel do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-x86_64-apple-darwin.tar.gz"
      sha256 "3704a3195c76fe945d3b8a93f39fcc78882a033edb3529bd4d2aae0e9c413c7d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "508b39eaf62507af045137012e059a12a804be570cc4de887ea4a719c09bbad6"
    end
    on_intel do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a804ad420ab5405e49d549552df39e5b15b3ff9b6356540e3e6e9629d9721282"
    end
  end
  conflicts_with "tailrocks/ruxel/ruxel", because: "preview and stable install same binary"
  def install
    bin.install "ruxel"
  end
  test do
    system "#{bin}/ruxel", "--version"
  end
end
