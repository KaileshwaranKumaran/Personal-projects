# Personal Projects

A collection of personal projects across data analysis and cloud engineering.
Built to develop practical skills beyond certification — focused on real deployment, infrastructure as code, and event-driven architecture.

## Repository Structure

```
Personal-Projects/
├── Finance_Customer_focus/        # Data analysis and business intelligence
│   ├── 01_Company_profit_expenditure/
│   └── 02_Customer_Churn_Project/
└── AWS_projects/                  # Cloud infrastructure and IaC
    ├── 01_Basic_CF_yaml_projects/ # S3 → SNS email notification
    ├── 02_S3_Lambda_DynamoDB/     # S3 → Lambda → DynamoDB pipeline
    └── scripts/                   # Shared deploy and delete scripts
```

## Data Projects

**01 Company Profit and Expenditure**
Analysis of company financial data — profit, expenditure trends, and business performance metrics.

**02 Customer Churn**
ETL pipeline and analysis for customer churn prediction — data preparation, feature engineering, and churn indicators.

## AWS Projects

All AWS projects are deployed using CloudFormation — infrastructure defined as code, version controlled, and deployable with a single command. No console clicking for resource creation.

**01 S3 → SNS Email Notification**
Event-driven stack where S3 uploads trigger email notifications via SNS. Covers CloudFormation fundamentals, resource dependencies, and IAM permissions between services.

**02 S3 → Lambda → DynamoDB Pipeline**
CSV files uploaded to S3 trigger a Lambda function that parses each row and writes it to DynamoDB. Covers IAM role design, Lambda permissions, two-sided service connections, and environment variable injection.

## Deployment

All AWS stacks use shared parameterised scripts from the `scripts/` folder:

```powershell
# Deploy any stack
.\scripts\deploy.ps1 -StackName "stack-name" -TemplatePath ".\project\template.yaml"

# Delete any stack
.\scripts\delete.ps1 -StackName "stack-name"
```