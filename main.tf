resource "aws_instance" "test-instance" {
  ami             = "${data.aws_ami.ubuntu.id}"
  instance_type   = "t2.micro"
  key_name        = "${aws_key_pair.my-test-key.key_name}"

  security_groups = [
    "${aws_security_group.allow_ssh.name}",
    "${aws_security_group.allow_inbound.name}",
    "${aws_security_group.allow_outbound.name}"
  ]

  tags = {
    Name = "zoom-test-instance"
  }
}