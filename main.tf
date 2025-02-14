provider "google" {
  project     = "project-irshaq"
  region      = "us-central1"
}

resource "google_compute_instance" "vm_instance" {
  name         = "terrajenvm"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-11"
    }
  }

  network_interface {
    network = "default"
  }
}
