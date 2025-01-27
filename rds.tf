resource "aws_db_instance" "app_db" {
  identifier = "my-rds-instance"
  allocated_storage    = var.db_allocated_storage
  instance_class       = var.db_instance_class
  engine               = var.db_engine
  username             = "admin"   
  password             = "password123" 
  skip_final_snapshot  = true

  tags = {
    Name        = "rds"
    Environment = var.environment
  }
}
