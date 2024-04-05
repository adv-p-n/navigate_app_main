class Waypoint implements Comparable<Waypoint> {
  final String name;
  final double posX;
  final double posY;
  final int floor;

  Waypoint({
    required this.name,
    required this.posX,
    required this.posY,
    required this.floor,
  });

  factory Waypoint.withFloor(
    String name,
    double posX,
    double posY,
  ) {
    return Waypoint(
      name: name,
      posX: posX,
      posY: posY,
      floor: 1,
    );
  }

  @override
  int compareTo(Waypoint other) {
    // Compare waypoints based on their names
    return name.compareTo(other.name);
    // If you want to compare based on other criteria, adjust the logic here
  }
}

final List<Waypoint> waypoints = [
  gwt1,
  n109c,
  n109cCor,
  n109b,
  n109bCor,
  n109a,
  n109aCor,
  n112d,
  n112dCor,
  n112c,
  n112cCor,
  n112b,
  n112a,
  n111b,
  n111a,
  n110,
  n108,
  n107,
  n106,
  n102,
  n103,
  n105,
  n101,
  gwm1,
  n104e,
  n104f,
  n104g,
  n104h,
  n104i,
  n104d,
  n104c,
  n104b,
  n104a,
  s112,
  s111,
  s110,
  lwt1,
  s109e,
  s109d,
  s109c,
  s109b,
  s109a,
  lwm1,
  s104c,
  s104ab,
  icts,
  s108,
  s107,
  s106,
  csesr,
  s103b,
  s103a,
  s102b,
  s102a,
  s101b,
  s101a,
  a107d,
  a107c,
  a107b,
  a107aDeputyControllerOfExam,
  a106FinanceAndAccounts,
  a103,
  s113,
  stairTM1,
  stairMM1,
  stairLM1,
  stairTL1,
  stairML1,
  stairMR1,
  stairLL1,
  stairLR1,
  n112bCor,
  n112aCor,
  n111bCor,
  n111aCor,
  n110Cor,
  n108Cor,
  n107Cor,
  n106Cor,
  n105Cor,
  n102Cor,
  n103Cor,
  n101Cor,
  gwm1Cor,
  n104eCor,
  n104fCor,
  n104gCor,
  n104hCor,
  n104iCor,
  n104dCor,
  n104cCor,
  n104bCor,
  n104aCor,
  s112Cor,
  s111Cor,
  s110Cor,
  lwt1Cor,
  s109eCor,
  s109dCor,
  s109cCor,
  s109bCor,
  s109aCor,
  lwm1Cor,
  s104cCor,
  s104abCor,
  ictsCor,
  s108Cor,
  s107Cor,
  s106Cor,
  csesrCor,
  s103aCor,
  s102bCor,
  s102aCor,
  s101bCor,
  s101aCor,
  a107dCor,
  a107cCor,
  a107aDeputyControllerOfExamCor,
  a107bCor,
  a106FinanceAndAccountsCor,
  a103Cor,
  stairTM1Cor,
  stairMM1Cor,
  stairLM1Cor,
  stairTL1Cor,
  stairML1Cor,
  stairMR1Cor,
  stairLL1Cor,
  stairLR1Cor,
  junction1,
  junction2,
  junction3,
  junction4,
  junction5,
  junction6,
  junction7,
  junction8,
  junction9,
  junction10,
  junction12,
  junction13,
  junction11,
  junction14,
  s103bCor,
  //floor 2
  n207,
  n207Cor,
  stairMM2,
  stairMM2Cor,
  //floor3
  stairMM3,
  stairMM3Cor,
  s307,
  s307Cor,
];

final gwt1 = Waypoint(name: 'GWT1', posX: 85, posY: 50, floor: 1);
final n109c = Waypoint(name: 'N109C', posX: 85, posY: 90, floor: 1);
final n109cCor = Waypoint(name: 'N109C-C', posX: 107.5, posY: 90, floor: 1);

