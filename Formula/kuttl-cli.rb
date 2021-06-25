# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KuttlCli < Formula
  desc "Interact with KUTTL via the kubectl plugin"
  homepage "https://kuttl.dev"
  version "0.10.1"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/takirala/kuttl/releases/download/v0.10.1/kuttl_0.10.1_darwin_x86_64.tar.gz"
      sha256 "b81969d65c4aedbf8ab280112165fc3a33aeb80cf49561368400c7c23208ef53"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/takirala/kuttl/releases/download/v0.10.1/kuttl_0.10.1_linux_x86_64.tar.gz"
      sha256 "2d516cd80466cc1c7b089af39bccc4cae7b10c856ea65d780862498c45a1ca0e"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/takirala/kuttl/releases/download/v0.10.1/kuttl_0.10.1_linux_armv6.tar.gz"
      sha256 "44be487f34858519c024b4e5707a0e1eb4db4d11547b04aebdfdb71c255aedeb"
    end
  end

  depends_on "kubernetes-cli"

  def install
    bin.install "kubectl-kuttl"
  end
end
