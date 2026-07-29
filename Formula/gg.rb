# typed: false
# frozen_string_literal: true

class Gg < Formula
  desc "Fast terminal git client for very large monorepos (TUI + scriptable CLI)"
  homepage "https://github.com/homeend/gigagit"
  url "https://github.com/homeend/gigagit/archive/refs/tags/v0.1.22.tar.gz"
  sha256 "b74a4f8f4a7ec58f6d958ab8c3606b0edd37a77aaa68c35fd5e1b237931940c0"
  license "MIT"
  head "https://github.com/homeend/gigagit.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X github.com/homeend/gigagit/internal/buildinfo.Version=v#{version}
      -X github.com/homeend/gigagit/internal/buildinfo.Commit=homebrew
    ].join(" ")
    system "go", "build", *std_go_args(ldflags: ldflags), "./cmd/gg"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gg version")
  end
end