final n109b = Waypoint(name: 'N109B', posX: 85, posY: 120, floor: 1);
final n109bCor = Waypoint(name: 'N109B-C', posX: 107.5, posY: 120, floor: 1);

final n109a = Waypoint(name: 'N109A', posX: 85, posY: 150, floor: 1);
final n109aCor = Waypoint(name: 'N109A', posX: 107.5, posY: 150, floor: 1);

final n112d = Waypoint(name: 'N112D', posX: 160, posY: -5, floor: 1);
final n112dCor = Waypoint(name: 'N112D-C', posX: 180, posY: -5, floor: 1);

final n112c = Waypoint(name: 'N112C', posX: 160, posY: 5, floor: 1);
final n112cCor = Waypoint(name: 'N112C-C', posX: 180, posY: 5, floor: 1);

final n112b = Waypoint(name: 'N112B', posX: 160, posY: 20, floor: 1);
final n112bCor = Waypoint(name: 'N112B-C', posX: 180, posY: 20, floor: 1);

final n112a = Waypoint(name: 'N112A', posX: 160, posY: 35, floor: 1);
final n112aCor = Waypoint(name: 'N112A-C', posX: 180, posY: 35, floor: 1);

final n111b = Waypoint(name: 'N111E', posX: 160, posY: 45, floor: 1);
final n111bCor = Waypoint(name: 'N111E-C', posX: 180, posY: 45, floor: 1);

final n111a = Waypoint(name: 'N111A', posX: 160, posY: 50, floor: 1);
final n111aCor = Waypoint(name: 'N111A-C', posX: 180, posY: 50, floor: 1);

final n110 = Waypoint(name: 'N110', posX: 160, posY: 78, floor: 1);
final n110Cor = Waypoint(name: 'N110-C', posX: 180, posY: 78, floor: 1);

final n108 = Waypoint(name: 'N108', posX: 160, posY: 130, floor: 1);
final n108Cor = Waypoint(name: 'N108-C', posX: 180, posY: 130, floor: 1);

final n107 = Waypoint(name: 'N107', posX: 160, posY: 155, floor: 1);
final n107Cor = Waypoint(name: 'N107-C', posX: 180, posY: 155, floor: 1);

final n106 = Waypoint(name: 'N106', posX: 160, posY: 185, floor: 1);
final n106Cor = Waypoint(name: 'N106-C', posX: 180, posY: 185, floor: 1);

final n102 = Waypoint(name: 'N102', posX: 160, posY: 300, floor: 1);
final n102Cor = Waypoint(name: 'N102-C', posX: 180, posY: 300, floor: 1);

final n103 = Waypoint(name: 'N103', posX: 160, posY: 270, floor: 1);
final n103Cor = Waypoint(name: 'N103-C', posX: 180, posY: 270, floor: 1);

final n105 = Waypoint(name: 'N105', posX: 160, posY: 230, floor: 1);
final n105Cor = Waypoint(name: 'N105-C', posX: 180, posY: 230, floor: 1);

final n101 = Waypoint(name: 'N101', posX: 160, posY: 330, floor: 1);
final n101Cor = Waypoint(name: 'N101-C', posX: 180, posY: 330, floor: 1);

final gwm1 = Waypoint(name: 'GWM1', posX: 5, posY: 250, floor: 1);
final gwm1Cor = Waypoint(name: 'GWM1-C', posX: 16, posY: 250, floor: 1);

final n104e = Waypoint(name: 'N104E', posX: 16, posY: 210, floor: 1);
final n104eCor = Waypoint(name: 'N104E-C', posX: 16, posY: 240, floor: 1);

final n104f = Waypoint(name: 'N104F', posX: 50, posY: 210, floor: 1);
final n104fCor = Waypoint(name: 'N104F-C', posX: 50, posY: 240, floor: 1);

final n104g = Waypoint(name: 'N104G', posX: 62, posY: 210, floor: 1);
final n104gCor = Waypoint(name: 'N104G-C', posX: 62, posY: 240, floor: 1);

