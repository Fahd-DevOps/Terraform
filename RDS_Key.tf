# RDS Keys
variable "RdsAdminCred" {
  default = {
    username = "admin"
    password = "password"
  }
  type = map(string)
}

resource "aws_secretsmanager_secret" "RdsAdminCred" {
  name = "RdsAdminCred"
}
resource "aws_secretsmanager_secret_version" "RdsAdminCred" {
  secret_id     = aws_secretsmanager_secret.RdsAdminCred.id
  secret_string = jsonencode(var.RdsAdminCred)
}
