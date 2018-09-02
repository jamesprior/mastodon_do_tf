locals {
  # eg staging.kcmo.social, this is the domain name the swarm is accessible at
  swarm_hostname = "${var.subdomain == "" ? var.domain_name : "${var.subdomain}.${var.domain_name}"}"
  node_subdomain = "${var.subdomain == "" ? var.digitalocean_region : "${var.digitalocean_region}.${var.subdomain}"}"
  all_swarm_ips = "${concat(module.swarm-cluster.manager_ips, module.swarm-cluster.worker_ips)}"
}
