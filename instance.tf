# Creates a GCP VM Instance.
resource "google_compute_instance" "vm" {
  name         = "gce-instance"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {      
     image = "projects/rhel-cloud/global/images/rhel-8-v20210316"
    }
  }

  network_interface {
    network = "default"
   }
   
}
