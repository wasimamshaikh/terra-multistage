resource "aws_key_pair" "web-key" {
  key_name   = var.DEV_KEY
  public_key = file(var.PUB_KEY)
}

resource "aws_instance" "web-instance" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = var.INSTANCE_TYPE
  subnet_id              = var.subnet1_id
  key_name               = aws_key_pair.web-key.key_name
  vpc_security_group_ids = [var.sec_grp_id]
  tags = var.Instance_TAG

}

output "PublicIP" {
  value = aws_instance.web-instance.public_ip
}