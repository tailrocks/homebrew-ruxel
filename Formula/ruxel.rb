class Ruxel < Formula
  desc "Fast Rust executor for a closed Ansible workload"
  homepage "https://github.com/tailrocks/ruxel"
  url "https://github.com/tailrocks/ruxel/archive/refs/heads/main.tar.gz"
  version "0.1.0"
  # Branch tarball floats with main; pin a real checksum on first stable release.
  sha256 :no_check
  license "Apache-2.0"

  disable! date: "2026-08-09", because: "first stable release is being prepared"

  conflicts_with "ruxel-preview", because: "preview and stable install same binary"

  def install
    odie "Stable binary release is not published yet; install ruxel@preview"
  end
end
