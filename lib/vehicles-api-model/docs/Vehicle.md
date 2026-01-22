# AmzSpApi::VehiclesApiModel::Vehicle

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**make** | **String** | Vehicle Brand. | 
**model** | **String** | Specific model of a vehicle. | 
**variant_name** | **String** | Name of the vehicle variant. | [optional] 
**body_style** | **String** | Body style of vehicle (example: Hatchback, Cabriolet). | [optional] 
**drive_type** | **String** | Drive type of vehicle(example: Rear wheel drive). | [optional] 
**energy** | **String** | Energy Source for the vehicle(example: Petrol) | [optional] 
**engine_output** | [**Array&lt;EngineOutput&gt;**](EngineOutput.md) | Engine output of vehicle. | [optional] 
**manufacturing_start_date** | [**MonthAndYear**](MonthAndYear.md) |  | [optional] 
**manufacturing_stop_date** | [**MonthAndYear**](MonthAndYear.md) |  | [optional] 
**last_processed_date** | **String** | The date on which the vehicle was last updated, in ISO-8601 date/time format. | [optional] 
**status** | [**VehicleStatusInCatalog**](VehicleStatusInCatalog.md) |  | [optional] 
**identifiers** | [**Array&lt;VehicleIdentifiers&gt;**](VehicleIdentifiers.md) | Identifiers that can be used to identify the vehicle uniquely | 

