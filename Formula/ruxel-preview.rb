# source-sha: e85b5ccc0b6a460e320432010aea1c3f0a43c69c
class RuxelPreview < Formula
  desc "Fast Rust executor for a closed Ansible workload"
  homepage "https://github.com/tailrocks/ruxel"
  version "0.1.0-preview.66+e85b5cc"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-aarch64-apple-darwin.tar.gz"
      sha256 "38fb7a1692fb63ae8c06ac4cc1482d06413ffd9570772a0f9bd54255b3eff679"
    end
    on_intel do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-x86_64-apple-darwin.tar.gz"
      sha256 "ebbd03e97a64224b0191623929f4d1b76983c32afd432d5e8511b2ca9c4e55da"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b1eabc44ea0cbab5933fe4efe9353638a9671f8baefc06b098f0d20e05558976"
    end
    on_intel do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "55ea51ea958b33500940ce13b980275cd42e33d69a3cb033d19bfd82f3047cb4"
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
