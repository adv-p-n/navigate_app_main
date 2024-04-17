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
  gwt2,
  n209e, n209eCor,
  n209d, n209dCor,
  n209c, n209cCor,
  n209b, n209bCor,
  n209a, n209aCor,
  stairTL2, stairTL2Cor,
  n211c, n211cCor,
  n211b, n211bCor,
  n211a, n211aCor,
  n210, n210Cor,
  n208, n208Cor,
  n206, n206Cor,
  n205c, n205cCor,
  n205a, n205aCor,
  n205b, n205bCor,
  stairLM2, stairLM2Cor,
  n203, n203Cor,
  n202, n202Cor,
  n201, n201Cor,
  s212b, s212bCor,
  s212a, s212aCor,
  s211b, s211bCor,
  s211a, s211aCor,
  s210, s210Cor,
  s208, s208Cor,
  s207, s207Cor,
  s206, s206Cor,
  s205b, s205bCor,
  s205c, s205cCor,
  s205a, s205aCor,
  s203, s203Cor,
  s202, s202Cor,
  s201, s201Cor,
  gwm2, gwm2Cor,
  n204ef, n204efCor,
  n204d, n204dCor,
  n204c, n204cCor,
  n204b, n204bCor,
  n204a, n204aCor,
  n207c, n207cCor,
  n204g, n204gCor,
  n204h, n204hCor,
  n204i, n204iCor,
  n204j, n204jCor,
  n204k, n204kCor,
  lwt2, lwt2Cor,
  s209, s209Cor,
  lwm2, lwm2Cor,
  s204g, s204gCor,
  s204, s204Cor,
  a201a, a201aCor,
  a201b, a201bCor,
  a201c, a201cCor,
  a207a, a207aCor,
  a207b, a207bCor,
  a207c, a207cCor,
  a206, a206Cor,
  a205,
  a204cir, a204cirCor,
  a203,
  a202tcc, a202tccCor,
  stairTM2, stairTM2Cor,
  stairML2, stairML2Cor,
  stairLL2, stairLL2Cor,
  stairLR2, stairLR2Cor,
  stairMR2, stairMR2Cor,
  //floor3
  stairMM3,
  stairMM3Cor,
  s307,
  s307Cor,
  s002,
  s002Cor,
  n309a,
  n309aCor,
  n309b, n309bCor,
  n309c, n309cCor,
  n309d,
  n309dCor,
  gwt3, n310, n310Cor,
  n311e, n311eCor, n311d, n311dCor, n311c, n311cCor, n311b, n311bCor, n311f,
  n311fCor, n311a, n311aCor,
  stairLM3, stairLM3Cor,
  n308, n308Cor, n307, n308Cor, n306, n306Cor, n305a, n305aCor, n305b, n305bCor,
  n305a, n305aCor, n303, n303Cor, n302, n302Cor, n301, n301Cor, n305c, n305cCor,
  n307Cor,
  s312a, s312aCor, s312b, s312bCor, s311b, s311bCor, s311a, s311aCor,
  s310, s310Cor, s308, s308Cor,
  s306, s306Cor, s305c, s305cCor, s305b, s305bCor, s305a, s305aCor, s303,
  s303Cor, s302, s302Cor, s301, s301Cor,
  n304e, n304eCor, n304d, n304dCor, n304c, n304cCor, n304b, n304bCor, n304a,
  n304aCor,
  gwm3, gwm3Cor,
  n304g, n304gCor, n304h, n304hCor, n304i, n304iCor, n304j, n304jCor,
  stairML3, stairML3Cor,
  lwt3, lwt3Cor, s309b, s309bCor,
  s309a, s309aCor, lwm3, lwm3Cor, s304, s304Cor,
  a301CommonRoomWomen, a301cCorCommonRoomWomen, a302CommonRoomMen,
  a302CorCommonRoomMen,
  stairTM3, stairTM3Cor,
  stairTL3, stairTL3Cor,
  stairLL3, stairLL3Cor, stairLR3, stairLR3Cor,
  junction1l2, junction2l2, //floor2
  junction3l2, junction4l2, junction5l2, junction6l2, //floor2
  junction7l2, junction8l2, junction9l2, junction10l2, junction11l2, //foor2
  junction12l2, junction13l2, junction14l2, //floor2
  junction1l3, junction2l3, //floor3
  junction3l3, junction4l3, //floor3
  junction7l3, junction8l3, junction9l3, junction10l3, junction11l3, //foor3
  junction12l3, junction13l3, junction14l3, //floor3;
  a305, a306Cor, a306, a307, a307Cor,
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
final gwt2 = Waypoint(name: 'GWT2', posX: 85, posY: 50, floor: 2);

