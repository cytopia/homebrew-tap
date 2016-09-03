class AwesomeCi < Formula
  desc "Tools for git, file and static source code analysis."
  homepage "https://github.com/cytopia/awesome-ci"
  url "https://github.com/cytopia/awesome-ci/archive/0.2.tar.gz"
  sha256 "e4b526ec57ef072f64b06a28318c3f8b8e679679f7456172f7a7a9e0d6f7ebbf"
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
