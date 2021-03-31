# Creates a GCP VM Instance.
resource "google_compute_instance" "vm" {
  name         = "gce-instance"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {      
     image = "projects/centos-cloud/global/images/centos-7-v20210316"
    }
  }

  network_interface {
    network = "default"
    access_config {
      }
   }
  service_account {
    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    email  = "1090549738014-compute@developer.gserviceaccount.com"
    scopes = ["cloud-platform"]
  }
   
}
