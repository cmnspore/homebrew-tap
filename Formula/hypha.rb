class Hypha < Formula
  desc "CMN CLI tool — spawn, grow, release, taste, bond, and absorb spores on the Code Mycelial Network"
  homepage "https://github.com/cmnspore/cmn-hypha"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmnspore/cmn-hypha/releases/download/v0.3.0/hypha-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "b14489e1740dc6c89c83d5f1c21a3f77847d50502bb41477660243ad15120b2a"
    end
    on_intel do
      url "https://github.com/cmnspore/cmn-hypha/releases/download/v0.3.0/hypha-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "8042306c60dcf9f6e876b6ff3dce09ba0d744d081c507c7d9d156e5458faddca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cmnspore/cmn-hypha/releases/download/v0.3.0/hypha-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a74e9c04037af490b7a11702cb44f3abd388517c0299bf250c0581dc3182ed5f"
    end
  end

  def install
    bin.install "hypha"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hypha --version")
  end
end
