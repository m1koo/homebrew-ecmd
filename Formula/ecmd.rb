# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Ecmd < Formula
  desc ""
  homepage ""
  url "https://raw.githubusercontent.com/m1koo/EasyCmd/main/packages/ecmd-1.0.tar.gz"
  sha256 "822dbb715917ce8a259632eb8b3ef99146d87f4d90d03951ed3771041a6395f1"
  license ""

  # depends_on "cmake" => :build

def install
    bin.install "ecmd"
  end  

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test ecmd-1.0`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/ecmd", "--version"
  end
end
