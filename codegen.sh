#!/bin/bash

touch lib/all.rb
for FILE in `find ../selling-partner-api-models/models -name "*.json"`; do 
	API_NAME=`echo $FILE | awk -F/ '{print $4}'`
	swagger-codegen generate -i $FILE -l ruby -c config.json
	echo "require 'amz_sp_api/sp_api_client'" >> lib/amz_sp_api.rb
	echo "require 'amz_sp_api/sp_configuration'" >> lib/amz_sp_api.rb
	sed 's/Configuration/SpConfiguration/g' lib/amz_sp_api.rb
	mv lib/amz_sp_api.rb lib/${API_NAME}.rb
	echo "require '${API_NAME}'" >> lib/all.rb
done
mv lib/all.rb lib/amz_sp_api.rb