final n207 = Waypoint(name: 'N207', posX: 160, posY: 155, floor: 2);
final n207Cor = Waypoint(name: 'N207-C', posX: 180, posY: 155, floor: 2);

final n209e = Waypoint(name: 'N209e', posX: 85, posY: 75, floor: 2);
final n209eCor = Waypoint(name: 'N209e-C', posX: 107.5, posY: 75, floor: 2);

final n209d = Waypoint(name: 'N209d', posX: 85, posY: 90, floor: 2);
final n209dCor = Waypoint(name: 'N209d-C', posX: 107.5, posY: 90, floor: 2);

final n209c = Waypoint(name: 'N209c', posX: 85, posY: 105, floor: 2);
final n209cCor = Waypoint(name: 'N209c-C', posX: 107.5, posY: 105, floor: 2);

final n209b = Waypoint(name: 'N209b', posX: 85, posY: 120, floor: 2);
final n209bCor = Waypoint(name: 'N209b-C', posX: 107.5, posY: 120, floor: 2);

final n209a = Waypoint(name: 'N209a', posX: 85, posY: 136, floor: 2);
final n209aCor = Waypoint(name: 'N209a-C', posX: 107.5, posY: 136, floor: 2);

final stairTL2 = Waypoint(name: 'STAIR_TL2', posX: 126, posY: 110, floor: 2);
final stairTL2Cor =
    Waypoint(name: 'STAIR_TL2-C', posX: 125, posY: 95, floor: 2);

final n211c = Waypoint(name: 'N211a', posX: 160, posY: -5, floor: 2);
final n211cCor = Waypoint(name: 'N211a-C', posX: 180, posY: -5, floor: 2);

final n211b = Waypoint(name: 'N211b', posX: 160, posY: 20, floor: 2);
final n211bCor = Waypoint(name: 'N211b-C', posX: 180, posY: 20, floor: 2);

final n211a = Waypoint(name: 'N211a', posX: 160, posY: 35, floor: 2);
final n211aCor = Waypoint(name: 'N211a-C', posX: 180, posY: 35, floor: 2);

final n210 = Waypoint(name: 'N210', posX: 160, posY: 78, floor: 2);
final n210Cor = Waypoint(name: 'N210-C', posX: 180, posY: 78, floor: 2);

final n208 = Waypoint(name: 'N208', posX: 160, posY: 130, floor: 2);
final n208Cor = Waypoint(name: 'N208-C', posX: 180, posY: 130, floor: 2);

final n206 = Waypoint(name: 'N206', posX: 160, posY: 185, floor: 2);
final n206Cor = Waypoint(name: 'N206-C', posX: 180, posY: 185, floor: 2);

final n205c = Waypoint(name: 'N205c', posX: 160, posY: 205, floor: 2);
final n205cCor = Waypoint(name: 'N205c-C', posX: 180, posY: 205, floor: 2);

final n205b = Waypoint(name: 'N205b', posX: 160, posY: 215, floor: 2);
final n205bCor = Waypoint(name: 'N205b-C', posX: 180, posY: 215, floor: 2);

final n205a = Waypoint(name: 'N205c', posX: 160, posY: 225, floor: 2);
final n205aCor = Waypoint(name: 'N205c-C', posX: 180, posY: 225, floor: 2);

final stairLM2 = Waypoint(name: 'STAUR_LM2', posX: 200, posY: 230, floor: 2);
final stairLM2Cor =
    Waypoint(name: 'STAUR_LM2-C', posX: 200, posY: 240, floor: 2);

final n203 = Waypoint(name: 'N203', posX: 160, posY: 270, floor: 2);
final n203Cor = Waypoint(name: 'N203-C', posX: 180, posY: 270, floor: 2);

final n202 = Waypoint(name: 'N202', posX: 160, posY: 290, floor: 2);
final n202Cor = Waypoint(name: 'N202-C', posX: 180, posY: 290, floor: 2);

