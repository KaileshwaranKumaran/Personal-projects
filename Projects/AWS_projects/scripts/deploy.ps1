param(
    [Parameter(Mandatory=$true)] [string]$StackName,
    [Parameter(Mandatory=$true)] [string]$TemplatePath,
    [Parameter(Mandatory=$true)] [string]$Email,
    [string]$Env = "dev"
)

aws cloudformation deploy `
    --template-file $TemplatePath `
    --stack-name $StackName `
    --capabilities CAPABILITY_IAM `
    --parameter-overrides EmailAddress=$Email EnvironmentName=$Env

aws cloudformation describe-stacks `
    --stack-name $StackName `
    --query "Stacks[0].Outputs"