class Llmgate < Formula
  desc "Gateway that lets Claude Code use any provider, account and model"
  homepage "https://github.com/filipsajdak/llmgate"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/filipsajdak/llmgate/releases/download/v0.2.0/llmgate-0.2.0-darwin-arm64.tar.gz"
      sha256 "027793cfdcc3a3bf552269045b1d19e709b4703c22ca80a10903959dc31ffc49"
    end
    on_intel do
      url "https://github.com/filipsajdak/llmgate/releases/download/v0.2.0/llmgate-0.2.0-darwin-x86_64.tar.gz"
      sha256 "d2b3d4ecc352fbd4c5fb5360ccfd29e6eaf83efb544c9bf4d824f85d37a11f4b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/filipsajdak/llmgate/releases/download/v0.2.0/llmgate-0.2.0-linux-arm64.tar.gz"
      sha256 "b5de64bb7020319334bd0322f3168fd96e20f4837c4c9f6badf2d1e7ff228d8f"
    end
    on_intel do
      url "https://github.com/filipsajdak/llmgate/releases/download/v0.2.0/llmgate-0.2.0-linux-x86_64.tar.gz"
      sha256 "5c80055bd5426a587490950ea030eb39c5b7eed413e0705b28f7414dc3750c80"
    end
  end

  def install
    bin.install "llmgate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llmgate --version")
  end
end
