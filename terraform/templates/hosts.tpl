[master]
${master_machine_name} ansible_host=${master_machine_ip} ansible_ssh_user=ubuntu

[worker]
%{ for i, node in worker_nodes}
${node.machine_name} ansible_host=${worker_ips[i].ip} ansible_ssh_user=ubuntu
%{endfor ~}