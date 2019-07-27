!//##################################################
!//----------------bibliotecas-----------------------
!//##################################################

!#include"stdio.h" 	//Padão
!#include"math.h" 	//Matematica
!#include"string.h"	//String
!#include"ctype.h"	//Manipulação de string e char
!#include"stdlib.h"	//Malloc
!#include"time.h"	//

!//##################################################
!//-----------------tipos de variaveis---------------
!//##################################################

 character         "a"              character ::
 character(LEN=N)  "Hello World !"  character(LEN=10) ::
logical           .true.,.false.    logical :: a
integer           0,-1              integer :: b
integer*4         1234567890        
integer(kind=)                      
real              0.,-1.0,.577      
real*4            6.67E-11          
double precision  0D0,-1.D          
real*8            5.772176D-1       
complex           (.707,-.707)      
complex           (7.07D-1,-.707D0) 

!//##################################################
!//-------------Operadores---------------------------
!//##################################################

==  igual
/=  diferente
<   menor que
>   maior que
<=  menor ou igual a
>=  maior ou igual a

!//##################################################
!//-------------Conversor de Variaveis---------------
!//##################################################

int     convert to integer (near to 0)
nint    convert to integer (near int)
floor   convert to integer (near low int)
ceiling convert to integer (near top int)
real    convert to real 
dble    convert to double precision
cmplx   convert to complex

!//##################################################
!//-----------------arquivo-----------------
!//##################################################

!#include"stdio.h"

!main()
!{
!	int a,b,t;
!	b=2;
!	FILE *fp=fopen("arquivo.dat", "w");
!	for(t=0;t<=10;++t)
!		{
!		a=b*t;
!		printf("%d\n",a);
!		fprintf(fp,"%d\n",a);
!		}
!}

!//##################################################
!//-----------------vetor----------------------------
!//##################################################

!//cria um vetor que começa em 0

!#include"stdio.h"

!main ()
!{
!	int i,vet[10];
!	for(i=0;i<10;++i)
!		{
!		vet[i]=1;
!		printf("%d\n",vet[i]);
!		}
!}

!//##################################################
!//-----------------matrix---------------------------
!//##################################################

!//cria uma matrix que começa em 0,0

!#include"stdio.h"

