provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.aws_region}"
}

resource "aws_db_instance" "mydatabase" {
  identifier = "my-database"
  engine = "postgres"
  engine_version = "9.4.5"
  allocated_storage = 10
  instance_class = "db.t2.micro"

  name = "mydatabase"
  username = "${var.aws_database_username}"
  password = "${var.aws_database_password}"
}
