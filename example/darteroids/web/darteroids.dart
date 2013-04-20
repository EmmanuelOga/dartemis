import "dart:math" as iC;import "dart:html" as yB;class ZD{final  name;const ZD(this.name);}class q extends VB{var CB;var color;q.kD();factory q( j, h){var g=new QB.nD(q,jC);g.CB=j;g.color=h;return g;}static  jC()=>new q.kD();}class cD extends aB{var u;var NB;cD():super(v.RB([n,t])); initialize(){u=new s<n>(n,k);NB=new s<t>(t,k);} WB( g){var j=u.get(g);var h=NB.get(g);j.x+= h.x;j.y+= h.y;}}class bD extends pC{const  UP=87;const  DOWN=83;const  LEFT=65;const  RIGHT=68;var xB=false;var uB=false;var vB=false;var wB=false;var UB=false;var targetX=0;var targetY=0;var NB;var cB;var MB;var canvas;bD(this.canvas):super(20,v.RB([t,EB])); initialize(){NB=new s<t>(t,k);cB=new s<EB>(EB,k);MB=k.tB(new mB().runtimeType);yB.window.onKeyDown.listen(MD);yB.window.onKeyUp.listen(ND);canvas.onMouseDown.listen(OD);canvas.onMouseUp.listen(PD);} fB( l){var j=MB.sB(hB);var g=NB.get(j);var h=cB.get(j);if(xB){g.y-= 0.1;}else if(uB){g.y+= 0.1;}if(vB){g.x-= 0.1;}else if(wB){g.x+= 0.1;}h.UB=UB;if(UB){h.target(targetX,targetY);}} MD( h){var g=h.keyCode;if(g==UP){xB=true;uB=false;}else if(g==DOWN){xB=false;uB=true;}else if(g==LEFT){vB=true;wB=false;}else if(g==RIGHT){vB=false;wB=true;}} ND( h){var g=h.keyCode;if(g==UP){xB=false;}else if(g==DOWN){uB=false;}else if(g==LEFT){vB=false;}else if(g==RIGHT){wB=false;}} OD( g){targetX=g.offsetX;targetY=g.offsetY;UB=true;} PD( g){UB=false;}}class aD extends aB{var context2d;var u;var HB;var LB;aD(this.context2d):super(v.RB([n,q])); initialize(){u=new s<n>(n,k);HB=new s<q>(q,k);LB=new s<FB>(FB,k);} WB( j){var h=u.get(j);var g=HB.get(j);var l=LB.LD(j);context2d.save();try {context2d.lineWidth=0.5;context2d.fillStyle=g.color;context2d.strokeStyle=g.color;if(null!=l&&l.gC){if(l.invisiblityTimer%600<300){context2d.globalAlpha=0.4;}}eB(h,g);if(h.x+g.CB>DB){eB(h,g,offsetX:-DB);}else if(h.x-g.CB<0){eB(h,g,offsetX:DB);}if(h.y+g.CB>w){eB(h,g,offsetY:-w);}else if(h.y-g.CB<0){eB(h,g,offsetY:w);}context2d.stroke();}finally {context2d.restore();}} eB( g, h,{ offsetX: 0, offsetY: 0}){context2d.beginPath();context2d.arc(g.x+offsetX,g.y+offsetY,h.CB,0,iC.PI*2,false);context2d.closePath();context2d.fill();}}const  hB="player";const  zB="ASTEROIDS";const  PC="#ff0000";class n extends VB{var oD,pD;n.kD();factory n( j, h){var g=new QB.nD(n,jC);g.x=j;g.y=h;return g;}static  jC()=>new n.kD();set x( g)=>oD=g%DB;get x=>oD;set y( g)=>pD=g%w;get y=>pD;}const  QC="#BBB";const  DB=600;const  w=600;const  iB=100;final  YB=new iC.Random(); main(){var g=yB.query('#gamecontainer');yB.window.setImmediate((){g.width=DB;g.height=w+iB;var h=new kC(g);h.start();});}class dD extends aB{const  aC=2.5;var u;var cB;var NB;dD():super(v.RB([EB,n,t])); initialize(){u=new s<n>(n,k);NB=new s<t>(t,k);cB=new s<EB>(EB,k);} WB( h){var g=cB.get(h);if(g.BD){var l=u.get(h);var j=NB.get(h);ID(l,j,g);}else if(g.qB>0){g.qB-= k.TB;}} ID( h, p, j){j.qB=1000;var g=k.rB();g.o(new n(h.x,h.y));var XB=j.targetX-h.x;var OB=j.targetY-h.y;var l=iC.sqrt(iC.pow(XB,2)+iC.pow(OB,2));var gB=p.x+aC*(XB/l);var OC=p.y+aC*(OB/l);g.o(new t(gB,OC));g.o(new q(2,"red"));g.o(new PB(5000));g.o(new BC());g.oB();}}class t extends VB{var x,y;t.kD();factory t([ x=0, y=0]){var g=new QB.nD(t,jC);g.x=x;g.y=y;return g;}static  jC()=>new t.kD();}class kC{var canvas;var context2d;var hC=0;var k;kC(this.canvas){context2d=canvas.context2d;} start(){k=new bB();var g=k.rB();g.o(new n(DB~/2,w~/2));g.o(new t());g.o(new q(20,PC));g.o(new EB());g.o(new FB(lifes:3,invisiblityTimer:5000));g.oB();var h=new mB();h.register(g,hB);k.nB(h);var j=new IC();k.nB(j);wC(j);k.GB(new bD(canvas));k.GB(new dD());k.GB(new fD());k.GB(new cD());k.GB(new hD());k.GB(new iD());k.GB(new eD(context2d));k.GB(new aD(context2d));k.GB(new gD(context2d));k.initialize();fC(0);} wC( l){for(int h=0;h<10;h++ ){var g=k.rB();g.o(new n(DB*YB.nextDouble(),w*YB.nextDouble()));var p=jB();var j=jB();g.o(new t(p,j));g.o(new q(10+20*YB.nextDouble(),QC));g.o(new AC());g.oB();l.add(g,zB);}} fC( g){k.TB=g-hC;hC=g;k.process();YD();} YD(){yB.window.requestAnimationFrame(fC);}}class AC extends VB{AC.kD();factory AC()=>new QB.nD(AC,jC);static  jC()=>new AC.kD();}class BC extends VB{BC.kD();factory BC()=>new QB.nD(BC,jC);static  jC()=>new BC.kD();}class EB extends AB{var UB=false;var targetX,targetY;var qB=0; target( h, g){this.targetX=h;this.targetY=g;} get BD{if(UB&&qB<=0)return true;return false;}}class eD extends WC{var context2d;eD(this.context2d); MC(){context2d.save();try {context2d.fillStyle="black";context2d.beginPath();context2d.rect(0,0,DB,w+iB);context2d.closePath();context2d.fill();}finally {context2d.restore();}}}class PB extends VB{var NC;PB.kD();factory PB( h){var g=new QB.nD(PB,jC);g.NC=h;return g;}static  jC()=>new PB.kD();}class FB extends AB{var lifes;var invisiblityTimer;FB({this.lifes: 1,this.invisiblityTimer: 0}); get gC=>invisiblityTimer>0;}class fD extends aB{var eC;fD():super(v.RB([PB])); initialize(){eC=new s<PB>(PB,k);} WB( g){var h=eC.get(g);if(h.NC<0){g.KC();}else{h.NC-= k.TB;}}}class gD extends WC{var context2d;var MB;var LB;gD(this.context2d); initialize(){MB=k.tB(new mB().runtimeType);LB=new s<FB>(FB,k);} MC(){context2d.save();try {context2d.fillStyle="#555";context2d.beginPath();context2d.rect(0,w,DB,w+iB);context2d.closePath();context2d.fill();var j=MB.sB(hB);var h=LB.get(j);context2d.fillStyle=PC;for(int g=0;g<h.lifes;g++ ){context2d.beginPath();context2d.arc(50+g*50,w+iB~/2,15,0,iC.PI*2,false);context2d.closePath();context2d.fill();}}finally {context2d.restore();}}}class hD extends aB{static final  lC=iC.sqrt(2);var LC;var u;var HB;hD():super(v.RB([BC,n])); initialize(){LC=k.tB(new IC().runtimeType);u=new s<n>(n,k);HB=new s<q>(q,k);} WB( l){var p=u.get(l);LC.KD(zB).forEach(( j){var g=u.get(j);var h=HB.get(j);if(SC.XC(p.x,p.y,0,g.x,g.y,h.CB)){j.KC();l.KC();if(h.CB>10){dC(g,h);dC(g,h);}}});} dC( h, p){var g=k.rB();g.o(new n(h.x,h.y));var OB=jB();var j=jB();g.o(new t(OB,j));var l=p.CB/lC;g.o(new q(l,QC));g.o(new AC());g.oB();LC.add(g,zB);}} jB(){var g=0.5+1.5*YB.nextDouble();g=g*(YB.nextBool()?1:-1);return g;}class iD extends KB{var MB;var LB;var u;var HB;iD():super(v.RB([AC,n,q])); initialize(){MB=k.tB(new mB().runtimeType);LB=new s(FB,k);u=new s<n>(n,k);HB=new s<q>(q,k);} fB( XB){var j=MB.sB(hB);var g=u.get(j);var h=LB.get(j);var OB=HB.get(j);if(!h.gC){XB.forEach((l){var p=u.get(l);var gB=HB.get(l);if(SC.XC(p.x,p.y,gB.CB,g.x,g.y,OB.CB)){h.lifes-- ;h.invisiblityTimer=5000;g.x=DB~/2;g.y=w~/2;return;}});}else{h.invisiblityTimer-= k.TB;}} dB()=>true;}class SC{static  XC( gB, l, p, OB, OC, XB){var g=OB-gB;var j=OC-l;var h=p+XB;return (g*g+j*j)<(h*h);}}class CC extends IB{var rD;var vD;CC():rD=new m<m<AB>>(),vD=new m<i>(); initialize(){} LE( g){PE(g,(h,j){h[g.id].OE();h[g.id]=null;});g.WE=0;} bE( j, l, p){var h=l.id;rD.hE(h);var g=rD[h];if(g==null){g=new m<AB>();rD[h]=g;}g[j.id]=p;j.mE(l.ZC);} JD( j){var h=j.id;rD.hE(h);var g=rD[h];if(g==null){g=new m<AB>();rD[h]=g;}return g;} PE( j, l( components, index)){var g=j.WE;var h=0;while (g>0){if((g&1)==1){l(rD[h],h);}h++ ;g=g>>1;}} SB( g)=>vD.add(g); ED(){vD.forEach((g)=>LE(g));vD.clear();}}class ZB{static var FC=1;static var nC=0;var uD=0;var wD=0;ZB(){uD=FC;FC=FC<<1;wD=nC++ ;} get ZC=>uD; get id=>wD;}class EC{static var UC=new Map<Type,ZB>();static  GC( h){var g=UC[h];if(g==null){g=new ZB();UC[h]=g;}return g;}static  qC( g)=>GC(g).ZC;}class mC{static var TC=0;static var kB;static  oC( h){if(null==kB){kB=new Map<Type,int>();}var g=kB[h];if(g==null){g=1<<TC;TC++ ;kB[h]=g;}return g;}}class DC extends IB{var qD;var sD;var yD;var zD=0;var AE=0;var BE=0;var vD=0;var HE;DC():qD=new m<i>(),sD=new m<i>(),yD=new m<bool>(),HE=new uC(); initialize(){} eE(){var g=sD.removeLast();if(null==g){g=new i.mD(tD,HE.DD());}BE++ ;return g;} pB( g){zD++ ;AE++ ;qD[g.id]=g;} enabled( g){yD[g.id]=false;} disabled( g){yD[g.id]=true;} SB( g){qD[g.id]=null;yD[g.id]=false;sD.add(g);zD-- ;vD++ ;} rE( g)=>qD[g];}abstract class RC{ pB( g); JC( g); SB( g); enabled( g); disabled( g);}abstract class IB implements RC{var tD; initialize(); pB( g){} JC( g){} SB( g){} disabled( g){} enabled( g){}}class JB<BB>{var xD;JB.lD(this.xD); operator[]( g)=>xD[g]; get size=>xD.size; get isEmpty=>xD.isEmpty; contains( g)=>xD.contains(g); forEach( g( element))=>xD.forEach(g);}class i{final  id;var UE=0;var WE=0;var kB=0;var tD;var NE;var SE;i.mD(this.tD,this.id){NE=tD.GD;SE=tD.cC;} mE( g){WE|= g;} oE( g){kB|= g;} pE( g){kB&= ~g;} toString()=>"Entity[${id}]"; o( g){SE.bE(this,EC.GC(g.runtimeType),g);} oB()=>tD.xC(this); KC()=>tD.FD(this);}abstract class aB extends KB{aB( g):super(g); WB( g); fB( h)=>h.forEach((g)=>WB(g)); dB()=>true;}abstract class pC extends KB{var EE=0;var IE=0;final  KE; get TB=>IE;pC(this.KE, g):super(g); dB(){EE+= k.TB;IE+= k.TB;if(EE>=KE){EE-= KE;return true;}return false;} end(){IE=0;}}class s<lB extends AB>{var FE;var JE;s( h, g){this.FE=EC.GC(h);JE=g.cC.JD(this.FE);}lB get( g)=>JE[g.id] as lB; LD( g){if(JE.RD(g.id)){return JE[g.id] as lB;}return null;}}class m<BB>{var CE;var DE=0;var GE;m({ capacity: 16}):CE=new List(capacity){GE=new JB.lD(this);} operator[]( g)=>CE[g]; get size=>DE; get readOnly=>GE; get isEmpty=>DE==0; forEach( h( element)){for(int g=0;g<DE;g++ ){h(CE[g]);}} removeLast(){if(DE>0){var g=CE[ --DE];CE[DE]=null;return g;}return null;} remove( j){for(int g=0;g<DE;g++ ){var h=CE[g];if(j==h){CE[g]=CE[ --DE];CE[DE]=null;return true;}}return false;} contains( h){for(int g=0;DE>g;g++ ){if(h==CE[g]){return true;}}return false;} get CD=>CE.length; add( g){if(DE==CE.length){yE();}CE[DE++ ]=g;} operator[]=( g, h){if(g>=CE.length){zE(g*2);}DE=g+1;CE[g]=h;} yE(){var g=((CE.length*3)/2+1).toInt();zE(g);} zE( h){var g=CE;CE=new List<BB>(h);CE.setRange(0,g.length,g);} hE( g){if(g>=CE.length){zE(g*2);}} clear(){for(int g=0;g<DE;g++ ){CE[g]=null;}DE=0;} RD( g)=>g<CD; toString()=>"[${CE.join(',')}]";}abstract class AB{ OE(){}}class VC{static var HC=new Map<Type,m<QB>>();static QB rC( j, l){var h=sC(j);var g=h.removeLast();if(null==g){g=l();}return g;}static  sC( h){var g=HC[h];if(null==g){g=new m();HC[h]=g;}return g;}static  tC( g){HC[g.runtimeType].add(g);}}class mB extends IB{final  ME;final  QE;mB():ME=new Map<String,i>(),QE=new Map<i,String>(); register( g, h){ME[h]=g;QE[g]=h;} sB( g)=>ME[g]; SB( h){var g=QE.remove(h);if(g!=null){ME.remove(g);}} initialize(){}}abstract class WC extends KB{WC():super(v.vC()); fB( g)=>MC(); MC(); dB()=>true;}class bB{final  NE=new DC();final  SE=new CC();final  AE=new m<i>();final  ZE=new m<i>();final  vD=new m<i>();final  gE=new m<i>();final  iE=new m<i>();final  jE=new Map<Type,KB>();final  kE=new List<KB>();final  lE=new Map<Type,IB>();final  nE=new m<IB>();var TB;bB(){nB(NE);nB(SE);} initialize(){nE.forEach((h)=>h.initialize());kE.forEach((g)=>g.initialize());} get GD=>NE; get cC=>SE; nB( g){lE[g.runtimeType]=g;nE.add(g);g.tD=this;} tB( g){return lE[g];} rB(){return NE.eE();} sB( g){return NE.rE(g);} GB( g,{ passive: false}){g.k=this;g.fE=passive;jE[g.runtimeType]=g;kE.add(g);return g;} sE( j, h(EntityObserver,Entity)){j.forEach((g){nE.forEach((l)=>h(l,g));kE.forEach((p)=>h(p,g));});j.clear();} process(){VD();kE.forEach((g){if(!g.UD){g.process();}});} VD(){sE(AE,(h,g)=>h.pB(g));sE(ZE,(h,g)=>h.JC(g));sE(iE,(h,g)=>h.disabled(g));sE(gE,(h,g)=>h.enabled(g));sE(vD,(h,g)=>h.SB(g));SE.ED();} xC( g)=>AE.add(g); FD( g){if(!vD.contains(g)){vD.add(g);}}}class IC extends IB{final  RE;final  TE;IC():RE=new Map<String,m<i>>(),TE=new Map<i,m<String>>(); initialize(){} add( j, l){var h=RE[l];if(h==null){h=new m<i>();RE[l]=h;}h.add(j);var g=TE[j];if(g==null){g=new m<String>();TE[j]=g;}g.add(l);} WD( h){var g=TE[h];if(g!=null){g.forEach((l){var j=RE[l];if(j!=null){j.remove(h);}});g.clear();}} KD( h){var g=RE[h];if(g==null){g=new m<i>();RE[h]=g;}return g.readOnly;} SB( g)=>WD(g);}abstract class KB implements RC{var VE=0;var k;var XE;var YE;var aE;var cE;var dE;var fE;KB( g):XE=new m<i>(),YE=g.yC,aE=g.HD,cE=g.TD{dE=YE==0&&cE==0;VE=mC.oC(runtimeType);}get UD=>fE; AD(){} process(){if(dB()){AD();fB(XE.readOnly);end();}} end(){} fB( g); dB(); initialize(){} QD( g){} XD( g){} sE( g){if(dE){return;}var j=tE(g);var h=(YE&g.WE)==YE;if(cE>0&&h){h=(cE&g.WE)>0;}if(aE>0&&h){h=(aE&g.WE)==0;}if(h&&!j){wE(g);}else if(!h&&j){xE(g);}} tE( g)=>(VE&g.kB)==VE; wE( g){XE.add(g);g.oE(VE);QD(g);} xE( g){XE.remove(g);g.pE(VE);XD(g);} pB( g)=>sE(g); JC( g)=>sE(g); enabled( g)=>sE(g); SB( g){if(tE(g)){xE(g);}} disabled( g){if(tE(g)){xE(g);}}}class VB extends AB with QB{ OE(){SD();} bC(){}}class v{var YE=0;var aE=0;var cE=0; zC( g){YE=qE(YE,g);return this;}static  RB( h){var g=new v();g.zC(h);return g;}static  vC()=>new v(); get yC=>YE; get HD=>aE; get TD=>cE; qE( g, h){if(null!=h){h.forEach((j){g=g|EC.qC(j);});}return g;}}typedef  YC();abstract class QB{factory QB.nD( g, h){return VC.rC(g,h);} bC(); SD(){bC();VC.tC(this);}}class uC{var uE;var vE=0;uC():uE=new m<int>(); DD(){if(uE.size>0){return uE.removeLast();}return vE++ ;}}//@ sourceMappingURL=out.dart.map
