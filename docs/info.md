<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Esta idea implementa el uso de 3 entradas y 4 salidas: dos sensores de nivel y uno de proximidad; un servomotor, tres focos LED, uno verde y otro rojo, y una alarma con un LED amarillo para que en caso de que falle algo dentro del circuito, esta pueda avisarnos.
En la parte de abajo irá un sensor de nivel, el cual hemos determinado como 𝐿𝐿 (Level low), en la parte de arriba irá el otro sensor de nivel, 𝐿𝐻 (Level high); enfrente irá el sensor de proximidad (𝑆𝑃), a un lado irá el foco rojo (𝐹𝐴) y el foco verde (𝐹𝑉); y por último tendrá el servomotor (M), la alarma con su foco amarilo (A). 

![Captura de pantalla 2025-03-05 130633](https://github.com/user-attachments/assets/ffe087a9-b779-4d55-bb27-237b9d8d765c)

A través del Mapa de Karnaugh simplificamos la tabla para poder ver cómo podría quedar el circuito elaborado con compuertas lógicas, sacamos la expresión mínimo con agrupación de 1´s

![Captura de pantalla 2025-03-05 131651](https://github.com/user-attachments/assets/7cac4298-4d4d-4198-8573-fb124784bbdc)
![Captura de pantalla 2025-03-05 131800](https://github.com/user-attachments/assets/c6476f80-a27d-4668-acaf-ac3813a528de)

Posteriormente a esto, evaluamos cuál es la mejor forma de crear el circuito: de forma análoga (compuertas lógicas) o de forma digital (programado); decidimos hacerlo mediante la programación de arduino UNO, con lenguaje C++ .

Para iniciar con la programación se le asignaron nombres a cada uno de los componentes, luego se les asignó su función y al último se ejecutan los componentes agregándole una librería .h

## How to test

Cuando una persona se acerque a menos de 15 cm, "Su" activara a M para que este se abra y cuando "Su" ya no detecte al objeto después de 10 segundos se cerrará, por otra parte si no se detecta nada a esa distancia (menor a 15 cm) la tapa del bote se mantendrá cerrada. "Lh" y "Ll" se activará cuando la basura haya llegado a su nivel máximo, "Ll" se activará cuando no haya basura, "A" se activará cuando "Lh" se active pero "Ll" no, y con la activación de cada uno de estos se encenderá su LED correspondiente.

![Captura de pantalla 2025-03-05 130815](https://github.com/user-attachments/assets/3bf3b242-beaf-4377-adf0-00b6cdc6f790)

A través de esto, determinamos los códigos que debe contener nuestra programación. En Wokwi hicimos la simulación de nuestro circuito, y la programación, a lo largo de este proceso se nos presentaron dificultades, pues la aplicación no nos dejaba correr la simulación, posteriormente, nos dimos cuenta de que era un error en las librerías de Arduino, para solucionarlo buscamos y agregamos las librerías que necesitábamos hasta que nos dejó correr la simulación, esto permitió que continuáramos con el proceso e hiciéramos las modificaciones necesarias en el código para un funcionamiento óptimo del circuito, es decir, funcionara como lo planteamos desde el inicio de nuestro diseño. Para la representación y visualización de la programación, hicimos diagramas de flujo.

![Captura de pantalla 2025-03-05 132436](https://github.com/user-attachments/assets/59d38d1b-13f6-444f-9f08-0364c815bcb6)
![Captura de pantalla 2025-03-05 132604](https://github.com/user-attachments/assets/351da84c-2718-4582-b35c-168b34495ded)
![Captura de pantalla 2025-03-05 132649](https://github.com/user-attachments/assets/23c7e44b-d364-4b96-aaa6-b22343b94e03)
![Captura de pantalla 2025-03-05 132723](https://github.com/user-attachments/assets/ef8ac3f3-219d-413d-a789-4b8134d374ba)

## External hardware 

3 diodos LED, Servomotor, 3 sensores ultrasónicos HC-SR04, 3 resistencias de 220 ohms, Arduino UNO
