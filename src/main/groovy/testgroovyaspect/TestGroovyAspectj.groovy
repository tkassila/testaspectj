package testgroovyaspect

class TestGroovyAspectj
{
	public void hello(String arg)
	{
		println("Hello groovy " +arg)
	}
		
    public static void main(String[] args) {
        new TestGroovyAspectj().hello(args[0])
    }
}
