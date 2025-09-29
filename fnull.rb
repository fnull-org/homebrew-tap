class Fnull < Formula
  desc "fnull is a minimal CLI that turns any folder into a self-hosted download link. Fast, simple, and reliable for quick file sharing. ☕"
  homepage "https://github.com/fnull-org/fnull"
  url "https://github.com/fnull-org/fnull/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "c2bde3f2dc6d6d89b84c0b6aa748b8c1dee5dd649f3875e0fb806652b860cd47"
  license "MIT"

  def install
	bin.install "fnull"
  end

  test do
	system "#{bin}/fnull", "--version"
  end
end
