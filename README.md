# Personal Projects

A collection of personal projects across data analysis and cloud engineering.
Built to develop practical skills beyond certification — focused on real deployment, infrastructure as code, and event-driven architecture.

## Repository Structure

```
Personal-Projects/
├── Finance_Customer_focus/
│   ├── 01_Company_profit_expenditure/
│   └── 02_Customer_Churn_Project/
└── AWS_projects/
    ├── 01_Basic_CF_yaml_projects/     # foundational CloudFormation exercises
    │   ├── 01_S3_Email_service/       # S3 → SNS email notification
    │   └── 02_S3_Lambda_DynamoDB/     # S3 → Lambda → DynamoDB pipeline
    └── scripts/                       # shared deploy and delete scripts
```

## Data Projects

**01 Company Profit and Expenditure**
Analysis of company financial data — profit, expenditure trends, and business performance metrics.

**02 Customer Churn**
ETL pipeline and analysis for customer churn prediction — data preparation, feature engineering, and churn indicators.

## AWS Projects

All AWS projects are deployed using CloudFormation — infrastructure defined as code, version controlled, and deployable with a single command. No console clicking for resource creation.

### 01 Basic CF YAML Projects

Foundational CloudFormation exercises covering core IaC concepts — resource dependencies, IAM permissions, event-driven architecture, and parameterised deployments.

**01 S3 → SNS Email Notification**
S3 uploads trigger email notifications via SNS. Covers CloudFormation fundamentals, DependsOn vs implicit ordering, and two-sided IAM permissions between services.

**02 S3 → Lambda → DynamoDB Pipeline**
CSV files uploaded to S3 trigger a Lambda function that parses each row and writes it to DynamoDB. Covers IAM role design, Lambda permissions, trust policies, and environment variable injection.

## Deployment

All AWS stacks use shared parameterised scripts:

```powershell
# Deploy any stack
.\scripts\deploy.ps1 -StackName "stack-name" -TemplatePath ".\01_Basic_CF_yaml_projects\01_S3_Email_service\template.yaml" -Email "you@email.com"

# Delete any stack
.\scripts\delete.ps1 -StackName "stack-name"
```