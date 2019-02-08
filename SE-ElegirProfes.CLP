;;================================================================
;;      SISTEMA EXPERTO PARA DECIDIR CON QUE PROFE LLEVAR IA 
;;En el siguiente sistema experto se realizará simular la elección para llevar el curso de 
;;IA con alguno de los 3 profes disponibles, en base a ciertas caracteristicas del alumno

;;Definimos el template
(deftemplate situacion-alumno
		(slot nivelProfe)
		(slot nivelProgra)
		(slot horarioDisp)
		(multislot maxFaltas))

;;Definimos las reglas para el profesor1
(defrule profesor1-0
	(situacion-alumno
		(nivelProfe facil)
		(nivelProgra basico)
		(horarioDisp manana)
		(maxFaltas < 5 ))
	=> (printout t crlf "Con el profesor1 -> Vas a aprobar fácilmente !! " crlf crlf))

(defrule profesor1-1
	(situacion-alumno
		(nivelProfe facil)
		(nivelProgra basico)
		(horarioDisp manana)
		(maxFaltas > 5 ))
	=> (printout t crlf "Con el profesor1 -> Vas a aprobar fácilmente , solo con parciales!! " crlf crlf))

(defrule profesor1-2
	(situacion-alumno
		(nivelProfe facil)
		(nivelProgra intermedio)
		(horarioDisp manana)
		(maxFaltas < 5 ))
	=> (printout t crlf "Con el profesor1 -> Vas a aprobar fácilmente !! " crlf crlf))

(defrule profesor1-3
	(situacion-alumno
		(nivelProfe facil)
		(nivelProgra intermedio)
		(horarioDisp manana)
		(maxFaltas > 5 ))
	=> (printout t crlf "Con el profesor1 -> Vas a aprobar fácilmente, solo con parciales!! " crlf crlf))

(defrule profesor1-4
	(situacion-alumno
		(nivelProfe facil)
		(nivelProgra avanzado)
		(horarioDisp manana)
		(maxFaltas < 5 ))
	=> (printout t crlf "Con el profesor1 -> Vas a aprobar fácilmente !! " crlf crlf))

(defrule profesor1-5
	(situacion-alumno
		(nivelProfe facil)
		(nivelProgra avanzado)
		(horarioDisp manana)
		(maxFaltas > 5 ))
	=> (printout t crlf "Con el profesor1 -> Vas a aprobar fácilmente, solo con parciales!! " crlf crlf))








;;Definimos las reglas para el profesor2
(defrule profesor2-0
	(situacion-alumno
		(nivelProfe pasable)
		(nivelProgra intermedio)
		(horarioDisp tarde)
		(maxFaltas < 5 ))
	=> (printout t crlf "Con el profesor2 -> Pasas aprobando los parciales !! " crlf crlf))

(defrule profesor2-1
	(situacion-alumno
		(nivelProfe pasable)
		(nivelProgra intermedio)
		(horarioDisp tarde)
		(maxFaltas > 5 ))
	=> (printout t crlf "Con el profesor2 -> Te va a costar aprobar!! " crlf crlf))

(defrule profesor2-2
	(situacion-alumno
		(nivelProfe pasable)
		(nivelProgra avanzado)
		(horarioDisp tarde)
		(maxFaltas < 5 ))
	=> (printout t crlf "Con el profesor2 -> Pasas aprobando los parciales!! " crlf crlf))

(defrule profesor2-3
	(situacion-alumno
		(nivelProfe pasable)
		(nivelProgra avanzado)
		(horarioDisp tarde)
		(maxFaltas > 5 ))
	=> (printout t crlf "Con el profesor2 -> Te va a costar aprobar!! " crlf crlf))

(defrule profesor2-4
	(situacion-alumno
		(nivelProfe pasable)
		(nivelProgra intermedio)
		(horarioDisp noche)
		(maxFaltas < 5 ))
	=> (printout t crlf "Con el profesor2 -> Pasas aprobando los parciales !! " crlf crlf))

(defrule profesor2-5
	(situacion-alumno
		(nivelProfe pasable)
		(nivelProgra intermedio)
		(horarioDisp noche)
		(maxFaltas > 5 ))
	=> (printout t crlf "Con el profesor2 -> Te va a costar aprobar!! " crlf crlf))

(defrule profesor2-6
	(situacion-alumno
		(nivelProfe pasable)
		(nivelProgra avanzado)
		(horarioDisp noche)
		(maxFaltas < 5 ))
	=> (printout t crlf "Con el profesor2 -> Pasas aprobando los parciales!! " crlf crlf))

