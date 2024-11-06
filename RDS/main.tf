resource "aws_db_instance" "this_rds" {
  allocated_storage    = var.this_list[0]                       # Storage size in GB
  engine               = var.this_list[1]                  # Change to "postgres", "mariadb", etc. as needed
  engine_version       = var.this_list[2]                     # Version of the DB engine
  instance_class       = var.this_list[3]           # Instance type
  name                 = var.this_list[4]           # Database name
  username             = var.this_list[5]                   # Master username
  password             = var.this_list[6]               # Master password (use variables for sensitive data)
  parameter_group_name = var.this_list[7]        # Parameter group for the DB engine
  skip_final_snapshot  = var.this_list[8]                     # Skip snapshot on deletion for testing (not recommended in production)
  publicly_accessible  = var.this_list[9]                      # Set to false for private instances
  vpc_security_group_ids = [var.this_list[10]]  # Substitute with your Security Group ID
  multi_az             = var.this_list[11]                     # Enable multi-AZ for production databases
}
