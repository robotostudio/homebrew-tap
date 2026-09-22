class Workcell < Formula
  desc "Roboto Studio's software factory CLI: a Linear issue in, a draft pull request with Evidence out"
  homepage "https://github.com/robotostudio/software-factory"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/robotostudio/software-factory/releases/download/v0.1.1/workcell-darwin-arm64"
      sha256 "d67eec249a09bfbf9bac5d766ddfc5fd29214d143160980855090aae58997153"
    end
    on_intel do
      url "https://github.com/robotostudio/software-factory/releases/download/v0.1.1/workcell-darwin-x64"
      sha256 "a8065df9209588c23fee1906e3802e3ba198f3f4a342d684b93d6be14cc4e046"
    end
  end
  on_linux do
    url "https://github.com/robotostudio/software-factory/releases/download/v0.1.1/workcell-linux-x64"
    sha256 "134d828daf566c3c664d2aac1c12d7b14deef539bd52b7091a521896cd46317b"
  end

  def install
    bin.install Dir["workcell-*"].first => "workcell"
  end

  test do
    assert_match "workcell v#{version}", shell_output("#{bin}/workcell --version")
  end
end