(defrule profesor2-7
	(situacion-alumno
		(nivelProfe pasable)
		(nivelProgra avanzado)
		(horarioDisp noche)
		(maxFaltas > 5 ))
	=> (printout t crlf "Con el profesor2 -> Te va a costar aprobar!! " crlf crlf))







;;Definimos las reglas para el profesor3
(defrule profesor3-0
	(situacion-alumno
		(nivelProfe dificil)
		(nivelProgra avanzado)
		(horarioDisp manana)
		(maxFaltas < 5 ))
	=> (printout t crlf "Con el profesor3 -> Te va a costar aprobar !! " crlf crlf))

(defrule profesor3-1
	(situacion-alumno
		(nivelProfe dificil)
		(nivelProgra avanzado)
		(horarioDisp manana)
		(maxFaltas > 5 ))
	=> (printout t crlf "Con el profesor3 -> Fijo desapruebas :( " crlf crlf))

(defrule profesor3-2
	(situacion-alumno
		(nivelProfe dificil)
		(nivelProgra avanzado)
		(horarioDisp noche)
		(maxFaltas < 5 ))
	=> (printout t crlf "Con el profesor3 -> Te va a costar aprobar !! " crlf crlf))

(defrule profesor3-3
	(situacion-alumno
		(nivelProfe dificil)
		(nivelProgra avanzado)
		(horarioDisp noche)
		(maxFaltas > 5 ))
	=> (printout t crlf "Con el profesor3 -> Fijo desapruebas :( " crlf crlf))






(defrule profesor3-4
	(situacion-alumno
		(nivelProfe dificil)
		(nivelProgra intermedio)
		(horarioDisp manana)
		(maxFaltas < 5 ))
	=> (printout t crlf "Con el profesor3 -> Te va a costar aprobar y con mucho esfuerzo!! " crlf crlf))

(defrule profesor3-5
	(situacion-alumno
		(nivelProfe dificil)
		(nivelProgra intermedio)
		(horarioDisp manana)
		(maxFaltas > 5 ))
	=> (printout t crlf "Con el profesor3 -> Fijo desapruebas :( " crlf crlf))

(defrule profesor3-6
	(situacion-alumno
		(nivelProfe dificil)
		(nivelProgra intermedio)
		(horarioDisp noche)
		(maxFaltas < 5 ))
	=> (printout t crlf "Con el profesor3 -> Te va a costar aprobar y con mucho esfuerzo (mejor que sea en la tarde) !! " crlf crlf))

(defrule profesor3-7
	(situacion-alumno
		(nivelProfe dificil)
		(nivelProgra intermedio)
		(horarioDisp noche)
		(maxFaltas > 5 ))
	=> (printout t crlf "Con el profesor3 -> Fijo desapruebas :( " crlf crlf))


(defrule profesor3-8
	(situacion-alumno
		(nivelProfe dificil)
		(nivelProgra basico)
		(horarioDisp tarde)
		(maxFaltas > 5 ))
	=> (printout t crlf "Con el profesor3 -> Fijo desapruebas :( " crlf crlf))


(defrule profesor3-9
	(situacion-alumno
		(nivelProfe dificil)
		(nivelProgra basico)
		(horarioDisp noche)
		(maxFaltas > 5 ))
	=> (printout t crlf "Con el profesor3 -> Fijo desapruebas :( " crlf crlf))

(defrule profesor3-10
	(situacion-alumno
		(nivelProfe dificil)
		(nivelProgra basico)
		(horarioDisp tarde)
		(maxFaltas < 5 ))
	=> (printout t crlf "Con el profesor3 -> Si te esfuerzas mucho , podrías aprobar, sube tu nivel de progra :)  " crlf crlf))


(defrule profesor3-11
	(situacion-alumno
		(nivelProfe dificil)
		(nivelProgra basico)
		(horarioDisp noche)
		(maxFaltas < 5 ))
	=> (printout t crlf "Con el profesor3 -> Si te esfuerzas mucho , podrías aprobar, sube tu nivel de progra :) " crlf crlf))





;;Definimos la regla para que el alumno ingrese las caracteristicas que tiene para llevar el curso:
(defrule input
	(initial-facts)
	=> 	(printout t crlf "De qué nivel quieres que sea el profe ?? " crlf crlf)
		(assert (nivelProfe = (read)))
		(printout t crlf "Cuál es tu nivel de programación ?? " crlf crlf)
		(assert (nivelProgra = (read)))
		(printout t crlf "Qué horario tienes disponible ??" crlf crlf)
		(assert (horarioDisp = (read)))
		(printout t crlf "Cuántas veces piensas faltar ?? (>5) o (<5)" crlf crlf)
		(assert (maxFaltas = (read)))
)
