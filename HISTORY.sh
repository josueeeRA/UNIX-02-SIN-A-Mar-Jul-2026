   1  git fetch update
    2  git fetch upstream
    3  git checkout -b eval_p2_1_g2 upstream/eval_p2_1_g2 
    4  git push -u origin eval_p2_1_g2 
    5  history
    6  ls
    7  cd evaluation/
    8  ls
    9  cd kepler/
   10  ls -a
   11  mv docs registros
   12  ls 
   13  cd registros/
   14  ls
   15  cd ..
   16  ls
   17  mkdir plantillas
   18  ls
   19  git add .
   20  git commit -m "Fix problema 1: estructura de directorios corregida"
   21  ls
   22  git push 
   23  history
   24  ls 
   25  mv sensores.log registros/
   26  ls
   27  ls registros/
   28  cd plantillas/
   29  ls
   30  ls -a
   31  cd ..
   32  ls registros/
   33  ls
   34  touch ajustes.old
   35  ls
   36  mv ajustes.old ajustes.conf
   37  ls
   38  git add .
   39  git commit -m "Fix problema 2: archivos movidos y renombrados"
   40  git push 
   41  history 
   42  s 
   43  ls
   44  cd registros/
   45  ls -l
   46  ls 
   47  chmod 600 sensores.log 
   48  ls
   49  ls -l
   50  chmod 640 sensores.log 
   51  ls -l
   52  git .
   53  git add .
   54  git commit -m "Fix problema 3: permisos numericos 600 en sensores.log"
   55  ls 
   56  ls -l
   57  git add .
   58  git commit -m "Fix problema 3: permisos numericos 600 en sensores.log"
   59  git add ../../../HISTORY.sh
   60  git commit -m "Fix problema 3: permisos numericos 600 en sensores.log"
   61  git push
   62  cd ..
   63  ls
   64  ls -l
   65  chmod u+x runner.sh
   66  ls -l
   67  chmod o-w ajustes.conf 
   68  ls -l
   69  git add .
   70  git commit -m "Fix problema 4: permisos simbolicos corregidos"
   71  git push
   72  ls -l
   73  chmod u+s runner.sh
   74  ls -l
   75  git add .
   76  git commit -m "Fix problema 5: SUID activado en runner.sh"
   77  git add ../../../HISTORY.sh
   78  git add .
   79  git commit -m "Fix problema 5: SUID activado en runner.sh"
   80  ls -l
   81  git add runner.sh
   82  git commit -m "Fix problema 5: SUID activado en runner.sh"
   83  history