resource "aws_iam_user" "Jyothsna" {
    name = "Jyothsna"
}

resource "aws_iam_policy" "policy" {
  name        = "test-policy"
  description = "A test policy"
  policy = <<EOF
 {
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "ec2:Describe*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

#resource "aws_instance" "example" {
#  instance_type = "t2.micro"
#  ami           = "ami-0cff7528ff583bf9a"
#  aws_security_group = aws_security_group.demosg.id
#  security_groups = ["demosg"]
#}

#amifrominstance
#resource "aws_ami_from_instance" "example" {
#  name = "terraform-example"
#  source_instance_id = "i-0f5a17c6e64b2291e"
#}

#resource "aws_ami_launch_permission" "share" {
#  image_id= "${aws_ami_from_instance.example.id}"
#  account_id = "${var.account_ids}"
#}
