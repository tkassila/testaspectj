package fi.test;

class Test {
	public static void main(String [] args)
	{
		Test test = new Test();
		if (test.checkargs(args))
			test.execute();
	}
	
	private boolean checkargs(String [] args)
	{
		System.out.println("Check params.");
		return true;
	}
	
	private void execute()
	{
		System.out.println("execute....");
		return ;
	}
}