final n201 = Waypoint(name: 'N201', posX: 160, posY: 310, floor: 2);
final n201Cor = Waypoint(name: 'N201-C', posX: 180, posY: 310, floor: 2);

final s212b = Waypoint(name: 'S212b', posX: 250, posY: -3, floor: 2);
final s212bCor = Waypoint(name: 'S212b-C', posX: 230, posY: -3, floor: 2);

final s212a = Waypoint(name: 'S212a', posX: 250, posY: 8, floor: 2);
final s212aCor = Waypoint(name: 'S212a-C', posX: 230, posY: 8, floor: 2);

final s211b = Waypoint(name: 'S211b', posX: 250, posY: 15, floor: 2);
final s211bCor = Waypoint(name: 'S211b-C', posX: 230, posY: 15, floor: 2);

final s211a = Waypoint(name: 'S211a', posX: 250, posY: 35, floor: 2);
final s211aCor = Waypoint(name: 'S211a-C', posX: 230, posY: 35, floor: 2);

final s210 = Waypoint(name: 'S210', posX: 250, posY: 78, floor: 2);
final s210Cor = Waypoint(name: 'S210-C', posX: 230, posY: 78, floor: 2);

final s208 = Waypoint(name: 'S208', posX: 250, posY: 130, floor: 2);
final s208Cor = Waypoint(name: 'S208-C', posX: 230, posY: 130, floor: 2);

final s207 = Waypoint(name: 'S207', posX: 250, posY: 155, floor: 2);
final s207Cor = Waypoint(name: 'S207-C', posX: 230, posY: 155, floor: 2);

final s206 = Waypoint(name: 'S206', posX: 250, posY: 185, floor: 2);
final s206Cor = Waypoint(name: 'S206-C', posX: 230, posY: 185, floor: 2);

final s205b = Waypoint(name: 's205b', posX: 250, posY: 217, floor: 2);
final s205bCor = Waypoint(name: 's205b-c', posX: 230, posY: 217, floor: 2);

final s205c = Waypoint(name: 's205c', posX: 250, posY: 207, floor: 2);
final s205cCor = Waypoint(name: 's205c-c', posX: 230, posY: 207, floor: 2);

final s205a = Waypoint(name: 's205a', posX: 250, posY: 225, floor: 2);
final s205aCor = Waypoint(name: 's205a-c', posX: 230, posY: 225, floor: 2);

final s203 = Waypoint(name: 'S203', posX: 250, posY: 266, floor: 2);
final s203Cor = Waypoint(name: 'S103-C', posX: 230, posY: 266, floor: 2);

final s202 = Waypoint(name: 'S202', posX: 250, posY: 285, floor: 2);
final s202Cor = Waypoint(name: 'S202-C', posX: 230, posY: 285, floor: 2);

final s201 = Waypoint(name: 'S201', posX: 250, posY: 304, floor: 2);
final s201Cor = Waypoint(name: 'S201-C', posX: 230, posY: 304, floor: 2);

final gwm2 = Waypoint(name: 'GWM2', posX: 10, posY: 240, floor: 2);
final gwm2Cor = Waypoint(name: 'GWM2-C', posX: 25, posY: 240, floor: 2);

final n204ef = Waypoint(name: 'N204EF', posX: 25, posY: 278, floor: 2);
final n204efCor = Waypoint(name: 'N204EF-C', posX: 25, posY: 250, floor: 2);

final n204d = Waypoint(name: 'N204D', posX: 45, posY: 278, floor: 2);
final n204dCor = Waypoint(name: 'N204D-C', posX: 45, posY: 250, floor: 2);

final n204c = Waypoint(name: 'N204C', posX: 68, posY: 278, floor: 2);
final n204cCor = Waypoint(name: 'N204C-C', posX: 68, posY: 250, floor: 2);

final n204b = Waypoint(name: 'N204B', posX: 81, posY: 278, floor: 2);
final n204bCor = Waypoint(name: 'N204B-C', posX: 82, posY: 250, floor: 2);

final n204a = Waypoint(name: 'N204A', posX: 101, posY: 278, floor: 2);
final n204aCor = Waypoint(name: 'N204A-C', posX: 101, posY: 250, floor: 2);

final n207c = Waypoint(name: 'N207C', posX: 25, posY: 210, floor: 2);
final n207cCor = Waypoint(name: 'N207C-C', posX: 25, posY: 225, floor: 2);

