# source-sha: 87211e6035470e22496e6ed466237869775386ac
class RuxelPreview < Formula
  desc "Fast Rust executor for a closed Ansible workload"
  homepage "https://github.com/tailrocks/ruxel"
  version "0.1.0-preview.67+87211e6"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-aarch64-apple-darwin.tar.gz"
      sha256 "7338afde50796c5f92e0ad15a8ef2167c7a76c828a371d1c036ebeddbc41fc77"
    end
    on_intel do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-x86_64-apple-darwin.tar.gz"
      sha256 "e7ad1cfaeaa023e15db3d6868ce06fced06d8d6fe3f17ce86102b3f19b4f6131"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6182953d7c8d7ddab77212d3b081ec652a236e6b0a0ccd0200de28271fdf1cd3"
    end
    on_intel do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "438bfac2b6913ab62b1d870560b29afa8e117cfe20a33b482fbb6d27ba1cbf70"
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
