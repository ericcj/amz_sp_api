#!/bin/bash

# exit on error
set -e

for FILE in `find ../selling-partner-api-models/models -name "*.json"`; do 
	API_NAME=`echo $FILE | awk -F/ '{print $4}'`
	MODULE_NAME=`echo $API_NAME | perl -pe 's/(^|-)./uc($&)/ge;s/-//g'`

	# Fulfillment Inbound API v0 is mostly deprecated, but some required
	# inbound operations still exist only in v0 per Amazon's docs:
 	# https://developer-docs.amazon.com/sp-api/docs/fulfillment-inbound-api#considerations
   	if [[ "$FILE" == *"fulfillment-inbound-api-model/fulfillmentInboundV0.json" ]]; then
		API_NAME="${API_NAME}-V0"
		MODULE_NAME="${MODULE_NAME}V0"
	fi

	# use -f to avoid erroring if directory doesn't exist
	rm -rf lib/${API_NAME}
	mkdir lib/$API_NAME
	cp config.json lib/$API_NAME
	# sed must be BSD sed; not GNU sed
	sed -i '' "s/GEMNAME/${API_NAME}/g" lib/${API_NAME}/config.json
	sed -i '' "s/MODULENAME/${MODULE_NAME}/g" lib/${API_NAME}/config.json

	swagger-codegen generate -i $FILE -l ruby -c lib/${API_NAME}/config.json -o lib/$API_NAME

	mv lib/${API_NAME}/lib/${API_NAME}.rb lib/
	mv lib/${API_NAME}/lib/${API_NAME}/* lib/${API_NAME}
	rm -r lib/${API_NAME}/lib
	rm lib/${API_NAME}/*.gemspec
done
