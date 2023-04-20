%% Context: knob(k), frame(f), attachedTo(k,f), contact(gripper, knob)
%% Action: push(Gripper, k, Direction)
%% Outcome: movedStraight(k), hasJoint(k, J), Prismatic(J), movesAlong(J, Direction)
%% Sidenote: movedStraight to distinguish if it is prismatic or revolute
Direction = {left, right}


knob(Object).
%frame(Object).
joint(Object, Joint). % joint(j, 'prismatic')
%attachedTo(Object, Object).
contact(Object, Object).

% near - to be reachable
near(Object, Object).
negated_near(Gripper, Object).

% there exists some object
object(Object).
movedObject(Object).

% outcome
moved(Object).
hasJoint(Object,Joint).
movesAlong(Joint, Direction).