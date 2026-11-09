class Hypha < Formula
  desc "The reference CMN client CLI — release spores, query synapses, resolve bonds, and manage your local mycelium."
  homepage "https://github.com/cmnspore/cmn-hypha"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmnspore/cmn-hypha/releases/download/v0.5.1/hypha-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "a91f166de937cda817e6e7b26086e9bd0d4da6834196f69b79e00231de92404f"
    end
    on_intel do
      url "https://github.com/cmnspore/cmn-hypha/releases/download/v0.5.1/hypha-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "4ab1eecb46bcf9712c56f63e3ff2c3021b1f2602963ca087fa1f8b80b2cb513d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cmnspore/cmn-hypha/releases/download/v0.5.1/hypha-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "46ae63ff64e55da662594ab88272533fd9e2d0d8e0405477edffec7145dcc5fe"
    end
  end

  def install
    bin.install "hypha"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hypha --version")
  end
end
