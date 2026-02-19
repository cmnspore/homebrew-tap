class Afhttp < Formula
  desc "Persistent HTTP client for AI agents — one request, one JSON line"
  homepage "https://github.com/cmnspore/agent-first-http"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmnspore/agent-first-http/releases/download/v0.1.0/afhttp-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "4389689b51de32c5a17871366cefb71ebfdb6088ac78e6244cf8af6b54cf1a40"
    end
    on_intel do
      url "https://github.com/cmnspore/agent-first-http/releases/download/v0.1.0/afhttp-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "8fb63af279b2b913a236a6e1d1fe988456a396ed5ad5090f6538a4b56fc223ea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cmnspore/agent-first-http/releases/download/v0.1.0/afhttp-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c99a8547acdab75336391f916374ac8d372f08e1a68d4da2f8bc7c4d65649eaa"
    end
  end

  def install
    bin.install "afhttp"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/afhttp --version")
  end
end
