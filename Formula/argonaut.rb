class Argonaut < Formula
  desc "A CLI tool for managing and interacting with Argo CD"
  homepage "https://github.com/darksworm/argonaut"
  license "GPL-3.0-or-later"
  head "https://github.com/darksworm/argonaut.git", branch: "main"

  on_macos do
    on_intel do
      url "https://github.com/darksworm/argonaut/releases/download/v1.5.3/argonaut-darwin-x64"
      sha256 "e02db7b1dd03067e97d01927d94c6f0eda7db204c2002774ab8d59456d23c9b8"
    end
    
    on_arm do
      url "https://github.com/darksworm/argonaut/releases/download/v1.5.3/argonaut-darwin-arm64"
      sha256 "0251e707bdbaa8eadfe1c61c1a180f53ac7deffcc4261ccebadc3c05629964d5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/darksworm/argonaut/releases/download/v1.5.3/argonaut-linux-x64"
      sha256 "d397a499cf7e3c7b15ef50b871494c258934b34cd229697aa28e9000e6fa42d8"
    end
    
    on_arm do
      url "https://github.com/darksworm/argonaut/releases/download/v1.5.3/argonaut-linux-arm64"
      sha256 "fb4795b62a97837a367cae89699fd9d088e042081287327f5df49adba4210747"
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