resource "google_compute_instance" "centos7" {
name = "elasticsearch1"
machine_type = "g1-small"	
zone = "us-east1-b"
	boot_disk {
	initialize_params {
	image = "centos-7-v20190326"
   		 }
          }
       network_interface {
       network = "default"
       access_config {
                     }
                         }

}
resource "google_compute_firewall" "default" {
  name = "test-firewall"
  network = "default"
 
     allow {
       protocol = "icmp"
     }

     allow {
       protocol = "tcp"
       ports    = ["80", "443", "22"]
     }

}
