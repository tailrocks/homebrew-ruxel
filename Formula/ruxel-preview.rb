# source-sha: c89354423b58670c9eb6e1a62829173c6038c8cf
class RuxelPreview < Formula
  desc "Fast Rust executor for a closed Ansible workload"
  homepage "https://github.com/tailrocks/ruxel"
  version "0.1.0-preview.82+c893544"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-aarch64-apple-darwin.tar.gz"
      sha256 "7a41af1523c10cbf5b702e3afb5704f56f39f5d47dd6f1eaf6b6e9daddfa1a27"
    end
    on_intel do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-x86_64-apple-darwin.tar.gz"
      sha256 "25eea432c52bea53f5ebad4b358707aa1cbd881ee95e213dad19a39d0fb6560a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b75947ca45e137a41665b6a0d23784f2ddabad270a33fe382381d54ea9ca20e0"
    end
    on_intel do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d6b2b359cbca0bc565ea402ffda5ef57458c3d359c1ac92ea7f8b0aea2a3d12"
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
