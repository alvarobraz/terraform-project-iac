resource "aws_s3_bucket" "bucket" {
  # Adicione o workspace aqui também para coincidir com o data source
  bucket = "${var.org_name}-bucket-iac-03022026-${terraform.workspace}"

  tags = {
    Name = "Primeiro bucket"
    Iac  = "true"
  }
}