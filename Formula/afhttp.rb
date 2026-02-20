class Afhttp < Formula
  desc "Persistent HTTP client for AI agents — one request, one JSON line"
  homepage "https://github.com/cmnspore/agent-first-http"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmnspore/agent-first-http/releases/download/v0.3.0/afhttp-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "0da4b76fccaf22cb228008aa1183fa25c81a361fee141823df40621a8a05b86f"
    end
    on_intel do
      url "https://github.com/cmnspore/agent-first-http/releases/download/v0.3.0/afhttp-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "cef2737165ae6a5904402aec1d661e900c0c2f6f8e13e5560f9842cbd25dedf8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cmnspore/agent-first-http/releases/download/v0.3.0/afhttp-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "341f8070f20cf8cde0cac7af3721b376090a9a5bd974bd8c10972b438cd5b9c9"
    end
  end

  def install
    bin.install "afhttp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/afhttp --version")
  end
end
