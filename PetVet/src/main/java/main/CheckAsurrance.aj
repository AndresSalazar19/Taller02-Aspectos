package main;
import java.util.Scanner;

public aspect CheckAsurrance {
	 pointcut verifyAssurance() : execution(void PetStore.makeAppointment(..));
	 
	 before() : verifyAssurance() {
	        Scanner sc = new Scanner(System.in);
	        System.out.println("Bienvenido! Estamos listos para agendar su cita. Ecriba el nombre de tu mascota");
	        String petName= sc.nextLine();
	}
	 
	after(): verifyAssurance() {
		System.out.println("La cita fue agendada exitosament. Gracias por escoger nuestra tienda de mascotas.");
		
	}
}
