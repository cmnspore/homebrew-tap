class Hypha < Formula
  desc "The reference CMN client CLI — release spores, query synapses, resolve bonds, and manage your local mycelium."
  homepage "https://github.com/cmnspore/cmn-hypha"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmnspore/cmn-hypha/releases/download/v0.4.0/hypha-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "2acc99ec0eaf4f3cb41378bb313aa501cf60aececd18ff974b442809c25ee815"
    end
    on_intel do
      url "https://github.com/cmnspore/cmn-hypha/releases/download/v0.4.0/hypha-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "cd3121c99bfa299578e938fc1b412f98c42bc89883c6c2d30ac284aaf597d630"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cmnspore/cmn-hypha/releases/download/v0.4.0/hypha-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "009026324fc5dd9acd17888a25bcc860cde45918e3b5fec1eb9b0fc87198a6b8"
    end
  end

  def install
    bin.install "hypha"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hypha --version")
  end
end