!main()
!{
!	for (j=0; j<L; ++j)
!		{
!		for (i=0; i<L; ++i)
!			{
!			A[i][j]=1;
!			}
!}

!//##################################################
!//-----------------printf()-----------------------
!//##################################################

!//--> imprime na tela uma frase , texto , menu.

program Main
  print*,"Hello World!"
end

    or

program Main
  print*,"Hello", &
         "World", &
         "!"
end

!//##################################################
!//----------------scanf()--------------------
!//##################################################

program main
  integer :: b
  read*, b
  print*, b
end

!//##################################################
!//---------------switch-----------------------------
!//##################################################

program main
  select case (i)
    case (0)
      block
    case (1:9)
      block
    case (11:13:19:23)
      block
    case default
      block
  endselect
end

!//##################################################
!//---------------função if-------------------------
!//##################################################

program main
  if (Condition) then
    block
  elseif (Condition)
    block
  elseif (Condition)
    block
  else
    block
  endif
end

!//##################################################
!//-------------------while-------------------------
!//##################################################

!//-->um tipo de loop

!#include"stdio.h"

!main()
!{
!	int i=1;
!	while (i<=100)
!		printf("%d\t",i);
!		i++;
!	printf("\n\n");
!}

!//##################################################
!//---------------do while--------------------------
!//##################################################

!//-->executa pelo menos 1 vez antes do loop

!#include"stdio.h"

!main()
!{
!	int num;
!	printf("Digite um numero inteiro:"):
!	scanf("%d",&num);
!	do	{ 
!		if(num%2==0)
!			printf("numero par!\n");
!		else
!			printf("Numero impar!\n");
!		printf("Digite um numero inteiro:"):
!		scanf("%d",&num)
!		}while(num!=0);
!}

!//##################################################
!//---------------------for-------------------------
!//##################################################

!-->um tipo de loop

Program main
  integer :: i

  do i=0,10,1
    print*, "i=",i
  enddo
end

!//##################################################
!//------------receber string------------------------
!//##################################################

!-->recebe uma string
!obs:	toda string deve terminar com string[100]='\0';
!	getchar(); para limpar o buffer

!#include"stdio.h"
!#include"string.h"

!main()
!{
!	char string[100];
!	printf("Digite o seu nome:");
!	gets(string);
!	printf("\n\n Ola %s!! \n\n",string);
!	string[100]='\0';
!	getchar();
!}

!//##################################################
!//------------strcpy()------------------------
!//##################################################

!-->copia o conteudo de uma string para outra

!#include"stdio.h"
!#include"string.h"
!#define w 100

!main()
!{
!	char str1[w],str2[w],str3[w];
!	printf("Digite uma string:");
!	gets(str1);
!	strcpy(str2,str1);
!	strcpy(str3,"Voce digitou a string:");
!	printf("\n\n%s%s \n",str3,str2);
!}

!//##################################################
!//------------------strcmp()------------------------
!//##################################################

!-->compara duas strings

!#include"stdio.h"
!#include"string.h"
!#define w 100

!main()
!{
!	char str1[w],str2[w];
!	printf("Digite uma string:");
!	gets(str1);
!	printf("Digite uma string:");
!	gets(str2);
!	if (strcmp(str1,str2)){
!		printf("\n as duas strings sao diferentes! \n");
!		}
!	else	{
!		printf("as duas strings sao iguais! \n");
!		}
!}

!//##################################################
!//------------------strcat()------------------------
!//##################################################

!-->junta(concatena) duas strings, ou seja ,anexa o conteudo de uma na outra

!#include"stdio.h"
!#include"string.h"

!main()
!{
!	char nome1[]="Feliz ";
!	char nome2[]=" Aniversario";
!	printf("Primeiro nome:%s\n",nome1);
!	printf("Segundo nome:%s\n",nome2);
!	printf("Concatenando:%s\n",strcat(nome1,nome2));
!}

!//##################################################
!//------------strlen()-----------------------------
!//##################################################

!-->imprime a quantidade de caracters que a string possui.

!#include"stdio.h"
!#include"string.h"
!main()
!{
!	char nome[]="Maria da silva";
!	printf("%d\n",strlen(nome));
!	printf("%d\n",strlen("linguagem de programação C"));
!}

!//##################################################
!//------------tolower()-----------------------------
!//##################################################

!-->converte um caracter maiusculo em minusculo

!#include"stdio.h"
!#include"ctype.h"
!#include"string.h"

!main()
!{
!	char str[100];
!	int i;
!	printf("Digite seu nome completo maiusculo:");
!	gets(str);
!	for(i=0;i<strlen(str);++i)
!		{
!		str[i]=tolower(str[i]);
!		}
!	printf("seu nome em maiusculas:%s\n",str);
!}

!//##################################################
!//------------toupper()-----------------------------
!//##################################################

!-->converte um caractere minusculo em maiusculo

!#include"stdio.h"
!#include"ctype.h"
!#include"string.h"

!main()
!{
!	char str[100];
!	int i;
!	printf("Digite seu nome completo minusculo:");
!	gets(str);
!	for(i=0;i<strlen(str);++i)
!		{
!		str[i]=toupper(str[i]);
!		}
!	printf("seu nome em maiusculas:%s\n",str);
!}

!//##################################################
!//------------Malloc()------------------------------
!//##################################################

!#include"stdlib.h"
!#include"stdio.h"
!v=(int *)malloc(tam*sizeof(int));
!if(v==NULL)
!	{
!	printf("Não conseguira alocar memoria!\n");
!	return 1;
!	}

!//##################################################
!//------------Struct()------------------------------
!//##################################################

!#include"stdio.h"
!#include"stdlib.h"

!struct livro
!{
!	char titulo[30];
!	int codigo;
!	int paginas;
!};

!void existir-dados(struct livro l)
!{
!	printf("Titulo:%s\n",l.titulo);
!	printf("Codigo:%s\n",l.codigo);
!	printf("Paginas:%s\n",l.paginas);
!}
!main()
!{
!	struct livro l1;
!	printf("Digite o titulo do livro:);
!	gets(l1.livros);
!	printf("Digite o numero de paginas:");
!	scnaf("%d",&l1.codigo);
!	printf("Digite o numero de paginas:");
!	scnaf("%d",&l1.paginas);
!	printf("\n\n");
!	existir-dados(l1);
!}

!//##################################################
!//------------funções()-----------------------------
!//##################################################

!#include"stdio.h"

!void escreveCaracter (char ch , int n) //variaveis de argumentos
!{
!	int i;
!	for(i=0;i<n;++i)
!	{
!		printf("%c",ch);
!	}
!	fgets(string)
!}

!main()
!{
!	escreveCaracter('*',30);
!	printf("\nAlgoritmo e programas\n");
!	escreveCaracter('#',40);
!	printf("\nteste concluido\n");
!	escreveCaracter('"',50);
!	printf("\nexit\n");
!}

!//---------------ou--------------------------------

!#include"stdio.h"

!void escreveCaracter(char ch , int n); //prototipo da função

!main()
!{
!	escreveCaracter('*',30);
!	printf("\nAlgoritmo e programas\n");
!	escreveCaracter('#',40);
!	printf("\nteste concluido\n");
!	escreveCaracter('"',50);
!	printf("\nexit\n");
!}

!void escreveCaracter(char ch ,int n) //variaveis de argumentos
!{
!	int i;
!	for(i=0;i<n;++i)
!	{
!		printf("%c",ch);
!	}
!	fgets(string)
!}

!//##################################################
!//------------return()-----------------------------
!//##################################################

!#include"stdio.h"

!int fatorial(int n)
!{
!	int fat=1,i;
!	for(i=n;i>=1;i--)
!		{
!		fat=fat*i;
!		}
!	return(fat);
!}

!main()
!{
!	int num, resp;
!	printf("digite um numero inteiro positivo:");
!	scanf("%d",&num);	
!	resp=fatorial(num);	
!	printf("o fatorial %d é :%d\n",num,resp);
!}

!//##################################################
!//------------ponteiro()----------------------------
!//##################################################

!#include"stdio.h"

!void troca(int a,int b)
!{
!	int aux;
!	aux=a;
!	a=b;
!	b=aux;
!}

!main()
!{
!	int a=20,b=30;
!	printf("%d,%d\n",a,b);
!	troca(a,b);
!	printf("%d,%d\n",a,b);
!}

!//##################################################
!//--------arquivo-----------------------------------
!//##################################################

!//comandos

!fopen()	//abre um arquivo
!fclose	//fecha um arquivo
!putc()	//escreve um caracter em um arquivo
!fputc()	//o mesmo que putc()
!getc()	//Le um caracter de um arquivo
!fgetc()	//o mesmo que getc()
!fseek()	//Posiciona o arquivo em um byte especifico
!fprintf() //é para um arquivo o que printf() é para o console
!fscanf()	//é para um arquivo o que scanf() é para o console
!feof()	//devolve verdadeiro se o fim de arquivo for atingido
!ferror()	//devolve verdadeiro se ocorreu um erro
!rewind()	//recoloca o indicador de posição de arquivo no inicio arquivo
!remove()	//apaga um arquivo
!fflush() 	//descarrega um arquivo

!//modos

!r	//abre um arquivo-texto para leitura
!w	//cria um arquivo-texto para escrita
!a	//anexa a um arquivo-texto
!rb	//abre um arquivo binario para leitura
!wb	//cria um arquivo binario para escrita
!ab	//anexa a um arquivo binario
!r+	//abre um arquivo-texto para leitura/escrita
!w+	//cria um arquivo-texto para leitura/escrita
!a+	//anexa ou cria um arquivo-texto para leitura/escrita
!r+b	//abre um arquivo binario para leitura/escrita
!w+b	//cria um arquivo binario para leitura/escrita
!a+b	//anexa a um arquivo binario para leitura/escrita

!//codigo

!#include"stdio.h"

!FILE *fp;

!main()
!{
!fp=fopen("Test","w");
!}

!//##################################################
!//--------arquivo variando o nome-------------------
!//##################################################

!#include"stdio.h"

!FILE *fp;
!main()
!{
!int L,i;
!float T;
!for(i0;i<w;i++)
!	{
!	sprintf(cad,"arquivo_%d_%.2f.dat",L,T);
!	fp=fopen(cad,"w");
!	fprintf(fp,"0\t %f \t%f\n",1.0*E/N,fabs(1.0*M/N));
!	}
!}

!//##################################################
!//------------rand()----------------------------
!//##################################################

!//##################################################
!//------------Time()----------------------------
!//##################################################
!http://pt.wikipedia.org/wiki/Time.h
