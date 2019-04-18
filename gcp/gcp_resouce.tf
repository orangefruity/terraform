resource "google_compute_instance" "centos7" {
name = "elasticsearch1"
machine_type = "n1-standard-2"	
zone = "us-east1-b"

	boot_disk {
	initialize_params {
	image = "centos-7-v20190326"
   		 }
          }
       network_interface {
       network = "sent-vpc1"
       subnetwork  = "sent-vpc1"
       access_config {
                     }
                         }

}
