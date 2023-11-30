#!/bin/bash
# Expected Parameters: 
#   $1: Execution type: accepts => deploy, delete.
#   $2: Stack name
#   $3: Template filename.
#   $4: Parameters filename

# Usage examples:
#   ./exec.sh deploy stackname template-filename parameter-filename
#   ./exec.sh preview stackname template-filename parameter-filename
#   ./exec.sh delete stackname
#

# Validate parameters
if [[ $1 != "deploy" && $1 != "delete"  ]]; then
    echo "ERROR: Accepted execution type are deploy, delete." >&2
    exit 1
fi

EXEC_TYPE=$1
STACK_NAME=$2
TEMPLATE_FILE_NAME=$3
PARAMETERS_FILE_NAME=$4

# Execute CloudFormation CLI
if [ $EXEC_TYPE == "deploy" ]
then
    aws cloudformation deploy \
        --stack-name $STACK_NAME \
        --template-file $TEMPLATE_FILE_NAME \
        --parameter-overrides file://$PARAMETERS_FILE_NAME \
         --capabilities "CAPABILITY_NAMED_IAM"  \
        --region=us-east-1
fi
if [ $EXEC_TYPE == "delete" ]
then
    aws cloudformation delete-stack \
        --stack-name $STACK_NAME \
        --region=us-east-1
fi

