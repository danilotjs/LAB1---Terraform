 output "db_server_selflink" {
  description = "Self link do db_server"
  value       = google_compute_instance.dbserver1.self_link
}

 output "web1_server_selflink" {
  description = "Self link do db_server"
  value       = google_compute_instance.web1.self_link
}

 output "web2_server_selflink" {
  description = "Self link do db_server"
  value       = google_compute_instance.web2.self_link
}

output "db_zone" {
  description = "Hostname do db_server"
  value       = google_compute_instance.dbserver1.zone
}

output "web1_zone" {
  description = "Hostname do db_server"
  value       = google_compute_instance.web1.zone
}

output "web2_zone" {
  description = "Hostname do db_server"
  value       = google_compute_instance.web2.zone
}


output "db_server_ip" {
  description = "Hostname do db_server"
  value       = google_compute_instance.dbserver1.network_interface.0.access_config.0.nat_ip
}

output "web1_server_ip" {
  description = "Hostname do db_server"
  value       = google_compute_instance.web1.network_interface.0.access_config.0.nat_ip
}

output "web2_server_ip" {
  description = "Hostname do db_server"
  value       = google_compute_instance.web2.network_interface.0.access_config.0.nat_ip
}
