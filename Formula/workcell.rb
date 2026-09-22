class Workcell < Formula
  desc "Roboto Studio's software factory CLI: a Linear issue in, a draft pull request with Evidence out"
  homepage "https://github.com/robotostudio/software-factory"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@robotostudio/workcell-darwin-arm64/-/workcell-darwin-arm64-0.1.2.tgz"
      sha256 "da88e5173d22e8c067385e94267197a6540e5c6018f90a9139dd0da0628cec02"
    end
    on_intel do
      url "https://registry.npmjs.org/@robotostudio/workcell-darwin-x64/-/workcell-darwin-x64-0.1.2.tgz"
      sha256 "745fbbff50eec66610c1ac76ac3fae5df0f0b0e3be21362de59da167295b6acd"
    end
  end
  on_linux do
    url "https://registry.npmjs.org/@robotostudio/workcell-linux-x64/-/workcell-linux-x64-0.1.2.tgz"
    sha256 "e575d36f651700e38697e7de183fecad4bc7694c8e47e82a9ffddc69bdf19983"
  end

  def install
    bin.install "bin/workcell"
  end

  test do
    assert_match "workcell v#{version}", shell_output("#{bin}/workcell --version")
  end
end