final n104h = Waypoint(name: 'N104H', posX: 78, posY: 210, floor: 1);
final n104hCor = Waypoint(name: 'N104H-C', posX: 78, posY: 240, floor: 1);

final n104i = Waypoint(name: 'N104I', posX: 95, posY: 210, floor: 1);
final n104iCor = Waypoint(name: 'N104I-C', posX: 95, posY: 240, floor: 1);

final n104d = Waypoint(name: 'N104D', posX: 16, posY: 278, floor: 1);
final n104dCor = Waypoint(name: 'N104D-C', posX: 16, posY: 265, floor: 1);

final n104c = Waypoint(name: 'N104C', posX: 50, posY: 278, floor: 1);
final n104cCor = Waypoint(name: 'N104C-C', posX: 50, posY: 265, floor: 1);

final n104b = Waypoint(name: 'N104B', posX: 78, posY: 278, floor: 1);
final n104bCor = Waypoint(name: 'N104B-C', posX: 78, posY: 265, floor: 1);

final n104a = Waypoint(name: 'N104A', posX: 95, posY: 278, floor: 1);
final n104aCor = Waypoint(name: 'N104A-C', posX: 95, posY: 265, floor: 1);

final s112 = Waypoint(name: 'S112', posX: 250, posY: -5, floor: 1);
final s112Cor = Waypoint(name: 'S112-C', posX: 236, posY: -5, floor: 1);

final s111 = Waypoint(name: 'S111', posX: 250, posY: 30, floor: 1);
final s111Cor = Waypoint(name: 'S111-C', posX: 236, posY: 30, floor: 1);

final s110 = Waypoint(name: 'S110', posX: 250, posY: 78, floor: 1);
final s110Cor = Waypoint(name: 'S110-C', posX: 236, posY: 78, floor: 1);

final lwt1 = Waypoint(name: 'LWT1', posX: 325, posY: 57, floor: 1);
final lwt1Cor = Waypoint(name: 'LWT1-C', posX: 307, posY: 57, floor: 1); //

final s109e = Waypoint(name: 'S109E', posX: 325, posY: 78, floor: 1);
final s109eCor = Waypoint(name: 'S109E-C', posX: 307, posY: 78, floor: 1);

final s109d = Waypoint(name: 'S109D', posX: 325, posY: 95, floor: 1);
final s109dCor = Waypoint(name: 'S109D-C', posX: 307, posY: 95, floor: 1);

final s109c = Waypoint(name: 'S109C', posX: 325, posY: 115, floor: 1);
final s109cCor = Waypoint(name: 'S109C-C', posX: 307, posY: 115, floor: 1);

final s109b = Waypoint(name: 'S109B', posX: 325, posY: 130, floor: 1);
final s109bCor = Waypoint(name: 'S109B-C', posX: 307, posY: 130, floor: 1);

final s109a = Waypoint(name: 'S109A', posX: 325, posY: 148, floor: 1);
final s109aCor = Waypoint(name: 'S109A-C', posX: 307, posY: 148, floor: 1);

final lwm1 = Waypoint(name: 'LWM1', posX: 325, posY: 195, floor: 1);
final lwm1Cor = Waypoint(name: 'LWM1-C', posX: 307, posY: 195, floor: 1);

final s104c = Waypoint(name: 'S104C', posX: 325, posY: 220, floor: 1);
final s104cCor = Waypoint(name: 'S104C-C', posX: 307, posY: 220, floor: 1);

final s104ab = Waypoint(name: 'S104A&B', posX: 325, posY: 260, floor: 1);
final s104abCor = Waypoint(name: 'S104A&B-C', posX: 307, posY: 260, floor: 1);

final icts = Waypoint(name: 'ICTS', posX: 325, posY: 390, floor: 1);
final ictsCor = Waypoint(name: 'ICTS-C', posX: 307, posY: 390, floor: 1);

