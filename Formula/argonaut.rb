class Argonaut < Formula
  desc "A CLI tool for managing and interacting with Argo CD"
  homepage "https://github.com/darksworm/argonaut"
  license "GPL-3.0-or-later"
  head "https://github.com/darksworm/argonaut.git", branch: "main"

  on_macos do
    on_intel do
      url "https://github.com/darksworm/argonaut/releases/download/v1.5.1/argonaut-darwin-x64"
      sha256 "placeholder_darwin_x64_sha256"
    end
    
    on_arm do
      url "https://github.com/darksworm/argonaut/releases/download/v1.5.1/argonaut-darwin-arm64"
      sha256 "placeholder_darwin_arm64_sha256"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/darksworm/argonaut/releases/download/v1.5.1/argonaut-linux-x64"
      sha256 "placeholder_linux_x64_sha256"
    end
    
    on_arm do
      url "https://github.com/darksworm/argonaut/releases/download/v1.5.1/argonaut-linux-arm64"
      sha256 "placeholder_linux_arm64_sha256"
    end
  end

  def install
    # Determine the binary name based on platform and architecture
    binary_name = case Hardware::CPU.arch
    when :x86_64
      if OS.mac?
        "argonaut-darwin-x64"
      elsif OS.linux?
        "argonaut-linux-x64"
      end
    when :arm64
      if OS.mac?
        "argonaut-darwin-arm64"
      elsif OS.linux?
        "argonaut-linux-arm64"
      end
    end

    bin.install binary_name => "argonaut"
  end

  def caveats
    <<~EOS
      Argonaut CLI helps you manage and interact with Argo CD.
      
      To get started, run:
        argonaut --help
      
      Make sure you have access to an Argo CD server and appropriate
      credentials configured.
    EOS
  end

  test do
    assert_match "argonaut", shell_output("#{bin}/argonaut --version")
  end
end