final n204g = Waypoint(name: 'N204G', posX: 35, posY: 210, floor: 2);
final n204gCor = Waypoint(name: 'N204G-C', posX: 35, posY: 225, floor: 2);

final n204h = Waypoint(name: 'N204H', posX: 55, posY: 210, floor: 2);
final n204hCor = Waypoint(name: 'N204H-C', posX: 55, posY: 225, floor: 2);

final n204i = Waypoint(name: 'N204I', posX: 70, posY: 210, floor: 2);
final n204iCor = Waypoint(name: 'N204I-C', posX: 70, posY: 225, floor: 2);

final n204j = Waypoint(name: 'N204J', posX: 85, posY: 210, floor: 2);
final n204jCor = Waypoint(name: 'N204J-C', posX: 85, posY: 225, floor: 2);

final n204k = Waypoint(name: 'N204K', posX: 100, posY: 210, floor: 2);
final n204kCor = Waypoint(name: 'N204K-C', posX: 100, posY: 225, floor: 2);

final lwt2 = Waypoint(name: 'LWT2', posX: 325, posY: 53, floor: 2);
final lwt2Cor = Waypoint(name: 'LWT2-C', posX: 307, posY: 53, floor: 2);

final s209 = Waypoint(name: 'S209', posX: 325, posY: 95, floor: 2);
final s209Cor = Waypoint(name: 'S209-C', posX: 300, posY: 95, floor: 2);

final lwm2 = Waypoint(name: 'LWM2', posX: 310, posY: 180, floor: 2);
final lwm2Cor = Waypoint(name: 'LWM2-C', posX: 299, posY: 180, floor: 2);

final s204g = Waypoint(name: 'S204g', posX: 325, posY: 210, floor: 2);
final s204gCor = Waypoint(name: 'S204g-C', posX: 298, posY: 210, floor: 2);

final s204 = Waypoint(name: 'S204', posX: 325, posY: 235, floor: 2);
final s204Cor = Waypoint(name: 'S204-C', posX: 298, posY: 235, floor: 2);

final a201a = Waypoint(name: 'A201A', posX: 325, posY: 330, floor: 2);
final a201aCor = Waypoint(name: 'A201A-C', posX: 298, posY: 330, floor: 2);

final a201b = Waypoint(name: 'A201B', posX: 325, posY: 350, floor: 2);
final a201bCor = Waypoint(name: 'A201B-C', posX: 298, posY: 350, floor: 2);

final a201c = Waypoint(name: 'A201C', posX: 325, posY: 371, floor: 2);
final a201cCor = Waypoint(name: 'A201C-C', posX: 298, posY: 370, floor: 2);

final a207a = Waypoint(name: 'A207A', posX: 95, posY: 320, floor: 2);
final a207aCor = Waypoint(name: 'A207A-C', posX: 110, posY: 320, floor: 2);

final a207b = Waypoint(name: 'A207B', posX: 95, posY: 360, floor: 2);
final a207bCor = Waypoint(name: 'A207B-C', posX: 110, posY: 360, floor: 2);

final a207c = Waypoint(name: 'A107C', posX: 95, posY: 370, floor: 2);
final a207cCor = Waypoint(name: 'A107C-C', posX: 110, posY: 370, floor: 2);

final a206 = Waypoint(name: 'A206', posX: 140, posY: 410, floor: 2);
final a206Cor = Waypoint(name: 'A206-C', posX: 140, posY: 371, floor: 2);

final a205 = Waypoint(name: 'A205', posX: 166, posY: 400, floor: 2);

final a204cir = Waypoint(name: 'A204CIR', posX: 200, posY: 400, floor: 2);
final a204cirCor = Waypoint(name: 'A204CIR-C', posX: 200, posY: 371, floor: 2);

final a202tcc = Waypoint(name: 'A202TCC', posX: 270, posY: 400, floor: 2);
final a202tccCor = Waypoint(name: 'A202TCC-C', posX: 271, posY: 371, floor: 2);

final a203 = Waypoint(name: 'A205', posX: 251, posY: 401, floor: 2);

final junction1l2 =
    Waypoint(name: 'junction1l2', posX: 180, posY: 55, floor: 2);
final junction2l2 =
    Waypoint(name: 'junction2l2', posX: 180, posY: 98, floor: 2);
