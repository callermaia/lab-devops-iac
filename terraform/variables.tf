variable "gcp_project_id" {
  description = "ID do projeto no Google Cloud Platform"
  type        = string
  default     = "seu-projeto-gcp-id"
}

variable "gcp_region" {
  description = "Região padrão para os recursos"
  type        = string
  default     = "us-central1"
}
