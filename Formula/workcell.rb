class Workcell < Formula
  desc "Roboto Studio's software factory CLI: a Linear issue in, a draft pull request with Evidence out"
  homepage "https://github.com/robotostudio/software-factory"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@robotostudio/workcell-darwin-arm64/-/workcell-darwin-arm64-0.3.0.tgz"
      sha256 "1bda482e410bfca01b0c924c3777eb6848de1e3108f3d5c88296132b1a0d8e6f"
    end
    on_intel do
      url "https://registry.npmjs.org/@robotostudio/workcell-darwin-x64/-/workcell-darwin-x64-0.3.0.tgz"
      sha256 "6caa2d47e60c8019e8cf00de9c8e3ea439c8207f7cbbf3d8c684dd96002e3d08"
    end
  end
  on_linux do
    url "https://registry.npmjs.org/@robotostudio/workcell-linux-x64/-/workcell-linux-x64-0.3.0.tgz"
    sha256 "51fc6ebdf470161027206f2b4aa2d419f87149d6ec32bd2ee310f3c7288a314f"
  end

  def install
    bin.install "bin/workcell"
  end

  test do
    assert_match "workcell v#{version}", shell_output("#{bin}/workcell --version")
  end
end
