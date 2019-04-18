provider "google" { 
credentials = "${file("/home/anand/terraform/key2.json")}"
project = "sil-rnd-231113"
region = "us-east1-b"
}

