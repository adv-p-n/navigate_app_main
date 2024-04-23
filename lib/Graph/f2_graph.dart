import 'package:directed_graph/directed_graph.dart';
import 'package:navigate_app_main/waypoints/wayponts.dart';

int comparator(
  Waypoint p1,
  Waypoint p2,
) {
  return p1.compareTo(p2);
}

int sum(int left, int right) => left + right;

var graph = WeightedDirectedGraph<Waypoint, int>({
  gwt1: {junction1: 1},
  n109c: {n109cCor: 1},
  n109cCor: {n109c: 1, junction14: 1},
  n109b: {n109bCor: 1},
  n109bCor: {n109b: 1, n109aCor: 1, junction14: 1},
  n109a: {n109aCor: 1},
  n109aCor: {n109bCor: 1, n109a: 1},
  n112d: {n112dCor: 1},
  n112dCor: {n112d: 1, n112cCor: 1},
  n112c: {n112cCor: 1},
  n112cCor: {n112c: 1, n112bCor: 1, n112dCor: 1},
  n112b: {n112bCor: 1},
  n112a: {n112aCor: 1},
  n111b: {n111bCor: 1},
  n111a: {n111aCor: 1},
  n110: {n110Cor: 1},
  n108: {n108Cor: 1},
  n107: {n107Cor: 1},
  n106: {n106Cor: 1},
  n102: {n102Cor: 1},
  n103: {n103Cor: 1},
  n105: {n105Cor: 1},
  n101: {n101Cor: 1},
  gwm1: {gwm1Cor: 1},
  n104e: {n104eCor: 1},
  n104f: {n104fCor: 1},
  n104g: {n104gCor: 1},
  n104h: {n104hCor: 1},
  n104i: {n104iCor: 1},
  n104d: {n104dCor: 1},
  n104c: {n104cCor: 1},
  n104b: {n104bCor: 1},
  n104a: {n104aCor: 1},
  s112: {s112Cor: 1},
  s111: {s111Cor: 1},
  s110ab: {s110abCor: 1},
  lwt1: {lwt1Cor: 1},
  s109e: {s109eCor: 1},
  s109d: {s109dCor: 1},
  s109c: {s109cCor: 1},
  s109b: {s109bCor: 1},
  s109a: {s109aCor: 1},
  lwm1: {lwm1Cor: 1},
  s104c: {s104cCor: 1},
  s104ab: {s104abCor: 1},
  icts: {ictsCor: 1},
  s108: {s108Cor: 1},
  s107: {s107Cor: 1},
  s106: {s106Cor: 1},
  csesr: {csesr: 1},
  s103b: {s103bCor: 1},
  s103a: {s103aCor: 1},
  s102b: {s102bCor: 1},
  s102a: {s102aCor: 1},
  s101b: {s101bCor: 1},
  s101a: {s101aCor: 1},
  a107d: {a107bCor: 1},
  a107c: {a107cCor: 1},
  a107b: {a107bCor: 1},
  a107aDeputyControllerOfExam: {a107aDeputyControllerOfExamCor: 1},
  a106FinanceAndAccounts: {a106FinanceAndAccountsCor: 1},
  a103: {a103Cor: 1},
  // s113,
  stairTM1: {stairTM1Cor: 1, stairTM0: 10, stairTM2: 10},
  stairMM1: {stairMM1Cor: 1, stairMM2: 10, stairMM0: 10},
  stairLM1: {stairLM1Cor: 1, stairLM0: 10, stairLM2: 10},
  stairTL1: {stairTL1Cor: 1, stairTL0: 10, stairTL0: 1, stairTL2: 10},
  stairML1: {stairML1Cor: 1, stairML0: 10, stairML2: 10},
  stairMR1: {stairMR1Cor: 1, stairMR0: 10, stairMR2: 10},
  stairLL1: {stairLL1Cor: 1, stairLL0: 10, stairLL2: 10},
  stairLR1: {stairLR1Cor: 1, stairLR0: 10, stairLR2: 10},
  n112bCor: {n112b: 1, n112cCor: 1, n112aCor: 1},
  n112aCor: {n112a: 1, n112bCor: 1, n111bCor: 1},
  n111bCor: {n111b: 1, n111aCor: 1, n112aCor: 1},
  n111aCor: {n111a: 1, n111bCor: 1, junction1: 1},
  n110Cor: {n110: 1, junction1: 1, junction2: 1},
  n108Cor: {n108: 1, junction2: 1, n107Cor: 1},
  n107Cor: {n107: 1, n108Cor: 1, junction3: 1},
  n106Cor: {n106: 1, n105Cor: 1, junction3: 1},
  n105Cor: {n105: 1, n106Cor: 1, junction4: 1},
  n102Cor: {n102: 1, n103Cor: 1, n101Cor: 1},
  n103Cor: {n103: 1, n102Cor: 1, junction4: 1},
  n101Cor: {n101: 1, n102Cor: 1, junction5: 1},
  gwm1Cor: {gwm1: 1, n104eCor: 1, n104dCor: 1},
  n104eCor: {n104e: 1, n104fCor: 1, gwm1Cor: 1},
  n104fCor: {n104f: 1, n104gCor: 1, n104eCor: 1, stairML1Cor: 1},
  n104gCor: {n104g: 1, n104hCor: 1, n104fCor: 1, stairML1Cor: 1},
  n104hCor: {n104h: 1, n104gCor: 1, n104iCor: 1},
  n104iCor: {n104i: 1, n104hCor: 1, junction12: 1},
  n104dCor: {n104d: 1, n104cCor: 1, gwm1Cor: 1},
  n104cCor: {n104c: 1, n104dCor: 1, stairML1Cor: 1, n104bCor: 1},
  n104bCor: {n104b: 1, n104cCor: 1, n104aCor: 1},
  n104aCor: {n104a: 1, n104bCor: 1, junction12: 1},
  s112Cor: {s112: 1, s111Cor: 1},
  s111Cor: {s111: 1, s112Cor: 1, junction6: 1},
  s110abCor: {s110ab: 1, junction6: 1, junction7: 1},
  lwt1Cor: {junction6: 1, lwt1: 1},
  s109eCor: {s109e: 1, s109dCor: 1},
  s109dCor: {s109d: 1, s109dCor: 1, junction14: 1},
  s109cCor: {s109c: 1, s109bCor: 1, junction14: 1},
  s109bCor: {s109b: 1, s109cCor: 1, s109aCor: 1},
  s109aCor: {s109a: 1, s109bCor: 1},
  lwm1Cor: {s104cCor: 1, lwm1: 1},
  s104cCor: {s104c: 1, junction13: 1},
  s104abCor: {s104ab: 1, junction13: 1},
  ictsCor: {icts: 1, stairLR1Cor: 1},
  s108Cor: {s108: 1, junction7: 1, s107Cor: 1},
  s107Cor: {s107: 1, junction8: 1, s108Cor: 1, s106Cor: 1},
  s106Cor: {s106: 1, junction8: 1, csesrCor: 1},
  csesrCor: {csesr: 1, junction9: 1, s106Cor: 1},
  s103bCor: {s103b: 1, s103aCor: 1, junction9: 1},
  s103aCor: {s103a: 1, s103bCor: 1, s102bCor: 1},
  s102bCor: {s103b: 1, s103aCor: 1, s102aCor: 1},
  s102aCor: {s102a: 1, s102aCor: 1, s101bCor: 1},
  s101bCor: {s101b: 1, s102aCor: 1, s101aCor: 1},
  s101aCor: {s101a: 1, s101bCor: 1, junction10: 1},
  a107dCor: {a107d: 1, a107cCor: 1},
  a107cCor: {a107c: 1, a107dCor: 1, a107bCor: 1},
  a107aDeputyControllerOfExamCor: {
    a107aDeputyControllerOfExam: 1,
    a106FinanceAndAccountsCor: 1,
    a107bCor: 1
  },
  a107bCor: {a107b: 1, a107aDeputyControllerOfExamCor: 1, a107cCor: 1},
  a106FinanceAndAccountsCor: {
    a107aDeputyControllerOfExamCor: 1,
    stairLL1Cor: 1
  },
  // a103Cor:,
  stairTM1Cor: {junction1: 1, junction6: 1, stairTM1: 1},
  stairMM1Cor: {junction3: 1, junction8: 1, stairMM1: 1},
  stairLM1Cor: {junction4: 1, junction9: 1, stairLM1: 1},
  stairTL1Cor: {junction2: 1, junction11: 1, stairTL1: 1},
  stairML1Cor: {n104cCor: 1, n104gCor: 1, stairML1: 1, n104fCor: 1},
  stairMR1Cor: {junction13: 1, junction9: 1, stairMR1: 1},
  stairLL1Cor: {a106FinanceAndAccountsCor: 1, junction5: 1, stairLL1: 1},
  stairLR1Cor: {junction10: 1, a103: 1, stairLR1: 1, ictsCor: 1},
  junction1: {gwt1: 1, stairTM1Cor: 1, n111aCor: 1, n110Cor: 1},
  junction2: {n110Cor: 1, stairTL1Cor: 1, n108Cor: 1},
  junction3: {n107Cor: 1, n106Cor: 1, stairMM1Cor: 1},
  junction4: {n105Cor: 1, n103Cor: 1, stairLM1Cor: 1, junction12: 1},
  junction5: {stairLL1Cor: 1, n101Cor: 1, junction10: 1},
  junction6: {stairTM1Cor: 1, s111Cor: 1, lwt1Cor: 1, s110abCor: 1},
  junction7: {s110abCor: 1, s108Cor: 1, junction14: 1},
  junction8: {s107Cor: 1, n106Cor: 1, stairMM1: 1},
  junction9: {csesrCor: 1, stairLM1Cor: 1, stairMR1Cor: 1, s102bCor: 1},
  junction10: {s101aCor: 1, junction5: 1, stairLR1Cor: 1},
  junction12: {n104iCor: 1, n104aCor: 1, junction4: 1},
  junction13: {stairMR1Cor: 1, s104abCor: 1, s104cCor: 1},
  junction11: {n109cCor: 1, n109bCor: 1, stairTL1Cor: 1},
  junction14: {s109dCor: 1, s109cCor: 1, junction7: 1},

  //floor2
  n207: {n207Cor: 1},
  n207Cor: {n206Cor: 1, junction3l2: 1, n207: 1},
  stairMM2: {stairMM2Cor: 1, stairMM1: 10, stairMM3: 10},
  stairMM2Cor: {n209dCor: 1, junction8l2: 1, junction3l2: 1},
  gwt2: {junction1l2: 1},
  n209e: {n209eCor: 1},
  n209eCor: {n209e: 1, n209dCor: 1},
  n209d: {n209dCor: 1},
  n209dCor: {n209d: 1, junction11l2: 1, n209eCor: 1},
  n209c: {n209cCor: 1},
  n209cCor: {n209c: 1, junction11l2: 1, n209bCor: 1},
  n209b: {n209bCor: 1},
  n209bCor: {n209aCor: 1, n209cCor: 1, n209b: 1},
  n209a: {n209aCor: 1},
  n209aCor: {n209bCor: 1, n209a: 1},
  stairTL2: {stairTL2Cor: 1, stairTL1: 10, stairTL3: 10},
  stairTL2Cor: {junction11l2: 1, junction2l2: 1, stairTL2: 1},
  n211c: {n211cCor: 1},
  n211cCor: {n211c: 1, n211bCor: 1},
  n211b: {n211bCor: 1},
  n211bCor: {n211b: 1, n211cCor: 1, n211aCor: 1},
  n211a: {n211aCor: 1},
  n211aCor: {n211a: 1, n211bCor: 1, junction1l2: 1},
  n210: {n210Cor: 1},
  n210Cor: {n210: 1, junction1l2: 1, junction2l2: 1},
  n208: {n210Cor: 1},
  n208Cor: {junction3l2: 1, junction2l2: 1, n208: 1},
  n206: {n206Cor: 1},
  n206Cor: {n207Cor: 1, n206: 1, n205cCor: 1},
  n205c: {n205bCor: 1},
  n205cCor: {n205c: 1, n206Cor: 1, n205bCor: 1},
  n205a: {n205bCor: 1},
  n205aCor: {junction4l2: 1, n205a: 1, n205bCor: 1},
  n205b: {n205bCor: 1},
  n205bCor: {n205cCor: 1, n205b: 1, n205aCor: 1},
  stairLM2: {stairLM2Cor: 1, stairLM1: 10, stairLM3: 10},
  stairLM2Cor: {stairLM2: 1, junction4l2: 1, junction9l2: 1},
  n203: {n203Cor: 1},
  n203Cor: {junction4l2: 1, n203: 1, n202Cor: 1},
  n202: {n202Cor: 1},
  n202Cor: {n203Cor: 1, n201Cor: 1, n202: 1},
  n201: {n201Cor: 1},
  n201Cor: {n202Cor: 1, n201: 1, junction5l2: 1},
  s212b: {s212bCor: 1},
  s212bCor: {s212b: 1, s212aCor: 1},
  s212a: {s212aCor: 1},
  s212aCor: {s212a: 1, s212bCor: 1, s211bCor: 1},
  s211b: {s211bCor: 1},
  s211bCor: {s211b: 1, s211aCor: 1, s212aCor: 1},
  s211a: {s211aCor: 1},
  s211aCor: {s211bCor: 1, junction6l2: 1, s211a: 1},
  s210: {s210Cor: 1},
  s210Cor: {s210: 1, junction6l2: 1, junction7l2: 1},
  s208: {s208Cor: 1},
  s208Cor: {s208: 1, junction8l2: 1, junction7l2: 1},
  s207: {s207Cor: 1},
  s207Cor: {junction8l2: 1, s206Cor: 1, s207: 1},
  s206: {s206Cor: 1},
  s206Cor: {s206: 1, s207Cor: 1, s205aCor: 1},
  s205b: {s205bCor: 1},
  s205bCor: {s205b: 1, s205cCor: 1, s205aCor: 1},
  s205c: {s205cCor: 1},
  s205cCor: {s205c: 1, s206Cor: 1, s205bCor: 1},
  s205a: {s205aCor: 1},
  s205aCor: {junction9l2: 1, s205a: 1, s205bCor: 1},
  s203: {s203Cor: 1},
  s203Cor: {s203: 1, junction9l2: 1, s202Cor: 1},
  s202: {s202Cor: 1},
  s202Cor: {s202: 1, s201Cor: 1, s203Cor: 1},
  s201: {s201Cor: 1},
  s201Cor: {s201: 1, junction10l2: 1, s202Cor: 1},
  gwm2: {gwm2Cor: 1},
  gwm2Cor: {gwm2: 1, n207cCor: 1, n204efCor: 1},
  n204ef: {n204efCor: 1},
  n204efCor: {gwm2Cor: 1, n204ef: 1, n204dCor: 1},
  n204d: {n204dCor: 1},
  n204dCor: {n204d: 1, n204cCor: 1, n204efCor: 1},
  n204c: {n204cCor: 1},
  n204cCor: {n204c: 1, n204dCor: 1, n204bCor: 1, stairML2Cor: 1},
  n204b: {n204bCor: 1},
  n204bCor: {n204bCor: 1, n204cCor: 1, n204aCor: 1},
  n204a: {n204aCor: 1},
  n204aCor: {n204a: 1, n204bCor: 1, junction12l2: 1},
  n207c: {n207cCor: 1},
  n207cCor: {n207c: 1, n204gCor: 1, gwm2Cor: 1},
  n204g: {n204gCor: 1},
  n204gCor: {n204g: 1, n204hCor: 1, n207cCor: 1},
  n204h: {n204hCor: 1},
  n204hCor: {n204h: 1, n204gCor: 1, n204iCor: 1, stairML2Cor: 1},
  n204i: {n204iCor: 1},
  n204iCor: {n204i: 1, n204hCor: 1, n204jCor: 1, stairML2Cor: 1},
  n204j: {n204jCor: 1},
  n204jCor: {n204j: 1, n204iCor: 1, n204kCor: 1},
  n204k: {n204kCor: 1},
  n204kCor: {n204k: 1, n204jCor: 1, junction12l2: 1},
  lwt2: {lwt2Cor: 1},
  lwt2Cor: {junction6l2: 1, lwt2: 1},
  s209: {s209Cor: 1},
  s209Cor: {s209: 1, junction14l2: 1},
  lwm2: {lwm2Cor: 1},
  lwm2Cor: {lwm2: 1, s204gCor: 1},
  s204g: {s204gCor: 1},
  s204gCor: {s204g: 1, junction13l2: 1, lwm2Cor: 1},
  s204: {s204Cor: 1},
  s204Cor: {s204: 1, junction13l2: 1},
  a201a: {a201aCor: 1},
  a201aCor: {a201a: 1, a201bCor: 1},
  a201b: {a201bCor: 1},
  a201bCor: {a201b: 1, a201aCor: 1, a201cCor: 1},
  a201c: {a201cCor: 1},
  a201cCor: {a201c: 1, a201bCor: 1, a202tccCor: 1},
  a207a: {a207aCor: 1},
  a207aCor: {a207a: 1, a207bCor: 1},
  a207b: {a207bCor: 1},
  a207bCor: {a207b: 1, a207aCor: 1, a207cCor: 1},
  a207c: {a207cCor: 1},
  a207cCor: {a207c: 1, a207bCor: 1, a206Cor: 1},
  a206: {a206Cor: 1},
  a206Cor: {a206: 1, a207cCor: 1, stairLL2Cor: 1},
  a205: {stairLL2Cor: 1},
  a204cir: {a204cirCor: 1},
  a204cirCor: {a204cir: 1, junction5l2: 1, junction10l2: 1},
  a203: {stairLR2Cor: 1},
  a202tcc: {a202tccCor: 1},
  a202tccCor: {a202tcc: 1, stairLR2Cor: 1, a201cCor: 1},
  stairTM2: {stairTM2Cor: 1, stairTM1: 10, stairTM3: 10},
  stairTM2Cor: {stairTM2: 1, junction1l2: 1, junction6l2: 1},
  stairML2: {stairML2Cor: 1, stairML1: 10, stairML3: 10},
  stairML2Cor: {stairML2: 1, n204iCor: 1, n204cCor: 1, n204hCor: 1},
  stairLL2: {stairLL2Cor: 1, stairLL1: 10, stairLL3: 10},
  stairLL2Cor: {stairLL2: 1, a205: 1, a206Cor: 1, junction5l2: 1},
  stairLR2: {stairLR2Cor: 1, stairLR1: 10, stairLR3: 10},
  stairLR2Cor: {stairLR2: 1, junction10l2: 1, a202tccCor: 1},
  stairMR2: {
    stairMR2Cor: 1,
    stairMR1: 10,
  },
  stairMR2Cor: {stairMR2: 1, junction13l2: 1, junction9l2: 1},
  junction1l2: {stairTM2Cor: 1, n210Cor: 1, n211aCor: 1, gwt2: 1},
  junction2l2: {n210Cor: 1, n208Cor: 1, stairTL2Cor: 1},
  junction3l2: {n208Cor: 1, n207Cor: 1, stairMM2Cor: 1},
  junction4l2: {junction12l2: 1, n205cCor: 1, stairLM2Cor: 1, n203Cor: 1},
  junction5l2: {a204cirCor: 1, stairLL2Cor: 1, n201Cor: 1},
  junction6l2: {s211aCor: 1, stairTM2Cor: 1, lwt2Cor: 1, s210Cor: 1},
  junction7l2: {s210Cor: 1, s208Cor: 1, junction14l2: 1},
  junction8l2: {s207Cor: 1, stairMM2Cor: 1, s203Cor: 1},
  junction9l2: {stairLM2Cor: 1, s205aCor: 1, s203Cor: 1, stairMR2Cor: 1},
  junction10l2: {s201Cor: 1, a204cirCor: 1, stairLR2Cor: 1},
  junction11l2: {n209dCor: 1, n209cCor: 1, stairTL2Cor: 1},
  junction12l2: {junction4l2: 1, n204kCor: 1, n204aCor: 1},
  junction13l2: {stairMR2: 1, s204gCor: 1},
  junction14l2: {junction7l2: 1, s209Cor: 1},

  //floor3
  stairMM3: {stairMM3Cor: 10, stairMM2: 10},
  stairMM3Cor: {stairMM3: 1, junction8l3: 1, junction3l3: 1},
  s307: {junction8l3: 1},
  s002: {s002Cor: 1},
  s002Cor: {s002: 1, n309dCor: 1},
  n309a: {n309aCor: 1},
  n309aCor: {n309a: 1, n309bCor: 1},
  n309b: {n309bCor: 1},
  n309bCor: {n309b: 1, n309cCor: 1, n309aCor: 1},
  n309c: {n309cCor: 1},
  n309cCor: {n309c: 1, junction11l3: 1, n309bCor: 1},
  n309d: {n309dCor: 1},
  n309dCor: {n309d: 1, junction11l3: 1, s002Cor: 1},
  n310: {n310Cor: 1},
  n310Cor: {n310: 1, junction2l3: 1, junction1l3: 1},
  n311e: {n311eCor: 1},
  n311eCor: {n311e: 1, n311dCor: 1},
  n311d: {n311dCor: 1},
  n311dCor: {n311d: 1, n311eCor: 1, n311cCor: 1},
  n311c: {n311cCor: 1},
  n311cCor: {n311c: 1, n311dCor: 1, n311bCor: 1},
  n311b: {n311bCor: 1},
  n311bCor: {n311b: 1, n311cCor: 1, n311fCor: 1},
  n311f: {n311fCor: 1},
  n311fCor: {n311f: 1, n311bCor: 1, n311aCor: 1},
  n311a: {n311aCor: 1},
  n311aCor: {n311a: 1, n311fCor: 1, junction1l3: 1},
  stairLM3: {stairLM3Cor: 1, stairLM2: 10},
  stairLM3Cor: {stairLM3: 1, junction4l3: 1, junction9l3: 1},
  n308: {n308Cor: 1},
  n308Cor: {n308: 1, n307Cor: 1, junction2l3: 1},
  n307: {n307Cor: 1},
  n307Cor: {n307: 1, junction3l3: 1, n308Cor: 1},
  n306: {n306Cor: 1},
  n306Cor: {n306: 1, junction3l3: 1, n305cCor: 1},
  n305a: {n305aCor: 1},
  n305aCor: {n305a: 1, junction4l3: 1, n305bCor: 1},
  n305b: {n305bCor: 1},
  n305bCor: {n305b: 1, n305aCor: 1, n305cCor: 1},
  n305c: {n305cCor: 1},
  n305cCor: {n305c: 1, n306Cor: 1, n305bCor: 1},
  n303: {n303Cor: 1},
  n303Cor: {n303: 1, junction4l3: 1, n302Cor: 1},
  n302: {n302Cor: 1},
  n302Cor: {n302: 1, n303Cor: 1, n301Cor: 1},
  n301: {n301Cor: 1},
  n301Cor: {n301: 1, n302Cor: 1},
  n307Cor: {n307: 1, junction3l3: 1, n308Cor: 1},
  s312a: {s312aCor: 1},
  s312aCor: {s312a: 1, s312bCor: 1, s311bCor: 1},
  s312b: {s312bCor: 1},
  s312bCor: {s312b: 1, s312aCor: 1},
  s311b: {s311bCor: 1},
  s311bCor: {s311b: 1, s312aCor: 1, s311aCor: 1},
  s311a: {s311aCor: 1},
  s311aCor: {junction10l3: 1, s311bCor: 1},
  s310: {s310Cor: 1},
  s310Cor: {junction10l3: 1, junction7l3: 1, s310: 1},
  s308: {s308Cor: 1},
  s308Cor: {junction8l3: 1, s308: 1, junction7l3: 1},
  s306: {s306Cor: 1},
  s306Cor: {s306: 1, junction8l3: 1, s305cCor: 1},
  s305c: {s305cCor: 1},
  s305cCor: {s305c: 1, s305bCor: 1, s306Cor: 1},
  s305b: {s305bCor: 1},
  s305bCor: {s305b: 1, s305aCor: 1, s305cCor: 1},
  s305a: {s305aCor: 1},
  s305aCor: {s305a: 1, s305bCor: 1, junction9l3: 1},
  s303: {s303Cor: 1},
  s303Cor: {s303: 1, s302Cor: 1, junction9l3: 1},
  s302: {s302Cor: 1},
  s302Cor: {s302: 1, s303Cor: 1, s301Cor: 1},
  s301: {s301Cor: 1},
  s301Cor: {s301: 1, s302Cor: 1},
  n304e: {n304eCor: 1},
  n304eCor: {n304e: 1, gwm3Cor: 1, n304dCor: 1},
  n304d: {n304dCor: 1},
  n304dCor: {n304d: 1, n304eCor: 1, n304cCor: 1},
  n304c: {n304cCor: 1},
  n304cCor: {n304c: 1, n304dCor: 1, stairML3Cor: 1, n304bCor: 1},
  n304b: {n304bCor: 1},
  n304bCor: {n304b: 1, n304cCor: 1, n304aCor: 1},
  n304a: {n304aCor: 1},
  n304aCor: {n304a: 1, n304bCor: 1, junction12l3: 1},
  gwm3: {gwm3Cor: 1},
  gwm3Cor: {gwm3: 1, n304eCor: 1, n304gCor: 1},
  n304g: {n304gCor: 1},
  n304gCor: {n304g: 1, n304hCor: 1, gwm3Cor: 1},
  n304h: {n304hCor: 1},
  n304hCor: {n304h: 1, stairML3Cor: 1, n304iCor: 1, n304gCor: 1},
  n304i: {n304iCor: 1},
  n304iCor: {n304i: 1, n304jCor: 1, n304hCor: 1},
  n304j: {n304jCor: 1},
  n304jCor: {n304j: 1, n304jCor: 1, junction12l3: 1},
  stairML3: {stairML3Cor: 1, stairML2: 10},
  stairML3Cor: {stairML3: 1, n304hCor: 1, n304cCor: 1},
  lwt3: {lwt3Cor: 1},
  lwt3Cor: {lwt3: 1, junction10l3: 1},
  s309b: {s309b: 1},
  s309bCor: {s309b: 1, s309aCor: 1, junction7l3: 1},
  s309a: {s309aCor: 1},
  s309aCor: {s309a: 1, s309bCor: 1},
  lwm3: {lwm3Cor: 1},
  lwm3Cor: {lwm3: 1, s309aCor: 1, junction13l3: 1},
  s304a: {s304aCor: 1},
  s304aCor: {s304a: 1, lwm3Cor: 1},
  a301CommonRoomWomen: {a301cCorCommonRoomWomen: 1},
  a301cCorCommonRoomWomen: {a301CommonRoomWomen: 1, a302CorCommonRoomMen: 1},
  a302CommonRoomMen: {a302CorCommonRoomMen: 1},
  a302CorCommonRoomMen: {a302CommonRoomMen: 1, a301cCorCommonRoomWomen: 1},
  stairTM3: {stairTM3Cor: 1, stairTM2: 10},
  stairTM3Cor: {stairTM3: 1, junction10l3: 1, junction1l3: 1},
  stairTL3: {stairTL3Cor: 1, stairTL2: 10},
  stairTL3Cor: {stairTL3: 1, junction11l3: 1, junction2l3: 1},
  stairLL3: {stairLL3Cor: 1, stairLL2: 10},
  stairLL3Cor: {stairLL3: 1, a305: 1, a306Cor: 1},
  stairLR3: {stairLR3Cor: 1, stairLR2: 10},
  stairLR3Cor: {stairLR3: 1, a302CorCommonRoomMen: 1},
  junction1l3: {gwt2: 1, stairTM3Cor: 1, s311aCor: 1, n310Cor: 1},
  junction2l3: {n310Cor: 1, n308Cor: 1, stairTL3Cor: 1},
  junction3l3: {stairMM3Cor: 1, n306Cor: 1, n307Cor: 1},
  junction4l3: {stairLM3Cor: 1, n305aCor: 1, junction12l3: 1, n303Cor: 1},
  junction7l3: {s309bCor: 1, s310Cor: 1, s308Cor: 1},
  junction8l3: {s307: 1, s306Cor: 1, s308Cor: 1, stairMM3Cor: 1},
  junction9l3: {s304aCor: 1, s303Cor: 1, s305aCor: 1, stairLM3Cor: 1},
  junction10l3: {s310Cor: 1, lwt3Cor: 1, s311aCor: 1, stairTM3Cor: 1},
  junction11l3: {stairTL3Cor: 1, n309cCor: 1, n309dCor: 1},
  junction12l3: {junction4l3: 1, n304jCor: 1, n304aCor: 1},
  a306Cor: {a306: 1, a307Cor: 1, stairLL3Cor: 1},
  a306: {a306Cor: 1},
  a307: {a307Cor: 1},
  a307Cor: {a307: 1, stairLL3Cor: 1},

  //floor0

  prayerhall: {prayerhallCor: 1},
  prayerhallCor: {prayerhall: 1, shreyascomputingCor: 1, n011Cor: 1},
  n011: {n011Cor: 1},
  n011Cor: {prayerhallCor: 1, junction10: 1, n011: 1},
  n010: {n010Cor: 1},
  n010Cor: {n010: 1, junction1l0: 1, junction2l0: 1},
  junction1l0: {n011Cor: 1, stairTM0Cor: 1, gwt0: 1},
  vidyutmedia: {vidyutmediaCor: 1},
  vidyutmediaCor: {vidyutmedia: 1, junction2l0: 1, amritadarshanamCor: 1},
  junction2l0: {stairTL0Cor: 1, n010Cor: 1, vidyutmediaCor: 1},
  amritadarshanam: {amritadarshanamCor: 1},
  amritadarshanamCor: {
    amritadarshanam: 1,
    vidyutmediaCor: 1,
    n006Cor: 1,
    stairMM0Cor: 1
  },
  n006: {n006Cor: 1},
  n006Cor: {n006: 1, amritadarshanamCor: 1, n005Cor: 1},
  n005: {n005Cor: 1},
  n005Cor: {n005: 1, n006Cor: 1, junction4l0: 1},
  n003: {n003Cor: 1},
  n003Cor: {n003: 1, n002Cor: 1, junction4l0: 1},
  n002: {n002Cor: 1},
  n002Cor: {n002: 1, n001Cor: 1, n003Cor: 1},
  n001: {n001Cor: 1},
  n001Cor: {n001: 1, n002Cor: 1, junction5l0: 1},
  shreyascomputing: {shreyascomputingCor: 1},
  shreyascomputingCor: {
    shreyascomputing: 1,
    prayerhallCor: 1,
    s011shreyascomputingCor: 1
  },
  s011shreyascomputing: {s011shreyascomputingCor: 1},
  s011shreyascomputingCor: {
    s011shreyascomputing: 1,
    shreyascomputingCor: 1,
    junction6l0: 1
  },
  s010b: {s010bCor: 1},
  s010bCor: {s010b: 1, s010aCor: 1, junction6l0: 1},
  s010a: {s010aCor: 1},
  s010aCor: {junction7l0: 1, s010bCor: 1, s010a: 1},
  associatedean: {associatedeanCor: 1},
  associatedeanCor: {junction7l0: 1, associatedean: 1, principalasCor: 1},
  principalas: {principalasCor: 1},
  principalasCor: {
    stairMM0Cor: 1,
    associatedeanCor: 1,
    principalengineeringCor: 1,
    principalas: 1
  },
  principalengineering: {principalengineeringCor: 1},
  principalengineeringCor: {
    principalengineering: 1,
    s005Cor: 1,
    principalasCor: 1
  },
  s005: {s005Cor: 1},
  s005Cor: {s005: 1, principalengineeringCor: 1, junction9l0: 1},
  deanadmin: {deanadminCor: 1},
  deanadminCor: {deanadmin: 1, deanacademicsCor: 1, junction9l0: 1},
  deanacademics: {deanacademicsCor: 1},
  deanacademicsCor: {deanacademics: 1, deanadminCor: 1, s001Cor: 1},
  s001: {s001Cor: 1},
  s001Cor: {s001: 1, deanacademicsCor: 1, junction10l0: 1},
  gwt0: {junction1l0: 1},
  n009d: {n009dCor: 1},
  n009dCor: {n009d: 1, n009cCor: 1},
  n009c: {n009cCor: 1},
  n009cCor: {n009c: 1, n009dCor: 1, junction11l0: 1},
  junction11l0: {n009bCor: 1, n009cCor: 1, stairTL0Cor: 1},
  n009b: {n009bCor: 1},
  n009bCor: {n009b: 1, n009aCor: 1, junction11l0: 1},
  n009a: {n009aCor: 1},
  n009aCor: {n009a: 1, n009bCor: 1},
  stairTL0: {stairTL0Cor: 1, stairTL1: 10},
  stairTL0Cor: {stairTL0: 1, junction11l0: 1, junction2l0: 1},
  gwm0: {gwm0Cor: 1},
  gwm0Cor: {gwm0: 1, parcelscouriersCor: 1, n004bCor: 1},
  n004b: {n004bCor: 1},
  n004bCor: {n004b: 1, n004cCor: 1, gwm0Cor: 1},
  n004c: {n004cCor: 1},
  n004cCor: {n004c: 1, n004bCor: 1},
  parcelscouriers: {parcelscouriersCor: 1},
  parcelscouriersCor: {
    parcelscouriers: 1,
    gwm0Cor: 1,
    stairML0Cor: 1,
    n004eCor: 1
  },
  n004e: {n004eCor: 1},
  n004eCor: {n004e: 1, stairML0Cor: 1, parcelscouriersCor: 1, n004gCor: 1},
  n004g: {n004gCor: 1},
  n004gCor: {n004g: 1, n004eCor: 1, junction12l0: 1},
  n004a: {n004aCor: 1},
  n004aCor: {n004a: 1, junction12l0: 1},
  lwt0: {lwt0Cor: 1},
  lwt0Cor: {lwt0: 1, junction6l0: 1},
  s009c: {s009cCor: 1},
  s009cCor: {s009bCor: 1, s009c: 1},
  s009b: {s009bCor: 1},
  s009bCor: {s009b: 1, s009cCor: 1, mechanicalworkshopCor: 1, junction7l0: 1},
  mechanicalworkshop: {mechanicalworkshopCor: 1},
  mechanicalworkshopCor: {mechanicalworkshop: 1, s009bCor: 1},
  lwm0: {lwm0Cor: 1},
  lwm0Cor: {s004cCor: 1, lwm0: 1},
  s004c: {s004cCor: 1},
  s004cCor: {s004c: 1, lwm0Cor: 1, s004bCor: 1},
  s004b: {s004bCor: 1},
  s004bCor: {s004b: 1, stairMR0Cor: 1, s003Cor: 1, s004cCor: 1},
  s003: {s003Cor: 1},
  s003Cor: {s003: 1, stairMR0Cor: 1, s004bCor: 1, a001Cor: 1, junction10l0: 1},
  a007: {a007Cor: 1},
  a007Cor: {a007: 1, a006Cor: 1},
  a006: {a006Cor: 1},
  a006Cor: {a006: 1, a007Cor: 1, a005Cor: 1},
  a005: {a005Cor: 1},
  a005Cor: {a005: 1, a006Cor: 1, stairLL0Cor: 1},
  a003: {a003Cor: 1},
  a003Cor: {a003: 1, stairLR0Cor: 1, junction10l0: 1, a002Cor: 1},
  a002: {a002Cor: 1},
  a002Cor: {a002: 1, stairLR0Cor: 1, lwl0Cor: 1, a003Cor: 1},
  lwl0: {lwl0Cor: 1},
  lwl0Cor: {lwl0: 1, a001Cor: 1, a002Cor: 1},
  a001: {a001Cor: 1},
  a001Cor: {lwl0Cor: 1, a001: 1, junction10l0: 1, s003Cor: 1},
  stairTM0: {stairTM0Cor: 1, stairTM1: 10},
  stairTM0Cor: {stairTM0: 1, junction1l0: 1, junction6l0: 1},
  stairMM0: {stairMM0Cor: 1, stairMM1: 10},
  stairMM0Cor: {principalasCor: 1, amritadarshanamCor: 1, stairMM0: 1},
  stairLM0: {stairLM0Cor: 1, stairLM1: 10},
  stairLM0Cor: {junction4l0: 1, junction9l0: 1, stairLM0: 1},
  stairML0: {stairML0Cor: 1, stairML1: 10},
  stairML0Cor: {stairML0: 1, n004eCor: 1, parcelscouriersCor: 1},
  stairLR0: {stairLR0Cor: 1, stairLR1: 10},
  stairLR0Cor: {stairLR0: 1, a003Cor: 1, junction10l0: 1, a002Cor: 1},
  stairLL0: {stairLL0Cor: 1, stairLL1: 10},
  stairLL0Cor: {stairLL0: 1, junction5l0: 1, a005Cor: 1, a006Cor: 1},
  junction7l0: {s009bCor: 1, s010aCor: 1, associatedeanCor: 1},
  junction6l0: {
    stairTM0Cor: 1,
    s011shreyascomputingCor: 1,
    lwt0Cor: 1,
    s010bCor: 1
  },
  junction12l0: {junction4l0: 1, n004gCor: 1, n004aCor: 1},
  junction4l0: {stairLM0Cor: 1, junction12l0: 1, n005Cor: 1, n003Cor: 1},
  junction9l0: {stairMR0Cor: 1, s005Cor: 1, deanadminCor: 1, stairLM0Cor: 1},
  junction5l0: {junction10l0: 1, stairLL0Cor: 1, n001Cor: 1},
  junction10l0: {junction5l0: 1, stairLR0Cor: 1, a003Cor: 1, s001Cor: 1},
  stairMR0: {stairMR0Cor: 1, stairMR1: 10},
  stairMR0Cor: {stairMR0: 1, junction9l0: 1, s004bCor: 1, s003Cor: 1},
}, summation: sum, zero: 0);
