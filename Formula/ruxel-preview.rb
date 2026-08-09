class RuxelPreview < Formula
  desc "Fast Rust executor for a closed Ansible workload"
  homepage "https://github.com/tailrocks/ruxel"
  url "https://github.com/tailrocks/ruxel/archive/refs/heads/main.tar.gz"
  license "Apache-2.0"

  disable! date: "2026-08-09", because: "first preview release is being prepared"

  def install
    odie "Preview binary release is not published yet"
  end
end
