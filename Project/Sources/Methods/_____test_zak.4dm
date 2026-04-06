//%attributes = {}
//C_COLLECTION($customers)
//C_LONGINT($randomIndex)

//$customers:=ds.PurchaseOrder.all().toCollection()
//$jobs:=ds.Job.all()

//For each ($job; $jobs)

//$randomIndex:=(Random%$customers.length)
//$job.UUID_PurchaseOrder:=$customers[$randomIndex].UUID

//$job.save()

//End for each 


//var $divisionUUID : Text
//var $steps : cs.StepTemplateSelection
//var $step : cs.StepTemplateEntity

//// Get the division (example: first one)
//$divisionUUID:=ds.Division.all().first().UUID

//// Get all step templates
//$steps:=ds.StepTemplate.all()

//// Loop and assign
//For each ($step; $steps)
//$step.UUID_Division:=$divisionUUID
//$step.save()
//End for each 

//var $division : cs.DivisionEntity
//var $status : Object

//$division:=ds.Division.new()

//$division.name:="ABC"
//$division.levelID:=2
//$division.color:="#800080"  // purple in HEX

//$status:=$division.save()

//If (Not($status.success))
//ALERT("Error: "+$status.statusText)
//Else 
//ALERT("Division created successfully")
//End if 


//var $divisions : Collection
//var $steps : cs.StepTemplateSelection
//var $step : cs.StepTemplateEntity
//var $randomIndex : Integer
//var $status : Object

//// Get the 2 divisions (you can also filter if needed)
//$divisions:=ds.Division.all().toCollection()

//// Safety check
//If ($divisions.length<2)
//ALERT("Need at least 2 divisions")
//Else 

//$steps:=ds.StepTemplate.all()

//For each ($step; $steps)

//// Random index: 0 or 1
//$randomIndex:=(Random%2)+0

//// Assign UUID
//$step.UUID_Division:=$divisions[$randomIndex].UUID

//$status:=$step.save()

//If (Not($status.success))
//ALERT("Error: "+$status.statusText)
//break
//End if 

//End for each 

//End if 

//var $names : Collection
//var $colors : Collection
//var $i : Integer
//var $op : cs.OperationEntity
//var $status : Object

//$names:=New collection("AI"; "FT"; "BI"; "WS")

//// You can customize colors
//$colors:=New collection("#FF5733"; "#33C1FF"; "#28A745"; "#FFC300")

//For ($i; 0; $names.length-1)

//$op:=ds.Operation.new()

//$op.name:=$names[$i]
//$op.levelID:=$i+1
//$op.color:=$colors[$i]

//$status:=$op.save()

//If (Not($status.success))
//ALERT("Error: "+$status.statusText)
//break
//End if 

//End for 


//var $operations : Collection
//var $steps : cs.StepTemplateSelection
//var $step : cs.StepTemplateEntity
//var $randomIndex : Integer
//var $status : Object

//// Get all operations (your 4 records)
//$operations:=ds.Operation.all().toCollection()

//// Safety check
//If ($operations.length=0)
//ALERT("No operations found")
//Else 

//$steps:=ds.StepTemplate.all()

//For each ($step; $steps)

//// Random index
//$randomIndex:=(Random%4)+0

//// Assign UUID
//$step.UUID_Operation:=$operations[$randomIndex].UUID

//$status:=$step.save()

//If (Not($status.success))
//ALERT("Error: "+$status.statusText)
//break
//End if 

//End for each 

//End if 

var $op : cs:C1710.OperationEntity
var $status : Object

// AI → white
$op:=ds:C1482.Operation.query("name = :1"; "AI").first()
If ($op#Null:C1517)
	$op.color:="#FFFFFF"
	$status:=$op.save()
End if 

// FT → blue
$op:=ds:C1482.Operation.query("name = :1"; "FT").first()
If ($op#Null:C1517)
	$op.color:="#0000FF"
	$status:=$op.save()
End if 

// BI → red
$op:=ds:C1482.Operation.query("name = :1"; "BI").first()
If ($op#Null:C1517)
	$op.color:="#FF0000"
	$status:=$op.save()
End if 

// WS → green
$op:=ds:C1482.Operation.query("name = :1"; "WS").first()
If ($op#Null:C1517)
	$op.color:="#00FF00"
	$status:=$op.save()
End if 