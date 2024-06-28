resource "random_id" "telem" {
  count = var.enable_telemetry ? 1 : 0

  byte_length = 4
}


