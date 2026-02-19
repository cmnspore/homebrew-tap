# This file is auto-updated by the agent-first-http release workflow.
# https://github.com/cmnspore/agent-first-http/blob/main/.github/workflows/release.yml

class Afhttp < Formula
  desc "Persistent HTTP client for AI agents — one request, one JSON line"
  homepage "https://github.com/cmnspore/agent-first-http"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmnspore/agent-first-http/releases/download/v0.1.0/afhttp-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 ""
    end
    on_intel do
      url "https://github.com/cmnspore/agent-first-http/releases/download/v0.1.0/afhttp-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 ""
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cmnspore/agent-first-http/releases/download/v0.1.0/afhttp-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 ""
    end
  end

  def install
    bin.install "afhttp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/afhttp --version")
  end
end
