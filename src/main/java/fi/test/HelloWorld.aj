//import testgroovyaspect.TestGroovyAspectj;
//import fi.test.koe;

public aspect HelloWorld
{
	pointcut greeting() : call(* *.execute(..));
	after() returning() : greeting() { System.out.println(" World"); }
	
	/*
	pointcut greeting2() : within(fi.test.Test) && execution(void *.execute(..));
	?* after() : *? void around() : greeting2() { proceed();
		System.out.println("--World2"); 
	}

	pointcut greeting3() : within(fi.test.Test) && execution(* *.execute(..));
	before() : greeting3() { System.out.println("--World3"); }
	*/
	
}
