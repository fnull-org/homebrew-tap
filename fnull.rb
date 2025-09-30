class Fnull < Formula
  desc "fnull is a minimal CLI that turns any folder into a self-hosted download link. Fast, simple, and reliable for quick file sharing. ☕"
  homepage "https://github.com/fnull-org/fnull"
  
  on_macos do 
    if Hardware::CPU.intel?
      url "https://github.com/fnull-org/fnull/releases/download/v0.1.1/fnull_Darwin_x86_64.tar.gz"
      sha256 "67d69e568e0134e608e9f3a4c57a64844c05c46ddb39174fd98453cb9a6f4fe8"
    else
      url "https://github.com/fnull-org/fnull/releases/download/v0.1.1/fnull_Darwin_arm64.tar.gz"
      sha256 "e44175b31b8b674b81c835609361cfc70ad625ab73dc4f0a30052e98d5ebc3be"
    end
  end

  license "MIT"

  def install
	bin.install "fnull-v0.1.1/fnull"
  end

  test do
	system "#{bin}/fnull", "--version"
  end
end
