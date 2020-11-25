resource "aws_db_instance" "example" {
  identifier_prefix = "terraform-up-and-running"
  engine            = "mysql"
  allocated_storage = 10
  instance_class    = "db.t2.micro"
  name              = "example_database"
  username          = "admin"

  # How should we set the password?
  password = data.aws_ssm_parameter.db_password.value
}

data "aws_ssm_parameter" "db_password" {
  name = "mysql-master-password-stage"
}