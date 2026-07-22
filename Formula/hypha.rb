class Hypha < Formula
  desc "The reference CMN client CLI — release spores, query synapses, resolve bonds, and manage your local mycelium."
  homepage "https://github.com/cmnspore/cmn-hypha"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmnspore/cmn-hypha/releases/download/v0.4.1/hypha-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "6cfb41001c315e2b8da0a37e66014b2b9eddd4c7d4b2d534007496ace8afc6b2"
    end
    on_intel do
      url "https://github.com/cmnspore/cmn-hypha/releases/download/v0.4.1/hypha-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "460b05ac72c11a375e13f4cd3d37e828a2b590c9e1f2459749087c045ed5d972"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cmnspore/cmn-hypha/releases/download/v0.4.1/hypha-v0.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3040bc82b032a7555a571c50eed031bea13c49a1e8a17f2a541f2ebe20841f12"
    end
  end

  def install
    bin.install "hypha"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hypha --version")
  end
end
