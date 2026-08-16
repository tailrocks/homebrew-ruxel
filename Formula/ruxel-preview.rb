# source-sha: 98976dbbbb04135dbc73a3236322f799ec564f13
class RuxelPreview < Formula
  desc "Fast Rust executor for a closed Ansible workload"
  homepage "https://github.com/tailrocks/ruxel"
  version "0.1.0-preview.77+98976db"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-aarch64-apple-darwin.tar.gz"
      sha256 "fbfb3f93f361f2b33ac43d2bef979ecaf42b0a921f198773403bf71ce735506b"
    end
    on_intel do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-x86_64-apple-darwin.tar.gz"
      sha256 "d3fe5a6064c0d5361b452fe894be59660fe06c0a385b1fce5624caaa8df34e0b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "34a3b9317f821f6a7b37ffac6eae6fe5ea88f5b8c626385767ee26cf4f698b6f"
    end
    on_intel do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4343d8ed8ee33138dbd4e0647023424071c49c956e5a69978b5995f24368216f"
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
