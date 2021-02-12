#!/bin/bash

for FILE in `find ~/selling-partner-api-models/models -name "*.json"`; do swagger-codegen generate -i $FILE -l ruby -c config.json; done
