# source-sha: cb5d1e957e93a14eb0e827d77d36dd46d716d029
class RuxelPreview < Formula
  desc "Fast Rust executor for a closed Ansible workload"
  homepage "https://github.com/tailrocks/ruxel"
  version "0.1.0-preview.85+cb5d1e9"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-aarch64-apple-darwin.tar.gz"
      sha256 "9e95379d31ac4f43b4b4f7079630acdce22290fc8048af0e62d5d305be2df8cb"
    end
    on_intel do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-x86_64-apple-darwin.tar.gz"
      sha256 "dac65396702db3e2a326718e087957e3d35ee1350c30714fd8fdb3dbe322fa4e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "81c1fb0ae66e60e9f87645b809e74d6dbc4086ec0ae7e1bca16a8d19fd5804f6"
    end
    on_intel do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ba781d8341eecdf4ae830e9870ff5a5f87eb892002c1ef6ffb3132f920506609"
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
