variable "name" {
  description = "The name of the cluster, unique within the project and zone"
  //default     = "gke-franck"
}

variable "username"{
type = "string"
description = "username to connect in the cluster"
//default = "username"
}
variable "password"{
type = "string"
description = "password to connect in the cluster" // au moins 16 caracteres pour le password
//default = "password0123456789"
}

variable "initial_node_count"{
type = number
description = "number of node "
//default = 3
}

variable "location"{
type = "string"
description = "zone location where the cluster is deploy"
//default = "us-central1-a"
}
