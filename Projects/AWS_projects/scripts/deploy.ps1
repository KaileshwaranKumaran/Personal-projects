param(
    [Parameter(Mandatory=$true)] [string]$StackName,
    [Parameter(Mandatory=$true)] [string]$TemplatePath,
    [string]$Email = "",
    [string]$Env = "dev"
)

if ($Email -ne "") {
    $overrides = "EmailAddress=$Email EnvironmentName=$Env"
} else {
    $overrides = "EnvironmentName=$Env"
}

aws cloudformation deploy `
    --template-file $TemplatePath `
    --stack-name $StackName `
    --capabilities CAPABILITY_IAM `
    --parameter-overrides $overrides

aws cloudformation describe-stacks `
    --stack-name $StackName `
    --query "Stacks[0].Outputs"