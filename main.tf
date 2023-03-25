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
resource "google_compute_subnetwork" "subnet" {
  name          = "${var.project_id}-public-subnet-a"
  network       = google_compute_network.vpc.name
  ip_cidr_range = var.subnet_cidr
  region        = var.region
}

