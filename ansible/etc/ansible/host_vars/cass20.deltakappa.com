---
# nfs server
cassandra22x_nfs_server: cass30.deltakappa.com
cassandra22x_nfs_server_path: /var/nfsshare/
cassandra22x_nfs_client_mount: "/mnt/nfs/{{ cassandra22x_nfs_server }}/var/nfsshare"

## restore variables
# dest cluster node that will deploy schema
# cassandra22x_dest_cluster_node_schema:
# src cluster node supplying schema
# cassandra22x_src_cluster_node_schema:

# src node to dest node map dictionary
# cassandra22x_src_cluster_node_map_dict:
   # - cassandra22x_node1:
       # cassandra22x_src_cluster_node: cass2.deltakappa.com
       # cassandra22x_src_cluster_nfs_server: cass3.deltakappa.com
       
# src node to dest without node map dictionary
cassandra22x_src_cluster_node: cass2.deltakappa.com
cassandra22x_src_cluster_nfs_server: cass3.deltakappa.com