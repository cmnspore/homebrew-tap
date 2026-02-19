class Afhttp < Formula
  desc "Persistent HTTP client for AI agents — one request, one JSON line"
  homepage "https://github.com/cmnspore/agent-first-http"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmnspore/agent-first-http/releases/download/v0.1.0/afhttp-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "63abb6efbd16a7b959c7b6ad3faea1bab11d55352a03b9c6684c2464de528f59"
    end
    on_intel do
      url "https://github.com/cmnspore/agent-first-http/releases/download/v0.1.0/afhttp-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "9eeaaedde4bb3efcc024e98e7bd987e8ec7b2b5f34408bc01a1612d764bd8b8e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cmnspore/agent-first-http/releases/download/v0.1.0/afhttp-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "690b27819daf65fa9b42045c5cde7e79f2a31d36a9aff90edadd87fa069d13d8"
    end
  end

  def install
    bin.install "afhttp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/afhttp --version")
  end
end
