[master]
${master_machine_name} ansible_host=${master_machine_ip}

[worker]
%{ for i, node in worker_nodes}
${node.machine_name} ansible_host=${worker_ips[i].ip}
%{endfor ~}