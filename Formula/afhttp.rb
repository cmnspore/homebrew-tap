class Afhttp < Formula
  desc "Persistent HTTP client for AI agents — one request, one JSON line"
  homepage "https://github.com/cmnspore/agent-first-http"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmnspore/agent-first-http/releases/download/v0.2.0/afhttp-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "ae00bc13322cdb172547343e6c5fd458f9d792cfeb65e33efd5eb96caf998224"
    end
    on_intel do
      url "https://github.com/cmnspore/agent-first-http/releases/download/v0.2.0/afhttp-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "c408c8945f078ab15024aab58c8921affae77f3d4e1e0c1bd3e2c45d651e7ecf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cmnspore/agent-first-http/releases/download/v0.2.0/afhttp-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d3126cc044e5fdd47c9cded3305f493c0039930dc6ee050a36ead0a132c818e5"
    end
  end

  def install
    bin.install "afhttp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/afhttp --version")
  end
end
