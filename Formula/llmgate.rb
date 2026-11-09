class Llmgate < Formula
  desc "Gateway that lets Claude Code use any provider, account and model"
  homepage "https://github.com/filipsajdak/llmgate"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/filipsajdak/llmgate/releases/download/v0.3.0/llmgate-0.3.0-darwin-arm64.tar.gz"
      sha256 "9e2378016aa4feae27769c21be0d9dc70ff3e3c83a9f3cbc852c326245b3a27b"
    end
    on_intel do
      url "https://github.com/filipsajdak/llmgate/releases/download/v0.3.0/llmgate-0.3.0-darwin-x86_64.tar.gz"
      sha256 "f86aa2f8a2515e364245797aac483f862c9493fbdb805817d6c4afb7121d9f8a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/filipsajdak/llmgate/releases/download/v0.3.0/llmgate-0.3.0-linux-arm64.tar.gz"
      sha256 "abaea43f0f0d361687d117b4e3a008c93be1f0cf2e864ac47f1bd04b598210f9"
    end
    on_intel do
      url "https://github.com/filipsajdak/llmgate/releases/download/v0.3.0/llmgate-0.3.0-linux-x86_64.tar.gz"
      sha256 "744713a7f4b49a4bbf76886ed5f78f45a546d21c4a9d037dbe5b435e6f0c79ac"
    end
  end

  def install
    bin.install "llmgate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llmgate --version")
  end
end
