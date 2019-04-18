provider "google" {
  credentials = "${file("key2.json")}"
  region = "us-east1-b"
  project = "sil-rnd-231113"
}


