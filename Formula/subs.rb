class Subs < Formula
  desc "Download subtitles with yt-dlp or clean them up with OpenAI"
  homepage "https://github.com/vine77/subs"
  head "https://github.com/vine77/subs.git", branch: "main"
  license "MIT"

  depends_on "yt-dlp"
  depends_on "jq"

  def install
    bin.install "bin/subs"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/subs 2>&1", 1)
  end
end
