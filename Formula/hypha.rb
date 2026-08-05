class Hypha < Formula
  desc "The reference CMN client CLI — release spores, query synapses, resolve bonds, and manage your local mycelium."
  homepage "https://github.com/cmnspore/cmn-hypha"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmnspore/cmn-hypha/releases/download/v0.5.0/hypha-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "4827c30d14da8d6226ffcf84c21038519b2e34aef3d1c9a6574463d5c7d395bf"
    end
    on_intel do
      url "https://github.com/cmnspore/cmn-hypha/releases/download/v0.5.0/hypha-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "fdbf47d6b34c50e6eb61d0eb4cf05db888c2f838cab1db9821d42e3a73b5a833"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cmnspore/cmn-hypha/releases/download/v0.5.0/hypha-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fb4c5c3ee899ea6e8a2c23abc932f8fd1e6cad9c6e16d7803b1c471b4e8e9d75"
    end
  end

  def install
    bin.install "hypha"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hypha --version")
  end
end
