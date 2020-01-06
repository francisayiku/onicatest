resource "aws_s3_bucket" "elb" {
  bucket = "${var.aws_s3_bucket}"
  policy = <<EOF
  {
   "Version": "2012-10-17"
   "Statement": [
       {
           "Effect": "Allow",
           "Principal": {
               "AWS":"arn:aws:iam::797873946194:root"

           },
           "Action": "s3:PutObject",
           "Resource":"arn:aws:s3:::elb-log.francis-onica1/*"
       }
   ]
  }
EOF
}
