variable "metadata_name_deploy"{
type = "string"
description = "metadata name of deployment object"
default = "www-deployment"
}

variable "replicas_number"{
type = number
description = "number of replication"
default = 3
}

variable "label_pod"{
type = "string"
description = "metadata name of deployment object"
default = "nginx_l"
}

variable "metadata_name_serv"{
type = "string"
description = "metadata name of service object"
default = "nginx-svc"
}
