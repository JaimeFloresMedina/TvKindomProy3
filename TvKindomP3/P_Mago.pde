class Mago implements Personaje {

  String nombre="Julius Dein";
  int movAtaq;

  void display ( int xt, int yt, float esc, float esc1) {
    pushMatrix();
    scale(esc, esc1);
    translate(xt, yt);
    imageMode(CENTER);
    image(Imag, 0, 0);
    popMatrix();
  }
  void golpeado( int xt, int yt, float esc, float esc1) {
    pushMatrix();
    scale(esc, esc1);
    translate(xt, yt);
    imageMode(CENTER);
    image(Gmag, 0, 0);
    popMatrix();
  }
  void ataque(int danno2, int danno3) {
    switch (turno) {
    case 1:
      camx = camx+5;

      imageMode(CENTER);
      image(Bma, camx+200, 200);

      if (camx==200) {
        gol();
        image(Gp, 500, 200);
        vida2=vida2-danno2;
        camx=0;
        dano2 = 0;
        turno=2;
        key = 0;
      }
      break;
    case 2:
      camx = camx+5;

      imageMode(CENTER);
      image(Bma, 450-camx, 200);


      if (camx==200) {
        gol();
        key = 0;
        image(Gp, 200, 200);

        vida1=vida1-danno3;
        camx=0;
        dano3=0;
        turno=1;
      }
      break;
    }
  }
  void combo(int danno1) {
     switch (turno) {
    case 1:

      movAtaq=movAtaq+5;

      noStroke();
      //Comentario al maestro:la animacion que se ejecuta al realizar un ataque esta basada en un juego anteriormente creado.  
      imageMode(CENTER);
      image(Cb, movAtaq+200, 200);

      fallo.fallo(20, 180);

      if (movAtaq==200) { 

        if (ret==0) {
          pdo.play();
          key=0;
          movAtaq=0; 
          ret=-4;
          turno=2;
        }
        if (ret>0) {
          bj.play();
          image(Gp, 440, 200);
          key=0;
          vida2=vida2-danno1; 
          movAtaq=0;  
          ret=-4;
          turno=2;
        }
      }
      break;

    case 2:

      movAtaq=movAtaq+5;


      pushMatrix();
      image(Cb, 470-movAtaq, 200);
      popMatrix();
      fallo.fallo(600, 180);

      if (movAtaq==200) {

        if (ret==0) {
          pdo.play();
          key=0;
          movAtaq=0;
          turno=1;
        }
        if (ret>0) {
          image(Gp, 200, 200);
          bj.play();
          key=0;
          vida1=vida1-danno1;
          movAtaq=0;
          turno=1;
        }
      }

      break;
    }
  }
    void vidaE(int po) {

    if (turno==1) {
      if (vida1<200) {
        movVida= movVida+5;
        if (po==0) {
          fill(255);

          text("no extra", 90, 170);
        }
        if (po>0) {
          imageMode(CENTER);
          image(Vmag, 130, 150);
        }

        if ( movVida==270) {
          key=0;
          if (po==0) {
            turno=2;
            movVida=0;
          }
          if (po>0) {

            vida1=vida1+extra;
            movVida=0;
            turno=2;
          }
        }
      } else {

        imageMode(CENTER);
        image(vidaE, 350, 140);
      }
    }
    if (turno==2) {
      if (vida2<200) {
        movVida= movVida+5;
        if (po==0) {
          fill(255);
          text("no extra", 540, 170);
        }
        if (po>0) {
          imageMode(CENTER);
          image(Vmag, 555, 150);
        }

        if ( movVida==270) {
          key=0;
          if (po==0) {
            turno=1;
            movVida=0;
          }
          if (po>0) {

            vida2=vida2+extra;
            movVida=0;
            turno=1;
          }
        }
      } else {

        imageMode(CENTER);
        image(vidaE, 350, 140);
      }
    }
  }
  
  String nombre() {
    return nombre;
  }

  void Bvida(float x, float esc, float esc1, float x1, int vidan) {
    pushMatrix();
    translate(x, 0);
    scale(esc, esc1);
    noStroke();
    fill(#DEDEDE);
    rect(300, 0, -300, 15, 10, 10, 10, 10);
    fill(#DE0206);
    rect(300, 0, -vidan/3, 15, 10, 10, 10, 10);

    popMatrix();
    fill(255);
    textSize(20);
    text(vidan, 5+x1, 40);
  }
}
