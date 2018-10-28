class Pantallas {

  void P0() {
    imageMode(CORNER);
    image(FIn, 0, 0);
    if (keyCode==ENTER) {
      pantalla =1;
    } else {
      key =0;
    }
  }
  void P1() {
    imageMode(CORNER);
    image(Fsel, 0, 0);


    Cnegro();

    aro.display(390, 300, 0.6, 0.6);
    pacman.display(590, 320, 0.55, 0.55);
    fuerte.display(895, 338, 0.5, 0.5);
    mago.display(1058, 378, 0.5, 0.5);
    domo.display(1275, 395, 0.5, 0.5);

    aro.display(390, 620, 0.6, 0.6);
    pacman.display(590, 680, 0.55, 0.55);
    fuerte.display(895, 740, 0.5, 0.5);
    mago.display(1058, 765, 0.5, 0.5);
    domo.display(1275, 790, 0.5, 0.5);


    fill(255);
    textSize(15);
    if (numJA==1) {
      c1=0;
      s1=true;
      text(aro.nombre(), 30, 270);
    } else {
      c1=255;
      s1=false;
    }
    if (numJA==2) {
      c2=0;
      s2=true; 
      text(pacman.nombre(), 30, 270);
    } else {
      c2=255;
      s2=false;
    }
    if (numJA==3) {
      c3=0;
      s3=true;  
      text(fuerte.nombre(), 30, 270);
    } else {
      c3=255;
      s3=false;
    }
    if (numJA==4) {
      c4=0;
      s4=true;
      text(mago.nombre(), 30, 270);
    } else {
      c4=255;
      s4=false;
    }
    if (numJA==5) {
      c5=0;
      s5=true;  
      text(domo.nombre(), 30, 270);
    } else {
      c5=255;
      s5=false;
    }



    if (numJB==1) {
      c6=0;
      s6=true;
      text(aro.nombre(), 30, 370);
    } else {
      c6=255;
      s6=false;
    }

    if (numJB==2) {
      c7=0;
      s7=true;
      text(pacman.nombre(), 30, 370);
    } else {
      c7=255;
      s7=false;
    }

    if (numJB==3) {
      c8=0;
      s8=true;
      text(fuerte.nombre(), 30, 370);
    } else {
      c8=255;
      s8=false;
    }

    if (numJB==4) {
      c9=0;
      s9=true;
      text(mago.nombre(), 30, 370);
    } else {
      c9=255;
      s9=false;
    }

    if (numJB==5) {
      c10=0;
      s10=true;
      text(domo.nombre(), 30, 370);
    } else {
      c10=255;
      s10=false;
    }


    fill(#1dbaff);
    textSize(8);
    text("JUGADOR 1", 30, 250);

    fill(255, 0, 0);
    textSize(8);
    text("JUGADOR 2", 30, 350);
  }
  void P2() {


    imageMode(CORNER);
    image(FBatalla, 0, 0);

    image(cz, 45, 15);
    image(cz, 610, 15);

    textSize(25);
    fill(#1dbaff);
    if (numJA==1) {

      text(aro.nombre(), 100, 40);
      aro.Bvida(0, 1, 1, 0, vida1);
      if (vida1>300) {
        aro.display(220, 180, 1, 1);
      } else {
        aro.golpeado(220, 180, 1, 1);
      }
    }
    if (numJA==2) {

      text(pacman.nombre(), 100, 40);
      pacman.Bvida(0, 1, 1, 0, vida1);
      if (vida1>300) {
        pacman.display(240, 170, 1, 1);
      } else {
        pacman.golpeado(240, 170, 1, 1);
      }
    }
    if (numJA==3) {
      text(fuerte.nombre(), 100, 40);
      fuerte.Bvida(0, 1, 1, 0, vida1);
      if (vida1>300) {
        fuerte.display(220, 180, 1, 1);
      } else {
        fuerte.golpeado(220, 180, 1, 1);
      }
    }
    if (numJA==4) {
      text(mago.nombre(), 100, 40);
      mago.Bvida(0, 1, 1, 0, vida1);
      if (vida1>300) {
        mago.display(200, 180, 1, 1);
      } else {
        mago.golpeado(200, 180, 1, 1);
      }
    }
    if (numJA==5) {
      text(domo.nombre(), 100, 40);
      domo.Bvida(0, 1, 1, 0, vida1);
      if (vida1>300) {
        domo.display(250, 200, 1, 1);
      } else {
        domo.golpeado(250, 200, 1, 1);
      }
    }
    textSize(25);
    fill(255, 0, 0);

    if (numJB==1) {
      text(aro.nombre(), 400, 40);
      aro.Bvida(700, -1, 1, 650, vida2);
      if (vida2>300) {
        aro.display(450, 180, 1, 1);
      } else {
        aro.golpeado(450, 180, 1, 1);
      }
    }
    if (numJB==2) {
      text(pacman.nombre(), 400, 40);
      pacman.Bvida(700, -1, 1, 650, vida2);
      if (vida2>300) {
        pacman.display(-420, 170, -1, 1);
      } else {
        pacman.golpeado(-420, 170, -1, 1);
      }
    }
    if (numJB==3) {
      text(fuerte.nombre(), 400, 40);
      fuerte.Bvida(700, -1, 1, 650, vida2);
      if (vida2>300) {
        fuerte.display(-420, 180, -1, 1);
      } else {
        fuerte.golpeado(-420, 180, -1, 1);
      }
    }
    if (numJB==4) {
      text(mago.nombre(), 400, 40);
      mago.Bvida(700, -1, 1, 650, vida2);
      if (vida2>300) {
        mago.display(-450, 180, -1, 1);
      } else {
        mago.golpeado(-450, 180, -1, 1);
      }
    }
    if (numJB==5) {
      text(domo.nombre(), 400, 40);
      domo.Bvida(700, -1, 1, 650, vida2);
      if (vida2>300) {
        domo.display(-420, 200, -1, 1);
      } else {
        domo.golpeado(-420, 200, -1, 1);
      }
    }




    if (vida1>0 && vida2>0) {

      if (turno==1) {
        fill(255);
        textSize(20);

        text("Tu turno", 15, 100);
      }
      if (turno==2) {

        fill(255);
        textSize(20);

        text("Tu turno", 585, 100);
      }


      if (key=='b' || key=='B') {

        if (turno==1) { 
          if (numJA==1) {
            aro.ataque(dano2, dano3);
          }
          if (numJA==2) {
            pacman.ataque(dano2, dano3);
          }
          if (numJA==3) {
            fuerte.ataque(dano2, dano3);
          }
          if (numJA==4) {
            mago.ataque(dano2, dano3);
          }
          if (numJA==5) {
            domo.ataque(dano2, dano3);
          }
        }
        if (turno==2) {
          if (numJB==1) {
            aro.ataque(dano2, dano3);
          }
          if (numJB==2) {
            pacman.ataque(dano2, dano3);
          }
          if (numJB==3) {
            fuerte.ataque(dano2, dano3);
          }
          if (numJB==4) {
            mago.ataque(dano2, dano3);
          }
          if (numJB==5) {
            domo.ataque(dano2, dano3);
          }
        }
      }
      if (key=='n'|| key=='N') {
        if (turno==1) { 
          if (numJA==1) {
            aro.combo(dano1);
          }
          if (numJA==2) {
            pacman.combo(dano1);
          }
          if (numJA==3) {
            fuerte.combo(dano1);
          }
          if (numJA==4) {
            mago.combo(dano1);
          }
          if (numJA==5) {
            domo.combo(dano1);
          }
        }
        if (turno==2) { 
          if (numJB==1) {
            aro.combo(dano1);
          }
          if (numJB==2) {
            pacman.combo(dano1);
          }
          if (numJB==3) {
            fuerte.combo(dano1);
          }
          if (numJB==4) {
            mago.combo(dano1);
          }
          if (numJB==5) {
            domo.combo(dano1);
          }
        }
      }
      if (key=='v'||key=='v') {
        if (turno==1) {
          if (numJA==1) {
            aro.vidaE(po);
          }
          if (numJA==2) {
            pacman.vidaE(po);
          }
          if (numJA==3) {
            fuerte.vidaE(po);
          }
          if (numJA==4) {
            mago.vidaE(po);
          }
          if (numJA==5) {
            domo.vidaE(po);
          }
        } 
        if (turno==2) {
          if (numJB==1) {
            aro.vidaE(po);
          }
          if (numJB==2) {
            pacman.vidaE(po);
          }
          if (numJB==3) {
            fuerte.vidaE(po);
          }
          if (numJB==4) {
            mago.vidaE(po);
          }
          if (numJB==5) {
            domo.vidaE(po);
          }
        }
      }
    }

    if (vida1<=0) {
      vida1=0;
      pantalla=3;
    }
    if (vida2<=0) {
      vida2=0;
      pantalla=3;
    }
    imageMode(CORNER);
    image(cuerdas, 0, 0);
    if (v) {
      imageMode(CENTER);
      image(vidaE, 340, 150);
    }
  }

  void P3() {
    background(255);

    if (vida1<=0) {
      l++;
      if (numJB==1) {
        imageMode(CORNER);
        image(War, 0, 0);
        aro.display(350, 280, 1, 1);
        textSize(30); 
        fill(255);
        text("2 ", 120, 400);
        if (l==1) {
          Saro.loop();
        }
      }


      if (numJB==2) {

        imageMode(CORNER);
        image(Wpac, 0, 0);
        pacman.display(340, 260, 1, 1);
        textSize(50); 
        fill(255);
        text("2 ", 180, 320);
        if (l==1) {
          Spcc.loop();
        }
      }

      if (numJB==3) {
        imageMode(CORNER);
        image(Wko, 0, 0);
        fuerte.display(-340, 110, -1, 1);
        textSize(50); 
        fill(255);
        text("2 ", 620, 60);
        if (l==1) {
          Sfue.loop();
        }
      }
      if (numJB==4) {
        imageMode(CORNER);
        image(Wmag, 0, 0);
        mago.display(-300, 340, -1, 1);
        textSize(50); 
        fill(255);
        text("2 ", 130, 465);
        if (l==1) {
          Smag.loop();
        }
      }
      if (numJB==5) {
        imageMode(CORNER);
        image(Wdom, 0, 0);
        domo.display(-420, 200, -1, 1);
        textSize(50); 
        fill(#64490D);
        text("2 ", 235, 340);
        if (l==1) {
          Sdom.loop();
        }
      }
    }
    if (vida2<=0) {

      l++;

      if (numJA==1) {
        imageMode(CORNER);
        image(War, 0, 0);
        aro.display(350, 280, 1, 1);
        textSize(30); 
        fill(255);
        text("1", 120, 400);
        if (l==1) {
          Saro.loop();
        }
      }

      if (numJA==2) {
        imageMode(CORNER);
        image(Wpac, 0, 0);
        pacman.display(340, 260, 1, 1);
        textSize(50); 
        fill(255);
        text("1 ", 180, 320);
        if (l==1) {
          Spcc.loop();
        }
      }

      if (numJA==3) {
        imageMode(CORNER);
        image(Wko, 0, 0);
        fuerte.display(-340, 110, -1, 1);
        textSize(50); 
        fill(255);
        text("1 ", 620, 60);
        if (l==1) {
          Sfue.loop();
        }
      }

      if (numJA==4) {
        imageMode(CORNER);
        image(Wmag, 0, 0);
        mago.display(-300, 340, -1, 1);
        textSize(50); 
        fill(255);
        text("1 ", 130, 465);
        if (l==1) {
          Smag.loop();
        }
      }

      if (numJA==5) {
        imageMode(CORNER);
        image(Wdom, 0, 0);
        domo.display(-420, 200, -1, 1);
        textSize(50); 
        fill(#64490D);
        text("1 ", 235, 340);
        if (l==1) {
          Sdom.loop();
        }
      }
    }
  }
}