final junction3l2 =
    Waypoint(name: 'junction3l2', posX: 180, posY: 150, floor: 2);
final junction4l2 =
    Waypoint(name: 'junction4l2', posX: 180, posY: 239, floor: 2);
final junction5l2 =
    Waypoint(name: 'junction5l2', posX: 179, posY: 371, floor: 2);
final junction6l2 =
    Waypoint(name: 'junction6l2', posX: 231, posY: 53, floor: 2);
final junction7l2 =
    Waypoint(name: 'junction7l2', posX: 233, posY: 96, floor: 2);
final junction8l2 =
    Waypoint(name: 'junction8l2', posX: 233, posY: 152, floor: 2);
final junction9l2 =
    Waypoint(name: 'junction9l2', posX: 233, posY: 240, floor: 2);
final junction10l2 =
    Waypoint(name: 'junction10l2', posX: 233, posY: 372, floor: 2);
final junction12l2 =
    Waypoint(name: 'junction12l2', posX: 103, posY: 236, floor: 2);
final junction13l2 =
    Waypoint(name: 'junction13l2', posX: 298, posY: 235, floor: 2);
final junction11l2 =
    Waypoint(name: 'junction11l2', posX: 107.5, posY: 96, floor: 2);
final junction14l2 =
    Waypoint(name: 'junction14l2', posX: 295, posY: 103, floor: 2);

final stairMM2 = Waypoint(name: 'STAIR_MM2', posX: 200, posY: 140, floor: 2);
final stairMM2Cor =
    Waypoint(name: 'STAIR_MM2-C', posX: 200, posY: 151, floor: 2);
final stairTM2 = Waypoint(name: 'STAIR_TM2', posX: 202, posY: 45, floor: 2);
final stairTM2Cor =
    Waypoint(name: 'STAIR_TM2-C', posX: 202, posY: 55, floor: 2);
final stairML2 = Waypoint(name: 'STAIR_ML2', posX: 72, posY: 240, floor: 2);
final stairML2Cor =
    Waypoint(name: 'STAIR_ML2-C', posX: 65, posY: 240, floor: 2);
final stairLL2 = Waypoint(name: 'STAIR_LL2', posX: 160, posY: 359, floor: 2);
final stairLL2Cor =
    Waypoint(name: 'STAIR_LL2-C', posX: 160, posY: 372, floor: 2);
final stairLR2 = Waypoint(name: 'STAIR_LR2', posX: 250, posY: 359, floor: 2);
final stairLR2Cor =
    Waypoint(name: 'STAIR_LR2-C', posX: 250, posY: 373, floor: 2);
final stairMR2 = Waypoint(name: 'STAIR_MR2', posX: 280, posY: 250, floor: 2);
final stairMR2Cor =
    Waypoint(name: 'STAIR_MR2-C', posX: 280, posY: 239, floor: 2);
//Floor3
final s002 = Waypoint(name: 'S002', posX: 85, posY: 75, floor: 3);
final s002Cor = Waypoint(name: 'S002-C', posX: 106.5, posY: 75, floor: 3);

final n309d = Waypoint(name: 'N309D', posX: 85, posY: 90, floor: 3);
final n309dCor = Waypoint(name: 'N309D-C', posX: 106.5, posY: 90, floor: 3);

final n309c = Waypoint(name: 'N309C', posX: 85, posY: 105, floor: 3);
final n309cCor = Waypoint(name: 'N309C-C', posX: 106.5, posY: 105, floor: 3);

final n309b = Waypoint(name: 'N309B', posX: 85, posY: 120, floor: 3);
final n309bCor = Waypoint(name: 'N309B-C', posX: 106.5, posY: 120, floor: 3);

final n309a = Waypoint(name: 'N309A', posX: 85, posY: 140, floor: 3);
final n309aCor = Waypoint(name: 'N309A-C', posX: 106.5, posY: 141, floor: 3);

final gwt3 = Waypoint(name: 'GWT3', posX: 85, posY: 50, floor: 3);

final n311e = Waypoint(name: 'N311E', posX: 160, posY: -10, floor: 3);
final n311eCor = Waypoint(name: 'N311E-C', posX: 175, posY: -10, floor: 3);

final n311d = Waypoint(name: 'N311C', posX: 160, posY: 5, floor: 3);
final n311dCor = Waypoint(name: 'N311C-C', posX: 175, posY: 5, floor: 3);

