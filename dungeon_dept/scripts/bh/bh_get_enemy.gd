class_name GetEnemy 
extends ConditionLeaf

func tick(actor:Node, _blackboard:Blackboard) -> int:
	if actor.enemy != null:
		return SUCCESS
		
	var _e = actor.senses.get_enemy()
	#print("get enemy: ", _e)
	if _e == null:
		return FAILURE
	else:
		actor.enemy = _e
		return SUCCESS
