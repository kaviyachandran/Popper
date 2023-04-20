Scene description:
- We have a knob attached to a bar. Given the antecedents, we should be able to infer if the obj has a prismatic joint. In which direction does the joint move?
<!-- Along -x wrt map -->
- PreCondition: canPush(Direction) => [negated_free(gripper)], contact(gripper,Obj)
- push(Object, Direction) => canPush(Direction), Object(object), Moved(Object, Direction).
- Moved(Object, Direction) => hasJoint(Object, 'Prismatic'), movesAlong(Direction)


BK:
- Moves -  has joint, if not rigid
- Direction - Left => moves along -x and Right => moves along +x
