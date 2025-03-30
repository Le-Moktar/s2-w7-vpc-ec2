# Generate a new RSA key pair
resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

# Create the AWS Key Pair
resource "aws_key_pair" "key1" {
  key_name = "awsterraformkey"
  public_key = tls_private_key.ssh_key.public_key_openssh
}

# Download key

resource "local_file" "localf" {
  filename = "awsterraformkey.pem"
  content = tls_private_key.ssh_key.private_key_openssh
  file_permission = 0400
}







