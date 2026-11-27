cask "mlx-stack" do
  version "0.1.7"
  sha256 "9882e68548dffa9474f1845d54248c74dc83b38a4eb46928519a17926cb60f8c"

  url "https://raw.githubusercontent.com/mukhanov/mlx-stack/v#{version}/releases/MLXStack-v#{version}.zip"
  name "MLX Stack"
  desc "Native tray and desktop monitor for local MLX models"
  homepage "https://github.com/mukhanov/mlx-stack"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "MLX Stack.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/MLX Stack.app"]
  end

  caveats do
    <<~EOS
      MLX Stack is ad-hoc signed. Homebrew verified the archive SHA-256 and
      removed Gatekeeper quarantine from the verified app so its bundled uv
      and backend can run. Direct ZIP installation requires the same explicit
      xattr step documented in the README.
    EOS
  end
end
