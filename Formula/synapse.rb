class Synapse < Formula
  desc "The reference CMN indexer — ingests signed manifests, indexes spores and myceliums, serves discovery queries, and syncs across instances via Nostr."
  homepage "https://github.com/cmnspore/cmn-synapse"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmnspore/cmn-synapse/releases/download/v0.3.1/synapse-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "79ccdfec7b5cd1b99065774e34be25d3801dc08ecbcbb17ae5e09a0273a01e02"
    end
    on_intel do
      url "https://github.com/cmnspore/cmn-synapse/releases/download/v0.3.1/synapse-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "248763b07b3e0a24650fb71a105ffdad5e5998e9b5603b67fc612e902b1ddaaa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cmnspore/cmn-synapse/releases/download/v0.3.1/synapse-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "53899f570d18c800df67bab37aff580602b28782870268396dcf9ae6af2295ee"
    end
  end

  def install
    bin.install "synapse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/synapse --version")
  end
end
