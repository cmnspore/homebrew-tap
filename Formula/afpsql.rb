class Afpsql < Formula
  desc "Persistent PostgreSQL client for AI agents — SQL-native JSONL in, JSONL out"
  homepage "https://github.com/cmnspore/agent-first-psql"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/cmnspore/agent-first-psql/releases/download/v0.2.0/afpsql-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "003fd1accebbe5da3f10819a2d0dc64bd0fb854bae4edab7e8b015cc0e475e84"
    end
    on_intel do
      url "https://github.com/cmnspore/agent-first-psql/releases/download/v0.2.0/afpsql-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "dbdd53d60a88f039373714f1326d1ffc742bddbfbb5268229f2c94e143e2f7df"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/cmnspore/agent-first-psql/releases/download/v0.2.0/afpsql-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "045c22ab3364120c38652f4243ee3b280f01126e3f0172238bed9c300d750adc"
    end
  end

  def install
    bin.install "afpsql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/afpsql --version")
  end
end
