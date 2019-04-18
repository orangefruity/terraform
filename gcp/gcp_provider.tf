provider "google" { 
credentials = "${file("/home/anand/terraform/key4.json")}"
project = "sentrifugo"
region = "us-east1-b"
}

