class UrlUnescape < Formula
  desc "url-unescape  CLI"
  homepage "https://bitbucket.org/infomaker/"
  url  "https://s3-eu-west-1.amazonaws.com/open-content-artifacts/url-unescape/url-unescape-0.4.tar.gz"
  sha256  "4687c4e653a9d142331b1e8c4499e5405bbbb45087aeb299fdf870416876a549"

  # depends_on "go" => :build

  def install
          bin.install "url-unescape"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test oc-cli`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/url-unescape"
  end
end
