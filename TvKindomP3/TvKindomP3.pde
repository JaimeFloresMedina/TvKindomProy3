import processing.sound.*; //<>//

int pantalla =0;
int numJA = 0;
int numJB = 0;
int turno;
int camx =0;
int movAtaq =0 ;
int movVida =0;
int ret;
int dano1;
int dano2, dano3;
int ran, t1, t2;
int po, extra, po1, extra1;
int c1, c2, c3, c4, c5, c6, c7, c8, c9, c10;
boolean s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, v;
int vida1=900, vida2=900;
int g, l;

Combos fallo;
PImage Iaro, Ipac, Ifue, Imag, Idom, Garo, Gpac, Gfue, Gmag, Gdom;
PImage FBatalla, cuerdas, FIn, Fsel, War, Wpac, Wko, Wmag, Wdom, vidaE;
PImage Bar, Bpa, Bfu, Bma, Bdo, Gp, Cb, Varo, Vpac, Vfue, Vmag, cz;
Personaje aro, pacman, fuerte, mago, domo;
Pantallas p0, p1, p2, p3;
SoundFile Saro, Spac, Sfue, Sdom, Smag, Spcc, s, ss, mm, g1, g2, g3, bj, pdo;


void reinicio() {
  numJA = 0;
  numJB = 0;
  turno =int(random(1, 3));
  l=0;
  vida1=900;
  vida2=900;
  Spac.loop();
  Saro.stop();
  Spcc.stop();
  Sfue.stop();
  Smag.stop();
  Sdom.stop();
}


void keyPressed() {

  if (pantalla == 1) {

    if (key=='q' || key =='Q') {
      numJA=1;
      key=0;
      s.play();
    }

    if (key == 'w' || key=='W') {
      numJA=2;
      key=0;
      s.play();
    }
    if (key=='e' || key =='E') {
      numJA=3;
      key=0;
      s.play();
    }

    if (key == 'r' || key=='R') {
      numJA=4;
      key=0;
      s.play();
    }
    if (key == 't' || key=='T') {
      numJA=5;
      key=0;
      s.play();
    }


    if (key=='a' || key =='A') {
      numJB=1;
      key=0;
      ss.play();
    }

    if (key == 's' || key=='S') {
      numJB=2;
      key=0;
      ss.play();
    }
    if (key=='d' || key =='D') {
      numJB=3;
      key=0;
      ss.play();
    }

    if (key == 'f' || key=='F') {
      numJB=4;
      key=0;
      ss.play();
    }
    if (key == 'g' || key=='G') {
      numJB=5;
      key=0;
      ss.play();
    }

    if (numJA>=1 && numJA<=5) {
      if (numJB>=1 && numJB<=5) {
        if (key=='\n') {
          pantalla=2;
          mm.play();
        }
      }
    }
  }

  if (pantalla==2) {
    if (vida1>0 && vida2>0) {

      if (key=='v'||key=='V') {
        po=(int)random(2); 
        extra=150*po;
      }

      if (key=='b'|| key=='B') {

        if (turno==1) { 
          ran = (int)random(1, 10);
          t1 = (int)random(4, 12);          
          dano2= (t1*ran)+30;
          g=int(random(1, 4));
        }
        if (turno==2) {
          ran = (int)random(1, 10);        
          t2 = (int)random(4, 12);
          dano3 =(t2*ran)+30;
          g=int(random(1, 4));
        }
      }
      if (key=='n'|| key=='N') {

        if (turno==1) { 
          ret=(int)random(3);
          dano1=((int)random(60, 85)*ret+50);
        }
        if (turno==2) {
          ret=(int)random(3);
          dano1=((int)random(50, 85)*ret+50);
        }
      }
    }
  }

  if (pantalla==3) {

    if (keyCode==ENTER) {
      reinicio();
      pantalla=1;
    }
  }
}

void gol() {
  switch (g) {
  case 1:
    g1.play();
    break;
  case 2:
    g2.play();
    break;
  case 3:
    g3.play();
    break;
  }
}


class Combos {


  void fallo(int x, int y) {
    pushMatrix();
    translate(x, y);
    switch(ret) {
    case 0:
      fill(255, 0, 0);
      rect(0, -20, 85, 30, 0, 0, 10, 10);
      fill(255);
      textSize(15);
      text("Fallido", 5, 0);
      break;

    case 2:
      fill(255, 200, 0);
      rect(0, -20, 75, 30, 0, 0, 10, 10);
      fill(0);
      textSize(15);
      text("Doble", 5, 0);
      break;
    }
    popMatrix();
  }
}


