int g(int x)
{
	return x + 1;
}

int f(int x)
{
	return g(x);
}

int main(void)
{
	return f(8) + 1;
}
