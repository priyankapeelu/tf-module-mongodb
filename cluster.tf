resource "aws_docdb_cluster" "docdb" {
  cluster_identifier = "roboshop-${var.ENV}"
  engine             = "docdb"
  master_username    = "admin1"
  master_password    = "roboshop1"
  ## This is just for lab purpose
  skip_final_snapshot    = true
  db_subnet_group_name   = aws_docdb_subnet_group.docdb.name
  vpc_security_group_ids = [aws_security_group.allow_mongodb.id]
}