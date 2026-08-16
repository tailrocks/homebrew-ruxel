# source-sha: 1cdc471b85f62b94de0329dde3c5c1c45e04c46a
class RuxelPreview < Formula
  desc "Fast Rust executor for a closed Ansible workload"
  homepage "https://github.com/tailrocks/ruxel"
  version "0.1.0-preview.78+1cdc471"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-aarch64-apple-darwin.tar.gz"
      sha256 "6295568ec868b1e31a498467229daea038cc10262c05230558bb5f48ecd0e151"
    end
    on_intel do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-x86_64-apple-darwin.tar.gz"
      sha256 "befdac6fe4aef73b7c4c9f543cb61d07c22ea15fd705cb01173e9793466dc3ab"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4a12b6e9d6ddb8912f37e283e7782f2e58a437ccfb44dcf598946520912d5955"
    end
    on_intel do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a78aa21aa228b8afff13b4b68217e7cd2d8daaa3ff824272f3b0b8897ab8a7b7"
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
