class Workcell < Formula
  desc "Roboto Studio's software factory CLI: a Linear issue in, a draft pull request with Evidence out"
  homepage "https://github.com/robotostudio/software-factory"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://registry.npmjs.org/@robotostudio/workcell-darwin-arm64/-/workcell-darwin-arm64-0.2.0.tgz"
      sha256 "c2ff169fe9bc7fd841d2e0aa3089aac597b58045ced7aa66f4f8f4a82adf0dec"
    end
    on_intel do
      url "https://registry.npmjs.org/@robotostudio/workcell-darwin-x64/-/workcell-darwin-x64-0.2.0.tgz"
      sha256 "a24983684ab9e72d5350dfb3135ccd1a700b3ea1bc8b1c8f34752bb89b0e2d21"
    end
  end
  on_linux do
    url "https://registry.npmjs.org/@robotostudio/workcell-linux-x64/-/workcell-linux-x64-0.2.0.tgz"
    sha256 "1474ce23a9eee6e60e1fc644b5df7397b1a8ecff8e4d223c231715a3d10f2782"
  end

  def install
    bin.install "bin/workcell"
  end

  test do
    assert_match "workcell v#{version}", shell_output("#{bin}/workcell --version")
  end
end
