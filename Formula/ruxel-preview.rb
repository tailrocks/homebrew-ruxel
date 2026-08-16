# source-sha: b67f81639355467b0dbf862b78c0b38f01832ac1
class RuxelPreview < Formula
  desc "Fast Rust executor for a closed Ansible workload"
  homepage "https://github.com/tailrocks/ruxel"
  version "0.1.0-preview.84+b67f816"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-aarch64-apple-darwin.tar.gz"
      sha256 "a8ea6e55955345aed0b102c9b69103565461b4ca9a58340d14fea9907e60b5f2"
    end
    on_intel do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-x86_64-apple-darwin.tar.gz"
      sha256 "e9d55f29d2bc7d13b1db435a369ca174f78c75e7e3175e5a1e8872567433b956"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b5a4ab4cef66efac315a94a02b494b71196daef2af07654d558b17c8ed9f101b"
    end
    on_intel do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5ca6b65bbd430167d3e64c4fdf4ad0e41801c19c7f31cd3f1efc187aabcf10ec"
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
