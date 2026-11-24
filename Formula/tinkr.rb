class Tinkr < Formula
  desc "Optimize your agent's context automatically"
  homepage "https://github.com/thunderkex/Tinkr"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/thunderkex/Tinkr/releases/download/v1.0.0/tinkr-1.0.0-darwin-arm64.tar.gz"
      sha256 "905eaf7a0d7e67b138be5d5c80482cbe5b9fa0ec26eae790de54f630c91f5be6"
    end
    on_intel do
      url "https://github.com/thunderkex/Tinkr/releases/download/v1.0.0/tinkr-1.0.0-darwin-x64.tar.gz"
      sha256 "b44b0674e69608da9d1d03c69dae6bd7e79ada0b6b676517c36f4cfafae914f0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thunderkex/Tinkr/releases/download/v1.0.0/tinkr-1.0.0-linux-arm64.tar.gz"
      sha256 "89e8c4ec4d079d27a07dddd3ab91624603db1e433313b99a532a15f7452be9eb"
    end
    on_intel do
      url "https://github.com/thunderkex/Tinkr/releases/download/v1.0.0/tinkr-1.0.0-linux-x64.tar.gz"
      sha256 "2ab05768ea42f42f6aa63f64fcd7a10a5a66736cfff9fec31b06fa5c03deb065"
    end
  end

  def install
    bin.install "tinkr"
    bin.install "tinkr-proxy"
  end

  test do
    assert_match "tinkr", shell_output("#{bin}/tinkr --version")
  end
end
