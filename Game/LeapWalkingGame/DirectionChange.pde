class DirectionChange {
  void setDirection(Character character, Hand hand) {
   
    PVector pinkyFingerMetacarpal = hand.getPinkyFinger().getPositionOfJointMcp();  //erster Joint des Fingers von der Hand aus gesehen (=Verbindung zur Hand)
    PVector indexFingerMetacarpal = hand.getIndexFinger().getPositionOfJointMcp();
    
    PVector fingerConnection = indexFingerMetacarpal;
    fingerConnection.sub(pinkyFingerMetacarpal);   //calculate Vector between those two points
    
    PVector direction = fingerConnection;
    direction.rotate(HALF_PI);   //rotate the vector by 90degrees to get the perpendicular vector
    
    direction.normalize();
    println(direction);
    direction.set(direction.x, direction.z, direction.y);
    
    character.setSpeed(direction);
  }
}