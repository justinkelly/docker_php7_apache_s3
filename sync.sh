#!/bin/bash

if [ "$1" = "up" ] ; then
  #/s3 --region "${AWS_REGION}" sync /app/ s3://${AWS_BUCKET}/
  /mc --quiet mirror --force /app/ myminio/${AWS_BUCKET}/
else
  #/s3 --region "${AWS_REGION}" sync s3://${AWS_BUCKET}/ /app/
  /mc --quiet mirror myminio/${AWS_BUCKET}/ /app/
fi
