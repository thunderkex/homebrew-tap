class Tinkr < Formula
  desc "Optimize your agent's context automatically"
  homepage "https://github.com/thunderkex/Tinkr"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/thunderkex/Tinkr/releases/download/v0.1.0/tinkr-0.1.0-darwin-arm64.tar.gz"
      sha256 "84b5b7f45201544d268ce7b205b088774e48176e6d1f75d012d8d6e62d20610e"
    end
    on_intel do
      url "https://github.com/thunderkex/Tinkr/releases/download/v0.1.0/tinkr-0.1.0-darwin-x64.tar.gz"
      sha256 "886ab26b6194b157cb50934eb3aa666e17950ae1cca1a393a05666d80f314695"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/thunderkex/Tinkr/releases/download/v0.1.0/tinkr-0.1.0-linux-arm64.tar.gz"
      sha256 "58e59048d4e07dde378192ebd7b76db6210b5dd798c67e0b5cdc20c2abafc779"
    end
    on_intel do
      url "https://github.com/thunderkex/Tinkr/releases/download/v0.1.0/tinkr-0.1.0-linux-x64.tar.gz"
      sha256 "dbb73e4f6c970b2d8daf120f10cfbe26953e3fe2cfd58d6e4c19d766cafbf948"
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