final n311c = Waypoint(name: 'N311C', posX: 160, posY: 20, floor: 3);
final n311cCor = Waypoint(name: 'N311C-C', posX: 175, posY: 20, floor: 3);

final n311b = Waypoint(name: 'N311B', posX: 160, posY: 30, floor: 3);
final n311bCor = Waypoint(name: 'N311B-C', posX: 175, posY: 31, floor: 3);

final n311f = Waypoint(name: 'N311F', posX: 160, posY: 41, floor: 3);
final n311fCor = Waypoint(name: 'N311F-C', posX: 175, posY: 41, floor: 3);

final n311a = Waypoint(name: 'N311A', posX: 160, posY: 47, floor: 3);
final n311aCor = Waypoint(name: 'N311A-C', posX: 175, posY: 47, floor: 3);

final n310 = Waypoint(name: 'N310', posX: 160, posY: 78, floor: 3);
final n310Cor = Waypoint(name: 'N310-C', posX: 175, posY: 78, floor: 3);

final n308 = Waypoint(name: 'N308', posX: 160, posY: 130, floor: 3);
final n308Cor = Waypoint(name: 'N308-C', posX: 175, posY: 130, floor: 3);

final n307 = Waypoint(name: 'N307', posX: 160, posY: 155, floor: 3);
final n307Cor = Waypoint(name: 'N307-C', posX: 175, posY: 154, floor: 3);

final n306 = Waypoint(name: 'N306', posX: 160, posY: 185, floor: 3);
final n306Cor = Waypoint(name: 'N306-C', posX: 175, posY: 185, floor: 3);

final n305c = Waypoint(name: 'N305C', posX: 160, posY: 215, floor: 3);
final n305cCor = Waypoint(name: 'N305C-C', posX: 175, posY: 215, floor: 3);

final n305b = Waypoint(name: 'N305B', posX: 160, posY: 225, floor: 3);
final n305bCor = Waypoint(name: 'N305B-C', posX: 175, posY: 225, floor: 3);

final n305a = Waypoint(name: 'N305A', posX: 160, posY: 235, floor: 3);
final n305aCor = Waypoint(name: 'N305A-C', posX: 175, posY: 235, floor: 3);

final stairLM3 = Waypoint(name: 'STAUR_LM3', posX: 200, posY: 230, floor: 3);
final stairLM3Cor =
    Waypoint(name: 'STAUR_LM2-C', posX: 200, posY: 249, floor: 3);

final n303 = Waypoint(name: 'N303', posX: 160, posY: 270, floor: 3);
final n303Cor = Waypoint(name: 'N303-C', posX: 175, posY: 270, floor: 3);

final n302 = Waypoint(name: 'N302', posX: 160, posY: 290, floor: 3);
final n302Cor = Waypoint(name: 'N302-C', posX: 175, posY: 290, floor: 3);

final n301 = Waypoint(name: 'N301', posX: 160, posY: 330, floor: 3);
final n301Cor = Waypoint(name: 'N301-C', posX: 175, posY: 330, floor: 3);

final s312b = Waypoint(name: 'S312B', posX: 250, posY: -10, floor: 3);
final s312bCor = Waypoint(name: 'S312B-C', posX: 230, posY: -10, floor: 3);

final s312a = Waypoint(name: 'S312A', posX: 250, posY: 8, floor: 3);
final s312aCor = Waypoint(name: 'S312A-C', posX: 230, posY: 8, floor: 3);

final s311b = Waypoint(name: 'S311B', posX: 250, posY: 18, floor: 3);
final s311bCor = Waypoint(name: 'S311B-C', posX: 230, posY: 18, floor: 3);

final s311a = Waypoint(name: 'S311A', posX: 250, posY: 35, floor: 3);
final s311aCor = Waypoint(name: 'S311A-C', posX: 230, posY: 35, floor: 3);

final s310 = Waypoint(name: 'S310', posX: 250, posY: 78, floor: 3);
final s310Cor = Waypoint(name: 'S310-C', posX: 230, posY: 78, floor: 3);

final s308 = Waypoint(name: 'S308', posX: 250, posY: 130, floor: 3);
final s308Cor = Waypoint(name: 'S308-C', posX: 230, posY: 130, floor: 3);

