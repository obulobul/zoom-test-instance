resource "aws_eip" "test-eip" {
  instance    = "${aws_instance.test-instance.id}"
}