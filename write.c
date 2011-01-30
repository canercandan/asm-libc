int toto()
{
  char	toto[] = "Coucou Ca Va ?";
  char	test[20];
  char	dest[7];

  printf("sa marche ? toto fait %d char\n", my_strlen("toto"));
  my_memcpy(dest, toto, 14);
  dest[14] = 0;
  printf("dest = [%s]\n", dest);
  printf("strchr = [%s]\n", my_strchr(toto, 'a'));
  printf("strcmp toto, dest = %d\n", my_strcmp(toto + 1, dest));
  dest[3] = 'a';
  printf("strncmp toto, dest = %d\n", my_strncmp(toto, dest, 3));
  my_bzero(toto, 5);
  printf("bzero = [%s]\n", toto + 5);
  printf("strcasecmp = %d\n", strcasecmp("SALUT", "123456"));
  my_write(1, "test\n", 5);
  printf("rindex my toto with the char 'a' : [%s]\n",
  	 my_rindex("caca coco coucou", 'i'));
  test[14] = 0;
  printf("apres le memset = [%s]\n", my_memset(test, 'A', 14));
  strcpy(dest, "Coucou");
  printf("memmove result = [%s]\n", memmove(dest, dest + 1, 20));
  printf("dest = [%s]\n", dest);
}

int main()
{
  toto();
  return (0);
}
