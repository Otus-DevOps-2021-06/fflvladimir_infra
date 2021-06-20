# output "external_ip_address_app-0" {
#   value = yandex_compute_instance.app[0].network_interface.0.nat_ip_address
# }

# output "external_ip_address_app-1" {
#   value = yandex_compute_instance.app[1].network_interface.0.nat_ip_address
# }
output "external_ip_address_app" {
  value = [
    for app in yandex_compute_instance.app :
    app.network_interface.0.nat_ip_address
  ]
}


output "external_ip_address_lb" {
  # value = yandex_lb_network_load_balancer.app.listener.0.external_address_spec.*.address
  # value = [for s in yandex_lb_network_load_balancer.app.listener: s.external_address_spec.0.address].0
  value = [
    for lis in yandex_lb_network_load_balancer.app.listener :
    [
      for eas in lis.external_address_spec :
      eas.address
    ]
  ]
}
