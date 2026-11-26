cask "mlx-stack" do
  version "0.1.6"
  sha256 "d028112397c34d5e0d22d198198c18aa1089837e5bcd20dbf424cc2480931d7e"

  url "https://raw.githubusercontent.com/mukhanov/mlx-stack/v#{version}/releases/MLXStack-v#{version}.zip"
  name "MLX Stack"
  desc "Native tray and desktop monitor for local MLX models"
  homepage "https://github.com/mukhanov/mlx-stack"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "MLX Stack.app"
end
