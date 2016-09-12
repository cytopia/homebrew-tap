class AwesomeCi < Formula
  desc "Tools for git, file and static source code analysis."
  homepage "https://github.com/cytopia/awesome-ci"
  url "https://github.com/cytopia/awesome-ci/archive/0.3.tar.gz"
  sha256 "6d2d7149295d2704a6c38ff3263f62318da9f1456c4cf63280fac9e4e6c890f9"
  head "https://github.com/cytopia/awesome-ci.git"

  def install
    args = ["--prefix=#{prefix}",
           ]

    system "./configure", *args
    system "make", "install"
  end

  test do
    system bin/"regex-grep --info || true"
  end
end
