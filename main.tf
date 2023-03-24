provider "google" {
  version = "~> 3.46"
  project = var.project_id
  region  = var.region
}

# Google VPC 정의
resource "google_compute_network" "vpc" {
  name                    = "${var.project_id}-vpc"
  auto_create_subnetworks = false #서브넷 자동 생성 해제
}

# 서브넷 정의
resource "google_compute_subnetwork" "public-subnet-a" {
  name          = "${var.project_id}-public-subnet-a"
  network       = google_compute_network.vpc.name
  ip_cidr_range = var.public_subnet_a_cidr
  region = var.region
}

resource "google_compute_subnetwork" "public-subnet-b" {
  name          = "${var.project_id}-public-subnet-b"
  network       = google_compute_network.vpc.name
  ip_cidr_range = var.public_subnet_b_cidr
  region = var.region
}

resource "google_compute_subnetwork" "private-subnet-a" {
  name          = "${var.project_id}-private-subnet-a"
  network       = google_compute_network.vpc.name
  ip_cidr_range = var.private_subnet_a_cidr
  region = var.region
}

resource "google_compute_subnetwork" "private-subnet-b" {
  name          = "${var.project_id}-private-subnet-b"
  network       = google_compute_network.vpc.name
  ip_cidr_range = var.private_subnet_b_cidr
  region = var.region
}