final s108 = Waypoint(name: 'S108', posX: 250, posY: 130, floor: 1);
final s108Cor = Waypoint(name: 'S108-C', posX: 236, posY: 130, floor: 1);

final s107 = Waypoint(name: 'S107', posX: 250, posY: 155, floor: 1);
final s107Cor = Waypoint(name: 'S107-C', posX: 236, posY: 155, floor: 1);

final s106 = Waypoint(name: 'S106', posX: 250, posY: 185, floor: 1);
final s106Cor = Waypoint(name: 'S106-C', posX: 236, posY: 185, floor: 1);

final csesr = Waypoint(name: 'CSESR', posX: 250, posY: 230, floor: 1);
final csesrCor = Waypoint(name: 'CSESR-C', posX: 236, posY: 230, floor: 1);

final s103b = Waypoint(name: 'S103B', posX: 250, posY: 266, floor: 1);
final s103bCor = Waypoint(name: 'S103B-C', posX: 236, posY: 266, floor: 1);

final s103a = Waypoint(name: 'S103A', posX: 250, posY: 276, floor: 1);
final s103aCor = Waypoint(name: 'S103A-C', posX: 236, posY: 276, floor: 1);

final s102b = Waypoint(name: 'S102B', posX: 250, posY: 289, floor: 1);
final s102bCor = Waypoint(name: 'S102B-C', posX: 236, posY: 289, floor: 1);

final s102a = Waypoint(name: 'S102A', posX: 250, posY: 310, floor: 1);
final s102aCor = Waypoint(name: 'S102A-C', posX: 236, posY: 310, floor: 1);

final s101b = Waypoint(name: 'S101B', posX: 250, posY: 325, floor: 1);
final s101bCor = Waypoint(name: 'S101B-C', posX: 236, posY: 325, floor: 1);

final s101a = Waypoint(name: 'S101A', posX: 250, posY: 335, floor: 1);
final s101aCor = Waypoint(name: 'S101A-C', posX: 236, posY: 335, floor: 1);

final a107d = Waypoint(name: 'A107D', posX: 95, posY: 340, floor: 1);
final a107dCor = Waypoint(name: 'A107D-C', posX: 110, posY: 340, floor: 1);

final a107c = Waypoint(name: 'A107C', posX: 95, posY: 360, floor: 1);
final a107cCor = Waypoint(name: 'A107C-C', posX: 110, posY: 360, floor: 1);

final a107b = Waypoint(name: 'A107B', posX: 95, posY: 375, floor: 1);
final a107bCor = Waypoint(name: 'A107B-C', posX: 110, posY: 375, floor: 1);

final a107aDeputyControllerOfExam = Waypoint(
    name: 'A107A_DeputyControllerOfExam', posX: 95, posY: 400, floor: 1);
final a107aDeputyControllerOfExamCor = Waypoint(
    name: 'A107A_DeputyControllerOfExam-C', posX: 110, posY: 397, floor: 1);

final a106FinanceAndAccounts =
    Waypoint(name: 'A106_FinanceAndAccounts', posX: 140, posY: 410, floor: 1);
final a106FinanceAndAccountsCor =
    Waypoint(name: 'A106_FinanceAndAccounts-C', posX: 140, posY: 395, floor: 1);

final a103 = Waypoint(name: 'A103', posX: 250, posY: 410, floor: 1);
final a103Cor = Waypoint(name: 'A103-C', posX: 250, posY: 395, floor: 1);

final s113 = Waypoint(name: 'S113', posX: 200, posY: -5, floor: 1);

final stairTM1 = Waypoint(name: 'STAIR_TM1', posX: 200, posY: 50, floor: 1);
final stairTM1Cor =
    Waypoint(name: 'STAIR_TM1-C', posX: 200, posY: 60, floor: 1);

final stairMM1 = Waypoint(name: 'STAIR_MM1', posX: 200, posY: 155, floor: 1);
final stairMM1Cor =
    Waypoint(name: 'STAIR_MM1-C', posX: 200, posY: 160, floor: 1);

