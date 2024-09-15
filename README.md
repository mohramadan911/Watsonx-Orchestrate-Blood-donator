# Watsonx-Orchestrate-Blood-donator
Blood Donor Finder: Automating Blood Donation Matching with Watsonx Orchestrate and AWS


This repository contains the infrastructure and code for the Blood Donor Finder project, designed to streamline the process of finding and contacting blood donors based on their blood type and location. Using Watsonx Orchestrate, AWS Lambda, and DynamoDB, the solution helps hospitals and patients quickly locate suitable donors for critical cases.

## Features:

- Blood Donor Database: Built using AWS DynamoDB to store and manage donor information, including blood type, location, and contact details.
  
- Serverless Querying: AWS Lambda function to query DynamoDB and retrieve relevant donors based on the patient’s needs.
  
- Conversational AI: Watsonx Orchestrate’s AI Assistant guides users through the process of finding blood donors via natural language queries.
  
- Automated Emails: Automatically send emails to selected blood donors using pre-configured workflows.

  
## Components:
Terraform: Infrastructure as code (IaC) to create the DynamoDB table and manage AWS resources.

AWS Lambda: Serverless backend to handle querying of the blood donor database.

Watsonx Orchestrate: AI-driven automation for managing user interactions, retrieving donor data, and sending emails.

AWS DynamoDB: Scalable and highly available NoSQL database to store donor information.

## Technologies Used:

AWS Lambda (Node.js/Python)
AWS DynamoDB
Terraform for Infrastructure as Code (IaC)
Watsonx Orchestrate
AWS SDK for integration with DynamoDB and Lambda
