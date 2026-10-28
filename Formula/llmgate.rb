class Llmgate < Formula
  desc "Gateway that lets Claude Code use any provider, account and model"
  homepage "https://github.com/filipsajdak/llmgate"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/filipsajdak/llmgate/releases/download/v0.1.0/llmgate-0.1.0-darwin-arm64.tar.gz"
      sha256 "42ba090fa9155d1857b631352fff42037c03a4b89fd2ff62255d015f65f5fbbb"
    end
    on_intel do
      url "https://github.com/filipsajdak/llmgate/releases/download/v0.1.0/llmgate-0.1.0-darwin-x86_64.tar.gz"
      sha256 "d3079e53d70500d78bb8b6cc83ca8cb472f54c30e73c94115235e41c4ce5588e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/filipsajdak/llmgate/releases/download/v0.1.0/llmgate-0.1.0-linux-arm64.tar.gz"
      sha256 "e05256d05a25a431cf084e7da84eab5178b7119c0f7255656de117e0fcb4d376"
    end
    on_intel do
      url "https://github.com/filipsajdak/llmgate/releases/download/v0.1.0/llmgate-0.1.0-linux-x86_64.tar.gz"
      sha256 "9821785897fc2d118ef6267b9bd6d9e48cabba3555f7bc4746c8c27a4ee5b8f2"
    end
  end

  def install
    bin.install "llmgate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llmgate --version")
  end
end
