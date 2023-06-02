local flutter_setup, flutter = pcall(require, "flutter-tools")
if not flutter_setup then
  return
end

flutter.setup()