final stairMM3 = Waypoint(name: 'STAIR_MM3', posX: 200, posY: 150, floor: 3);
final stairMM3Cor =
    Waypoint(name: 'STAIR_MM3-C', posX: 200, posY: 160, floor: 3);

final s307 = Waypoint(name: 'S307', posX: 250, posY: 155, floor: 3);
final s307Cor = Waypoint(name: 'S307-C', posX: 236, posY: 130, floor: 3);

final s306 = Waypoint(name: 'S306', posX: 250, posY: 185, floor: 3);
final s306Cor = Waypoint(name: 'S306-C', posX: 230, posY: 185, floor: 3);

final s305b = Waypoint(name: 'S305B', posX: 250, posY: 230, floor: 3);
final s305bCor = Waypoint(name: 'S305B-C', posX: 230, posY: 230, floor: 3);

final s305c = Waypoint(name: 'S305C', posX: 250, posY: 215, floor: 3);
final s305cCor = Waypoint(name: 'S305C-C', posX: 230, posY: 215, floor: 3);

final s305a = Waypoint(name: 'S205A', posX: 250, posY: 240, floor: 3);
final s305aCor = Waypoint(name: 'S205A-c', posX: 230, posY: 241, floor: 3);

final s303 = Waypoint(name: 'S303', posX: 250, posY: 266, floor: 3);
final s303Cor = Waypoint(name: 'S303-C', posX: 230, posY: 266, floor: 3);

final s302 = Waypoint(name: 'S302', posX: 250, posY: 290, floor: 3);
final s302Cor = Waypoint(name: 'S302-C', posX: 230, posY: 290, floor: 3);

final s301 = Waypoint(name: 'S301', posX: 250, posY: 330, floor: 3);
final s301Cor = Waypoint(name: 'S301-C', posX: 230, posY: 330, floor: 3);

final n304e = Waypoint(name: 'N204E', posX: 25, posY: 278, floor: 3);
final n304eCor = Waypoint(name: 'N204E-C', posX: 25, posY: 260, floor: 3);

final n304d = Waypoint(name: 'N304D', posX: 45, posY: 278, floor: 3);
final n304dCor = Waypoint(name: 'N304D-C', posX: 45, posY: 260, floor: 3);

final n304c = Waypoint(name: 'N304C', posX: 58, posY: 278, floor: 3);
final n304cCor = Waypoint(name: 'N304C-C', posX: 58, posY: 260, floor: 3);

final n304b = Waypoint(name: 'N304B', posX: 78, posY: 278, floor: 3);
final n304bCor = Waypoint(name: 'N304B-C', posX: 78, posY: 260, floor: 3);

final n304a = Waypoint(name: 'N304A', posX: 97, posY: 278, floor: 3);
final n304aCor = Waypoint(name: 'N304A-C', posX: 98, posY: 260, floor: 3);

final gwm3 = Waypoint(name: 'GWM3', posX: 5, posY: 255, floor: 3);
final gwm3Cor = Waypoint(name: 'GWM3-C', posX: 15, posY: 255, floor: 3);

final n304g = Waypoint(name: 'N304G', posX: 40, posY: 210, floor: 3);
final n304gCor = Waypoint(name: 'N304G-C', posX: 40, posY: 235, floor: 3);

final n304h = Waypoint(name: 'N304H', posX: 55, posY: 210, floor: 3);
final n304hCor = Waypoint(name: 'N304H-C', posX: 55, posY: 235, floor: 3);

final n304i = Waypoint(name: 'N304I', posX: 70, posY: 210, floor: 3);
final n304iCor = Waypoint(name: 'N304I-C', posX: 70, posY: 235, floor: 3);

final n304j = Waypoint(name: 'N304J', posX: 85, posY: 210, floor: 3);
final n304jCor = Waypoint(name: 'N304J-C', posX: 85, posY: 235, floor: 3);

final stairML3 = Waypoint(name: 'STAIR_ML3', posX: 72, posY: 245, floor: 3);
final stairML3Cor =
    Waypoint(name: 'STAIR_ML3-C', posX: 57, posY: 245, floor: 3);

final lwt3 = Waypoint(name: 'LWT3', posX: 325, posY: 53, floor: 3);
final lwt3Cor = Waypoint(name: 'LWT3-C', posX: 307, posY: 53, floor: 3);