final stairLM1 = Waypoint(name: 'STAUR_LM1', posX: 200, posY: 250, floor: 1);
final stairLM1Cor =
    Waypoint(name: 'STAUR_LM1-C', posX: 200, posY: 255, floor: 1);

final stairTL1 = Waypoint(name: 'STAIR_TL1', posX: 126, posY: 115, floor: 1);
final stairTL1Cor =
    Waypoint(name: 'STAIR_TL1-C', posX: 125, posY: 106, floor: 1);

final stairML1 = Waypoint(name: 'STAIR_ML1', posX: 62, posY: 250, floor: 1);
final stairML1Cor =
    Waypoint(name: 'STAIR_ML1-C', posX: 55, posY: 250, floor: 1);

final stairMR1 = Waypoint(name: 'STAIR_MR1', posX: 290, posY: 267, floor: 1);
final stairMR1Cor =
    Waypoint(name: 'STAIR_MR1-C', posX: 290, posY: 256, floor: 1);

final stairLL1 = Waypoint(name: 'STAIR_LL1', posX: 160, posY: 375, floor: 1);
final stairLL1Cor =
    Waypoint(name: 'STAIR_LL1-C', posX: 160, posY: 391, floor: 1);

final stairLR1 = Waypoint(name: 'STAIR_LR1', posX: 250, posY: 374, floor: 1);
final stairLR1Cor =
    Waypoint(name: 'STAIR_LR1-C', posX: 250, posY: 391, floor: 1);
final junction1 = Waypoint(name: 'junction1', posX: 180, posY: 60, floor: 1);
final junction2 = Waypoint(name: 'junction2', posX: 180, posY: 106, floor: 1);
final junction3 = Waypoint(name: 'junction3', posX: 180, posY: 160, floor: 1);
final junction4 = Waypoint(name: 'junction4', posX: 180, posY: 250, floor: 1);
final junction5 = Waypoint(name: 'junction5', posX: 180, posY: 391, floor: 1);
final junction6 = Waypoint(name: 'junction6', posX: 236, posY: 60, floor: 1);
final junction7 = Waypoint(name: 'junction7', posX: 236, posY: 106, floor: 1);
final junction8 = Waypoint(name: 'junction8', posX: 236, posY: 160, floor: 1);
final junction9 = Waypoint(name: 'junction9', posX: 236, posY: 250, floor: 1);
final junction10 = Waypoint(name: 'junction10', posX: 236, posY: 391, floor: 1);
final junction12 = Waypoint(name: 'junction12', posX: 102, posY: 255, floor: 1);
final junction13 = Waypoint(name: 'junction13', posX: 301, posY: 255, floor: 1);
final junction11 =
    Waypoint(name: 'junction11', posX: 107.5, posY: 106, floor: 1);
final junction14 = Waypoint(name: 'junction14', posX: 305, posY: 106, floor: 1);

//Floor2
final n207 = Waypoint(name: 'N207', posX: 160, posY: 155, floor: 2);
final n207Cor = Waypoint(name: 'N207-C', posX: 180, posY: 155, floor: 2);

final stairMM2 = Waypoint(name: 'STAIR_MM2', posX: 200, posY: 140, floor: 2);
final stairMM2Cor =
    Waypoint(name: 'STAIR_MM2-C', posX: 200, posY: 160, floor: 2);

//Floor3
final stairMM3 = Waypoint(name: 'STAIR_MM3', posX: 200, posY: 155, floor: 3);
final stairMM3Cor =
    Waypoint(name: 'STAIR_MM3-C', posX: 200, posY: 160, floor: 3);

final s307 = Waypoint(name: 'S307', posX: 250, posY: 155, floor: 3);
final s307Cor = Waypoint(name: 'S307-C', posX: 236, posY: 155, floor: 3);

final waypointNotFound =
    Waypoint(name: 'Waypoint Not Found', posX: 0, posY: 0, floor: 0);
