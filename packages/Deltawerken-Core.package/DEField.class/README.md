DEField is the root class of all fields. It has some basic functionality to store common properties, and to display those.

Instance Variables:
	key 		used for linking this field to custom actions
	accessor	used to get/set the value from the domainobject
	label		the name of this field
	info 		information that can be displayed in a mouse over.
	sorted 		indicates if one can sort on this field
	reverse	defeault search order
	searchStrategy	<DESearchStrategy>
	readonly	<Boolean>
	validator	<DEValidator>
	updater	<DEUpdater>
	inputId 		<Object>
	editInfo		<ProtoObject>
	summarySize	<ProtoObject>
	sortBlock	<ProtoObject>
	columnClass	<ProtoObject>