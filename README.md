# cassandra22x-ansible-backup-restore
A goal of this project is to create using minimal installs and freely available software that have no licensing costs.

## IMPORTANT NOTE
Do not use beyond branch... 1.2_src_to_new_dest_cluster_copy_ring_and_data.

## Help and How To...
- See the Wiki for how to details.
- See test run files in the repo for how to details.

## Roadmap

### Completed
#### Rebuild the Schema on the same Cluster (nodes) Use Cases
The first version is called the simple backup and restore version.

- Use Case - cluster22 keyspaces need to be backed up
  - Create a cluster snapshot of all keyspaces including system catalogs using ansible
- Use Case - view essential "metadata" using ansible - provide all the basic metadata needed for other ansbile plays
  - View all cassandra22x ansible snapshots
  - View details of a specific cassandra22x ansible snapshot
- Use Case - cluster22 keyspaces need to be locally archived before rsyncing to remote storage
  - Create a cluster node local archive of a snapshot of all keyspaces including system catalogs using ansible
  - Create a cluster node local archive of a snapshot of all on node metadata archive_logs
  - Create an ansible local archive of a snapshot ansbile metadata ansible_restore_vars
- Use Case - cluster22 keyspaces need to be remotely archived (rsync to remote storage)
  - Create a cluster node remote archive of a snapshot of all keyspaces including system catalogs using ansible
  - Create a cluster node remote archive of a snapshot of all on node metadata archive_logs
  - Create an ansible remote archive of a snapshot ansbile metadata ansible_restore_vars
- Use Case - restore killrvideo keyspace cluster22 from a node local snapshot
  - Restore keyspace from local snapshot after table truncation - No data loss
  - Restore keyspace from local snapshot after stopping the cluster and wiping the cache, commit log, and data files and then restarting successfully - No data loss
- Use Case - cluster22 snapshots need to be locally cleared
  - Create a cluster node local snapshot of all keyspaces including system catalogs using ansible
  - Create a cluster node local snapshot of all on node metadata archive_logs
  - Create an ansible local snapshot ansbile metadata ansible_restore_vars
  - Create a cluster node local archive of a snapshot of all keyspaces including system catalogs using ansible
  - Create a cluster node local archive of a snapshot of all on node metadata archive_logs
  - Create an ansible local archive of a snapshot ansbile metadata ansible_restore_vars
- Use Case - killrvideo keyspace is missing from all the nodes but the local snapshot (old schema location) is still available
  - Restore a local snapshot to a new schema
  - Real world ... lol ... this is drop keyspace... oops! Never happen in the real world in production. Right?
- Use Case - killrvideo keyspace is missing from all nodes and the old schema location on all nodes is gone, but the local archive is available on all nodes
  - Restore a local archived snapshot to a new schema
  - Real world data volume and local archive volume separate local storage path
  - Cassandra Data volume goes permanently offline and is replaced.
- Use Case - killrvideo keyspace is missing from all the nodes, the old schema location on all nodes is gone, and the local archive is gone.
  - Restore a remote archived snapshot to a new schema
  - Real world data volume and local archive volume separate local storage path, and each node has an independent horizontal nfs path.
  - Cassandra Data and local archive volumes go permanently offline and are replaced.
  
#### Rebuild on a different Cluster Use Cases
The first version is called the simple backup and restore version.

- Use Case - Restore a keyspace from a source cluster to a new destination cluster with identical topologies
  - Restore the reconfigure destination cluster nodes to use source cluster tokens and a new topology
  - Restore a remote archived snapshot to a new schmea and new topology
- Use Case - Restore a keyspace from a source cluster to an existing destination cluster with identical topologies
  - Restore a remote archived snapshot to a new schema and new topology
  - Use sstableloader to load data from the source to the destination
- Use Case - Restore a keyspace from a source cluster to a destination cluster with different topologies
  - Restore a remote archived snapshot to a new schema and new topology
  - Use sstableloader to load data from the source to the destination  

### Future

#### Cassandra 3.x
All use cases above

#### Incremental Backup and Restore Use Cases
Considering 2.x 
Planning 3.x

#### Commit Log Archiving Use Cases
Planning 3.x

#### Point In Time Recovery using Snapshots, Incremental Backups, and Commit Log Archives Use Cases
Planning 3.x
