resource "aws_s3_bucket" "bucket1" {
  bucket = "web-bucket-kamal"

}

resource "aws_instance" "terraform" {
    ami = "ami-020cba7c55df1f615"
    instance_type = "t2.micro"
    key_name = "jenkinsserver"
}