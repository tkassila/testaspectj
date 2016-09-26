//import testgroovyaspect.TestGroovyAspectj;
//import fi.test.koe;

/*
This is a test aspect for Groovy clases:
- if your aspect class does not work, try next kind things:
-- change defined word call or execution, or defining pointcut classes on diff. way
-- around call is especially sencible how a pointcut is writen: use this kind of around below!
*/
public aspect GHelloWorld
{
    // @Around("execution(* sampleGroovy.*(..))")
	pointcut greeting() : execution(public * *.hello(..));
	after() returning() : within(testgroovyaspect.TestGroovyAspectj) && greeting() { System.out.println("after returning Groovy hello"); }

	pointcut greeting2(String param) : execution(* *.hello(..))  && args(param);
	void around(String param) : within(testgroovyaspect.TestGroovyAspectj) && greeting2(param) { 
		System.out.println("--GW around: " +param);
		proceed(param);
	}

	pointcut greeting3() : within(testgroovyaspect.*) && execution(* *.hello(..));
	before() :greeting3() { System.out.println("before: Groovy hello"); 
	}
	
}
