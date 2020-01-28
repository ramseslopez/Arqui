#include <stdio.h>
#include <math.h>
#include <stdlib.h>

/**
  Metodo que se encarga de obtenener la media aritmetica de un arreglo de datos
  @param datos arreglo de datos
  @param numero de elementos del arreglo
  @return la media artimetica
*/
float  media_aritmetica(float datos[], int n){
  float suma = 0.0;
  for (int i = 0; i < n; i++) {
    suma += datos[i];
  }
  return suma/n;
}

/**
  Metodo que se encarga de obtenener la media armonica de un arreglo de datos
  @param datos arreglo de datos
  @param numero de elementos del arreglo
  @return la media armonica
*/
float media_armonica(float datos[], int n){
  float suma = 0.0;
  for (int i = 0; i < n; i++) {
    suma += (1/datos[i]);
  }
  return n/suma;
}

/**
  Metodo que se encarga de obtnener la media geometrica de un arreglo de datos
  @param datos arreglo de datos
  @param numero de elementos del arreglo
  @return la media geometrica
*/
float media_geometrica(float datos[], int n){
  float producto = 1.0;
  for (int i = 0; i < n; i++) {
    producto *= datos[i];
  }
  return pow(producto,((1.0)/n));
}

/**
  Metodo main que se encarga de ejecutar las medias a traves de
  la linea de comandos
  @param argc numero de argumentos
  @param argv[] arreglo de apuntadores
*/
int main(int argc, char const *argv[]) {
  char a = *argv[1];
  int tamanio = argc;
  if (argc < 2) {
    printf("Necesitas mas argumentos\n");
  } else {
    if (a == 'A') {
      float v[tamanio-2];
      for (int i = 2; i < argc; i++) {
        v[i-2] = atoll(argv[i]);
      }
      float y = 0.0;
      y = media_aritmetica(v, argc-2);
      printf("%f\n", y);
    }else if(a == 'H'){
      float r[tamanio-2];
      for (int i = 2; i < argc; i++) {
        r[i-2] = atoll(argv[i]);
      }
      float x = 0.0;
      x = media_armonica(r,argc-2);
      printf("%f\n", x);
    } else if (a == 'G') {
      float t[tamanio-2];
      for (int i = 2; i < argc; i++) {
        t[i-2] = atoll(argv[i]);
      }
      float z = 0.0;
      z = media_geometrica(t, argc-2);
      printf("%f\n", z);
    }
  }
  return 0;
}
