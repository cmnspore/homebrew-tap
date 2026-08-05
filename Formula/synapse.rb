class Synapse < Formula
  desc "The reference CMN indexer — ingests signed manifests, indexes spores and myceliums, serves discovery queries, and syncs across instances via Nostr."
  homepage "https://github.com/cmnspore/cmn-synapse"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmnspore/cmn-synapse/releases/download/v0.3.0/synapse-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "52e466467548a909abee954566260932b7bbb59b3dc4b858dd9d64f1439b0a4f"
    end
    on_intel do
      url "https://github.com/cmnspore/cmn-synapse/releases/download/v0.3.0/synapse-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "9c249fe3b328dae9e71704df9635f7b96afb1acb7bddafe2206dabf3c39e622c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cmnspore/cmn-synapse/releases/download/v0.3.0/synapse-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c31499c99c5dd0529eb022059762c187382fdf4eade7f10f984fd807594ac055"
    end
  end

  def install
    bin.install "synapse"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/synapse --version")
  end
end
