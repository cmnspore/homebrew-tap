class Afpsql < Formula
  desc "Persistent PostgreSQL client for AI agents — SQL-native JSONL in, JSONL out"
  homepage "https://github.com/cmnspore/agent-first-psql"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmnspore/agent-first-psql/releases/download/v0.1.0/afpsql-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "935e9848092cc45703f91daba743d9f9fc9c15c801982d3c619c54178d912a11"
    end
    on_intel do
      url "https://github.com/cmnspore/agent-first-psql/releases/download/v0.1.0/afpsql-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "539030e92c02b440a119b942d86ba724378ed56cc6e35cc886284fc47129e70c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cmnspore/agent-first-psql/releases/download/v0.1.0/afpsql-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "38db3ffc470a9c534a8f8c57a076fc0b65f92708e67cc06f0acddc6e39b0f9e6"
    end
  end

  def install
    bin.install "afpsql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/afpsql --version")
  end
end
