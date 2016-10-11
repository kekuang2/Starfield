Particle[] particles;
void setup()
{
	size(500,500);
	background(0,67,112);
	noStroke();
	particles = new Particle[4000];
	for(int i = 0; i < particles.length; i++)
	{
	particles[i] = new NormalParticle();
	}
		particles[particles.length - 1] = new OddballParticle();
		particles[particles.length - 2] = new OddballParticle();
		particles[particles.length - 3] = new OddballParticle();
		particles[particles.length - 4] = new JumboParticle();
		particles[particles.length - 5] = new JumboParticle();
		particles[particles.length - 6] = new JumboParticle();
}
void draw()
{
	background(0,67,112);
	for(int j = 0; j < particles.length; j++)
	{
		particles[j].show();
		particles[j].move();
	}
}
interface Particle
{
	public void move();
	public void show();
}
class NormalParticle implements Particle
{
	double pSpeed, pDirection;
	double myX, myY;
	int c;
	NormalParticle()
	{
		c = color((int)(Math.random()*256),(int)(Math.random()*31) + 225,255);
		myX = 250;
		myY = 250;
		pSpeed = (Math.random()*50);
		pDirection = (int)(Math.random()*20);
	}
	public void move()
	{
		myX += Math.cos(pDirection) * pSpeed;
		myY += Math.sin(pDirection) * pSpeed;
		pDirection += .02;
	}
	public void show()
	{
		fill(c);
		ellipse((float)myX, (float)myY,5,5);
	}
}
class OddballParticle implements Particle //uses an interface
{	
	double pSpeed, pDirection;
	double myX, myY;
	int c;
	OddballParticle()
	{
		c = color(0,255,221);
		myX = (int)(Math.random()*300) + 100;
		myY = (int)(Math.random()*300) + 100;
		pSpeed = (Math.random()*10) + 1;
		pDirection = (Math.random()*2)*Math.PI;
	}


	public void move()
	{
		myX += Math.cos(pDirection) * pSpeed;
		myY += Math.sin(pDirection) * pSpeed;
		pDirection += .05;
	}
	public void show()
	{
		fill(c);
		ellipse((float)myX,(float)myY, 30,40);
	}
}
class JumboParticle implements Particle //uses inheritance
{
	double pSpeed, pDirection;
	double myX, myY;
	int c;
	JumboParticle()
	{
		c = color((int)(Math.random()*256),(int)(Math.random()*31) + 225,255);
		myX = (int)(Math.random()*100) + 200;
		myY = (int)(Math.random()*100) + 200;
		pSpeed = (int)(Math.random()*50);
		pDirection = (int)(Math.random()*20);
	}
	public void move()
	{
		myX += Math.cos(pDirection) * pSpeed;
		myY += Math.sin(pDirection) * pSpeed;
		pDirection += .02;
	}
	public void show()
	{
		fill(c);
		ellipse((float)myX, (float)myY, 50,50);
	}
}