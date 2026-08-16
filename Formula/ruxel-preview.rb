# source-sha: abecacf0cacfa7dc68e87424ba412d4ccd8b1489
class RuxelPreview < Formula
  desc "Fast Rust executor for a closed Ansible workload"
  homepage "https://github.com/tailrocks/ruxel"
  version "0.1.0-preview.79+abecacf"
  license "Apache-2.0"
  on_macos do
    on_arm do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-aarch64-apple-darwin.tar.gz"
      sha256 "5fb69d41a907a277c36b9662f8a59cd88c3c81760ee6e9901a0e7b9c2343955a"
    end
    on_intel do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-x86_64-apple-darwin.tar.gz"
      sha256 "5f841e4fa31d18bce15b02d789a8c536c56887aaaa825ee30a6ffc130a258491"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "43c7a141b9f26b935912860d3bd2d3777dc6a773d76977cb7db219f368f7ff0d"
    end
    on_intel do
      url "https://github.com/tailrocks/ruxel/releases/download/preview/ruxel-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1ad052ae07dce32861fff6568c379ae53c1adbc173d996fb50bc703ba3b44a03"
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
