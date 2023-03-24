output "vpc_network" {
  value = google_compute_network.vpc.name
}

output "subnets_network" {
  value = [
    google_compute_subnetwork.public-subnet-a.id,
    google_compute_subnetwork.public-subnet-b.id,
    google_compute_subnetwork.private-subnet-a.id,
    google_compute_subnetwork.private-subnet-b.id
  ]
}

output "public_subnet_ids" {
  value = [google_compute_subnetwork.public-subnet-a.id, google_compute_subnetwork.public-subnet-b.id]
}

output "private_subnet_ids" {
  value = [google_compute_subnetwork.private-subnet-a.id, google_compute_subnetwork.private-subnet-b.id]
}