class Afhttp < Formula
  desc "Persistent HTTP client for AI agents — one request, one JSON line"
  homepage "https://github.com/cmnspore/agent-first-http"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmnspore/agent-first-http/releases/download/v0.1.1/afhttp-v0.1.1-aarch64-apple-darwin.tar.gz"
      sha256 "875d658c317f372f12e7f583b036bd76f34ef9229afdb224393f0cf1405ff39f"
    end
    on_intel do
      url "https://github.com/cmnspore/agent-first-http/releases/download/v0.1.1/afhttp-v0.1.1-x86_64-apple-darwin.tar.gz"
      sha256 "eb6162be13e4d75d669b17737d599495ce5d996ce1e3b5c97782e8dfe200feeb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cmnspore/agent-first-http/releases/download/v0.1.1/afhttp-v0.1.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8a324f3131526fd6e894bd1437a33e8af3f3f3252f36b8fda6b019b8e5e071b5"
    end
  end

  def install
    bin.install "afhttp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/afhttp --version")
  end
end
