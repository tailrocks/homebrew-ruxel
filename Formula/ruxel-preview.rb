# source-sha: 0834ab515025422709f18b46fa73bdcc20da1a46
class RuxelPreview < Formula
  desc "Fast Rust executor for a closed Ansible workload"
  homepage "https://github.com/tailrocks/ruxel"
  version "0.1.0-preview.76+0834ab5"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-aarch64-apple-darwin.tar.gz"
      sha256 "717754808a357ae0421fe44e2c0ba33bb0c5c888e249a0778e6bf6161ba8a6f1"
    end
    on_intel do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-x86_64-apple-darwin.tar.gz"
      sha256 "51064ac36fa48c724aea8dda70d80658cd8cb8d9a877a017d1290cc330b6342c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f5b54dd96fd426833666d052e96d3519cd5950ac2be5c57e9ba7431db83968d2"
    end
    on_intel do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bb95c8a6e82e41b27bab5af970a46ddc6707d2bb2aa385b01774e67a963a3718"
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
