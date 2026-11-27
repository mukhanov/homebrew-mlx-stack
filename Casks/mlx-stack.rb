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
end
