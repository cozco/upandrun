#Variable for Server Port used in security group block
variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080
}