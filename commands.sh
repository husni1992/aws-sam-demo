# create a S3 bucket
aws s3 mb s3://husny-code-sam

# package cloudformation
aws cloudformation package --s3-bucket husny-code-sam --template-file template.yaml --output-template-file gen/template-generated.yaml

# same above command in sam:
sam package --s3-bucket husny-code-sam --template-file template.yaml --output-template-file gen/template-generated.yaml

# deploy
aws cloudformation deploy --template-file gen/template-generated.yaml --stack-name hello-world-sam --capabilities CAPABILITY_IAM