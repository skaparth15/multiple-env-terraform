resource "aws_instance" "project" {
  ami           = data.aws_ami.data-form.id
  instance_type = local.instance_type
  //count = var.count-no
  vpc_security_group_ids = [data.aws_security_group.existing_sg.id]

  tags = {
    Name = var.instance_name
  }
}