final s309b = Waypoint(name: 'S309B', posX: 325, posY: 105, floor: 3);
final s309bCor = Waypoint(name: 'S309B-C', posX: 300, posY: 105, floor: 3);

final s309a = Waypoint(name: 'S309A', posX: 325, posY: 120, floor: 3);
final s309aCor = Waypoint(name: 'S309A-C', posX: 300, posY: 120, floor: 3);

final lwm3 = Waypoint(name: 'LWM3', posX: 310, posY: 180, floor: 3);
final lwm3Cor = Waypoint(name: 'LWM3-C', posX: 299, posY: 180, floor: 3);

final s304 = Waypoint(name: 'S304', posX: 325, posY: 252, floor: 3);
final s304Cor = Waypoint(name: 'S304-C', posX: 298, posY: 252, floor: 3);

final a301CommonRoomWomen =
    Waypoint(name: 'A301C_CommonRoomWomen', posX: 325, posY: 384, floor: 3);
final a301cCorCommonRoomWomen =
    Waypoint(name: 'A301C-C_CommonRoomWomen', posX: 298, posY: 384, floor: 3);

final a302CommonRoomMen =
    Waypoint(name: 'A302_CommonRoomMen', posX: 270, posY: 400, floor: 3);
final a302CorCommonRoomMen =
    Waypoint(name: 'A302-C_CommonRoomMen', posX: 271, posY: 385, floor: 3);
final stairTM3 = Waypoint(name: 'STAIR_TM3', posX: 200, posY: 45, floor: 3);
final stairTM3Cor =
    Waypoint(name: 'STAIR_TM3-C', posX: 200, posY: 60, floor: 3);

final stairTL3 = Waypoint(name: 'STAIR_TL3', posX: 126, posY: 110, floor: 3);
final stairTL3Cor =
    Waypoint(name: 'STAIR_TL3-C', posX: 125, posY: 98, floor: 3);

final stairLL3 = Waypoint(name: 'STAIR_LL3', posX: 160, posY: 363, floor: 3);
final stairLL3Cor =
    Waypoint(name: 'STAIR_LL3-C', posX: 160, posY: 383, floor: 3);

final stairLR3 = Waypoint(name: 'STAIR_LR3', posX: 250, posY: 363, floor: 3);
final stairLR3Cor =
    Waypoint(name: 'STAIR_LR3-C', posX: 250, posY: 383, floor: 3);
final junction1l3 =
    Waypoint(name: 'junction1l3', posX: 177, posY: 55, floor: 3);
final junction10l3 =
    Waypoint(name: 'junction10l3', posX: 230, posY: 55, floor: 3);
final junction2l3 =
    Waypoint(name: 'junction2l3', posX: 177, posY: 98, floor: 3);
final junction3l3 =
    Waypoint(name: 'junction3l3', posX: 177, posY: 160, floor: 3);
final junction4l3 =
    Waypoint(name: 'junction4l3', posX: 177, posY: 248, floor: 3);
final junction7l3 =
    Waypoint(name: 'junction7l3', posX: 233, posY: 101, floor: 3);
final junction8l3 =
    Waypoint(name: 'junction8l3', posX: 231, posY: 155, floor: 3);
final junction9l3 =
    Waypoint(name: 'junction9l3', posX: 233, posY: 248, floor: 3);
final junction12l3 =
    Waypoint(name: 'junction12l3', posX: 96, posY: 246, floor: 3);
final junction13l3 =
    Waypoint(name: 'junction13l3', posX: 301, posY: 255, floor: 3);
final junction11l3 =
    Waypoint(name: 'junction11l3', posX: 107.5, posY: 96, floor: 3);
final junction14l3 =
    Waypoint(name: 'junction14l2', posX: 305, posY: 106, floor: 3);

final a305 = Waypoint(name: 'A305', posX: 166, posY: 400, floor: 3);

final a306 = Waypoint(name: 'A306', posX: 140, posY: 410, floor: 3);
final a306Cor = Waypoint(name: 'A306-C', posX: 140, posY: 371, floor: 3);

final a307 = Waypoint(name: 'A307', posX: 95, posY: 385, floor: 3);
final a307Cor = Waypoint(name: 'A307-C', posX: 110, posY: 385, floor: 3);

final waypointNotFound =
    Waypoint(name: 'Waypoint Not Found', posX: 0, posY: 0, floor: 0);
