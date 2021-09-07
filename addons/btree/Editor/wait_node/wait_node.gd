tool
extends BehaviorTreeNode

const Runtime = preload("res://addons/btree/Runtime/runtime.gd")
const type = Runtime.TNodeTypes.WAIT


func get_data():
	var ret_data = .get_data()
	ret_data.count = $slot0/count.value
	return ret_data

func set_data(data):
	.set_data(data)
	$slot0/count.value = data.count	
	return
