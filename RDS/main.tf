resource "aws_db_instance" "example" {
  allocated_storage    = 20                        # Storage size in GB
  engine               = "mysql"                   # Change to "postgres", "mariadb", etc. as needed
  engine_version       = "8.0"                     # Version of the DB engine
  instance_class       = "db.t3.micro"             # Instance type
  name                 = "mydatabase"              # Database name
  username             = "admin"                   # Master username
  password             = "password"                # Master password (use variables for sensitive data)
  parameter_group_name = "default.mysql8.0"        # Parameter group for the DB engine
  skip_final_snapshot  = true                      # Skip snapshot on deletion for testing (not recommended in production)
  publicly_accessible  = true                      # Set to false for private instances
  vpc_security_group_ids = ["sg-0123456789abcdef0"]  # Substitute with your Security Group ID
  multi_az             = false                     # Enable multi-AZ for production databases
}
