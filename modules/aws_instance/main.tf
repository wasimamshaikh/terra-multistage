resource "aws_key_pair" "web-key" {
  key_name   = var.PRI_KEY
  public_key = file(var.PUB_KEY)
}

resource "aws_instance" "web-instance" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = var.INSTANCE_TYPE
  subnet_id              = var.subnet1_id
  key_name               = aws_key_pair.web-key.key_name
  vpc_security_group_ids = [var.sec_grp_id]
  tags = {
    Name        = "Instance"
    Environment = var.Environment
  }

  connection {
  type        = "ssh"
  user        = var.USER
  private_key = file(var.PRI_KEY)
  host        = self.public_ip
  }

  provisioner "file" {
    source      = var.sourcefile
    destination = var.destfile
  }

  provisioner "remote-exec" {

    inline = [
      var.chmodfile,
      var.runfile
    ]
  }

}
