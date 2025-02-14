provider "google" {
  project     = "project-irshaq"
  region      = "us-central1"
credentials = file("gcp.json")  # Add this line
}

resource "google_compute_instance" "gcpjenkins" {
  name         = "terrajenvm"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "centos-stream-9"
 labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"
  }
}
