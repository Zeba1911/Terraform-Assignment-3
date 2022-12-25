resource"aws_s3_bucket" "S3_Bucket"{
    bucket=var.Bucketname
    tags = var.tag_name

}