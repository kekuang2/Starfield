NormalParticle[] nparticles;
OddballParticle[] oparticles;
void setup()
{
	size(400,400);
	background(0,67,112);
	nparticles = new NormalParticle[100];
	for(int i = 0; i < nparticles.length; i++)
	{
	nparticles[i] = new NormalParticle();
	nparticles[i].show();
	}
	oparticles = new OddballParticle[5];
	for(int j = 0; j < oparticles.length; j++)
	{
		oparticles[j] = new OddballParticle();
		oparticles[j].show();
	}
}
void draw()
{
	for(int i = 0; i < nparticles.length; i++)
	{
		nparticles[i].move();
	}
}
interface Particle
{
	public void move();
	public void show();
}
class NormalParticle implements Particle
{
	public void move()
	{
		double pSpeed, pDirection;
		pSpeed = 0 + (Math.random()*10) + 5;
		pDirection = 0 + Math.sin(Math.random()*3.5) * pSpeed;
	}
	public void show()
	{
		int myX, myY;
		myX = (int)(Math.random()*100)+ 150;
		myY = (int)(Math.random()*100)+ 150;
		fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		ellipse(myX, myY, 15,15);
	}
}
class OddballParticle implements Particle //uses an interface
{
	public void move()
	{
		int myX, myY;
		myX = 0 + 5;
		myY = 0 + 5;
	}
	public void show()
	{
		int myX, myY;
		myX = (int)(Math.random()*100)+ 150;
		myY = (int)(Math.random()*100)+ 150;
		fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
		ellipse(myX, myY, 30,40);
	}
}
// class JumboParticle extends Particle //uses inheritance
// {
	
// }