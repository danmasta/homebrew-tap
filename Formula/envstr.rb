class Envstr < Formula

    desc "Envstr"
    homepage "https://github.com/danmasta/envstr"
    version "1.0.0"
    @@file = "envstr"

    if OS.linux? && Hardware::CPU.intel?
        url "https://github.com/danmasta/envstr/releases/download/v#{version}/envstr-linux-x64"
        sha256 "2acbe5284afce716e7f69cbe85c080c9faea4ed9559d9063112a5e52814d3572"
        @@file = "envstr-linux-x64"
    end

    if OS.linux? && Hardware::CPU.arm?
        url "https://github.com/danmasta/envstr/releases/download/v#{version}/envstr-linux-arm64"
        sha256 "a919721099f5c34a0acf7bb5923c97d92ae9d18a39d2c51e9d8dba984b8e6648"
        @@file = "envstr-linux-arm64"
    end

    if OS.mac?
        url "https://github.com/danmasta/envstr/releases/download/v#{version}/envstr-darwin"
        sha256 "258ff93dd0db2ab7704f2976fac5d8a05dbb73a92ffc8d0e566ba1a88e2c9471"
        @@file = "envstr-darwin"
    end

    conflicts_with "envstr"

    def install
        bin.install "#{@@file}" => "envstr"
    end

    test do
        system "#{bin}/envstr -v"
    end

end