void setup() {
  size(700, 500);
  Iaro = loadImage("aro.png");
  Ipac = loadImage("pacman.png");
  Ifue = loadImage("b1.png");
  Imag = loadImage("mago.png");
  Idom = loadImage("domo1.png");

  Garo = loadImage("aro2.png");
  Gpac = loadImage("Pac2.png");
  Gfue = loadImage("b2.png");
  Gmag = loadImage("mago2.png");
  Gdom = loadImage("domo2.png");

  FIn = loadImage("inicio.jpg");
  Fsel = loadImage("selec.jpg");
  FBatalla = loadImage("rin.jpg");
  cuerdas = loadImage("cuerdas.png");

  War = loadImage("Waro1.jpg");
  Wpac = loadImage("Wpac.jpg");
  Wko = loadImage("Wko.jpg");
  Wmag = loadImage("Wmag.jpg");
  Wdom = loadImage("Wdom.jpg");

  Varo = loadImage("Varo.png");
  Vpac = loadImage("Vpac.png");
  Vfue = loadImage("Vfue.png");
  Vmag = loadImage("Vmag.png");


  Bar =loadImage("luz.png");
  cz =loadImage("cz.png");
  Bpa =loadImage("bola.png");
  Bfu =loadImage("box.png");
  Bma =loadImage("Mluz.png");
  Bdo =loadImage("gall.png");
  Gp =loadImage("gp.png");
  Cb =loadImage("combo.png");
  vidaE =loadImage("vida.png");


  aro=new Aro();
  pacman = new Pacman();
  fuerte = new Fuerte();
  mago = new Mago();
  domo = new Domo();
  p0= new Pantallas();
  p1= new Pantallas();
  p2= new Pantallas();
  p3= new Pantallas();

  Saro = new SoundFile(this, "Saro.mp3");
  Spac = new SoundFile(this, "Spac.mp3");
  Sfue = new SoundFile(this, "Sfue.mp3");
  Sdom = new SoundFile(this, "Sdom.wav");
  Smag = new SoundFile(this, "Smag.mp3");
  Spcc = new SoundFile(this, "Spcc.mp3");

  s = new SoundFile(this, "s.wav");
  ss = new SoundFile(this, "ss.wav");
  mm = new SoundFile(this, "mm.wav");
  g1 = new SoundFile(this, "g1.wav");
  g2 = new SoundFile(this, "g2.wav");
  g3 = new SoundFile(this, "g3.wav");
  bj = new SoundFile(this, "bj.wav");
  pdo = new SoundFile(this, "p2.wav");

  fallo= new Combos();

  Spac.loop();

  turno = int(random(1, 3));
  c1=255;
  c2= 255;
  c3= 255;
  c4= 255;
  c5= 255;
  c6= 255;
  c7= 255;
  c8= 255;
  c9= 255;
  c10=255;
}

void Cnegro() {


  if (s1) {
    strokeWeight(5);
  } else {
    strokeWeight(0);
  }

  stroke(#1dbaff);
  fill(0, 0, 10, c1);
  rect(188, 93, 91, 150);
  if (s2) {
    strokeWeight(5);
  } else {
    strokeWeight(0);
  }

  fill(0, 0, 10, c2);
  rect(288, 93, 90, 150);
  if (s3) {
    strokeWeight(5);
  } else {
    strokeWeight(0);
  }

  fill(0, 0, 10, c3);
  rect(390, 93, 90, 150);

  if (s4) {
    strokeWeight(5);
  } else {
    strokeWeight(0);
  }
  fill(0, 0, 10, c4);
  rect(490, 93, 90, 150);


  if (s5) {
    strokeWeight(5);
  } else {
    strokeWeight(0);
  }
  fill(0, 0, 10, c5);
  rect(591, 93, 92, 150);


  stroke(#FF2317);
  if (s6) {
    strokeWeight(5);
  } else {
    strokeWeight(0);
  }
  fill(0, 0, 10, c6);
  rect(188, 289, 90, 150);

  if (s7) {
    strokeWeight(5);
  } else {
    strokeWeight(0);
  }
  fill(0, 0, 10, c7);
  rect(288, 289, 90, 150);

  if (s8) {
    strokeWeight(5);
  } else {
    strokeWeight(0);
  }
  fill(0, 0, 10, c8);
  rect(390, 287, 90, 150);

  if (s9) {
    strokeWeight(5);
  } else {
    strokeWeight(0);
  }
  fill(0, 0, 10, c9);
  rect(491, 288, 90, 150);

  if (s10) {
    strokeWeight(5);
  } else {
    strokeWeight(0);
  }
  fill(0, 0, 10, c10);
  rect(591, 287, 90, 150);
}


void draw () {
  println(turno);
  if (pantalla ==0) {
    p0.P0();
  }

  if (pantalla == 1) {
    p1.P1();
  }

  if (pantalla == 2) {
    p2.P2();
  }

  if (pantalla==3) {
    Spac.stop();
    p3.P3();
  }
}
