Scene description:
- We have a knob attached to a bar. Given the antecedents, we should be able to infer if the obj has a prismatic joint. In which direction does the joint move?
<!-- Along -x wrt map -->
- PreCondition: canPush(gripperObject, Direction) => [negated_free(gripper)], contact(gripper,Obj)
- push(Object, GripperObject, Direction) => canPush(Direction), Object(object), Moved(Object, Direction), hasJoint(Object, 'Prismatic')
- Moved(Object, Direction) => hasJoint(Object, 'Prismatic'), movesAlong(Direction)


BK:
- Initial belief is everything is rigidly connected
- Moves -  has joint, if not rigid
- Direction - Left => moves along -x and Right => moves along +x

### Context
- cover - door, 
- handle(h) / knob(h), cover(c), attachedTo(h, c)

### Action
pushstraightleft, pushstraightright
### Effect
moved(c)
### Inferred 
prismaticleft / prismaticright

hasDisp(Object, Graspable)
moved(Object, Direction):-  negated_free(gripper), contact(gripper,Object), pullstraight(Object, Direction) 
