Algoritmo "PROJETO LPOO"
//NOME: MIGUEL URSULINO DE FARIA
//CPD: 47334
//CURSO: SISTEMAS DE INFORMA��O
//DISCIPLINA: LPOO
//PROFESSOR: ALDO HENRIQUE

Var
   v1,v2,v3,menor,maior,cont,num0,operacoes, num1,cont1,cont2,primo,soma,num2: inteiro
   qtd_pessoas,idade,idadem,idadef,contador,idade_arm,masc,fem: inteiro
   media,mediam,mediaf,resultado: real
   sexo,cond: caractere
   m1,m2,m3,m4,m5,m6,m7,m8,m9,m0,limite: caractere

   //Procedimento de divis�o de dois n�meros "CASO 1"!
procedimento dividir
var
   num1, num2:inteiro
   resultado: real
   resul:caractere
inicio
   escreval ("            **DIVIS�O DE N�MEROS!!**")
   escreval
   resul <- "s"

   enquanto resul = "s" faca
      escreva (" Insira o primeiro n�mero:", " ")
      leia (num1)
      escreva (" Insira o segundo n�mero:", " ")
      leia (num2)
      // restri��o de divis�o por 0 (zero)!
      se (num2 <= 0) entao
         escreval (" N�o � poss�vel efetuar divis�o por 0 (zero) ou por caractere invalido!")
      senao
         resultado <- num1/num2
         escreval(" O resultado da divis�o �:", resultado)
      fimse
      escreval (" Deseja Continuar s-sim ou n-n�o:", " ")
      leia (resul)
   fimenquanto
   limpatela
fimprocedimento



//Procedimento de c�lculo de faixa et�ria "CASO 2"!
procedimento faixa_etaria
var
   contador, idade_arm, idade, qtd_pessoas, idadem, masc, fem, idadef:inteiro
   media,mediam,mediaf:real
   sexo,cont: caractere
inicio
   escreval ("        **FAIXA ET�RIA**")
   escreval
   cont <- "s"
   enquanto cont = "s" faca
      escreva (" Insira o n�mero de pessoas:", " ")
      leia (qtd_pessoas)

      contador <- 1
      idade_arm <- 0

      // O contador vai adicionar 1 a cada ciclo at� atingir o valor de qtd_pessoas.
      enquanto (contador <= qtd_pessoas) faca

         idade_arm <- idade_arm+idade

         escreva (" Qual o sexo da pessoa ", contador,", m (masculino) ou f (feminino):", " ")
         leia (sexo)

         escreva (" Qual a idade da pessoa", contador, ": ")
         leia (idade)
         escreval
         // Nesta fun��o SE � calclada a m�dia do sexo masculino.
         se (sexo = "m") entao
            idadem <- idade+idadem
            masc <- masc + 1
            // Nesta fun��o SENAO � calculada a m�dia do sexo feminino.
         senao
            se (sexo= "f") entao
               idadef <- idade+idadef
               fem <- fem+1
            fimse
         fimse
         contador <- contador+1
      fimenquanto
      // C�lculo das m�dias.
      media <- (idade+idade_arm)/qtd_pessoas
      mediam <- (idadem)/masc
      mediaf <- (idadef)/fem

      escreval (" Quantidade de pessoas do sexo masculino:", masc)
      escreval (" Quantidade de pessoas do sexo feminino:", fem)
      escreval (" A m�dia das idades de ambos os sexos �:", media)
      escreval (" A m�dia das idades do sexo masculino �:", mediam)
      escreval (" A m�dia das idades do sexo feminino �:", mediaf)
      escreval (" Deseja continuar s-sim ou n-n�o:", " ")
      leia (cont)

   fimenquanto
   escreval
   limpatela
fimprocedimento

//Procedimento que calcula numeros primos "CASO 3"!
procedimento Numeros_primos
var
   cont1, cont2,primo,num1, soma:inteiro
   cond:caractere
inicio
   cond <- "s"
   escreval ("               **SOMA DE N�MEROS PRIMOS**")
   escreval
   enquanto (cond = "s") faca
      escreva (" Insira um n�mero inteiro:", " ")
      leia (num1)
      escreval (" Esses s�o os n�meros primos de 1 at� ",num1,"!")
      para cont1 de 1 ate num1 faca
         primo <-0
         para cont2 de 1 ate cont1 faca
            se (cont1 mod cont2=0) entao
               primo <- primo+1
            fimse
         fimpara
         se (primo=2) entao
            escreva (cont1,", ")
            soma <- soma+cont1
         fimse
      fimpara
      escreval
      escreval (" A soma dos primos �:", soma)
      escreval (" Deseja Continuar s (sim) ou n (n�o):", " ")
      leia (cond)
      se (cond = "s") entao
         soma <- 0
      fimse

   fimenquanto
   limpatela
fimprocedimento

//Procedimento informa o maior o menor e a m�dia "CASO 4"!
procedimento Maior_menor_media
var
   v1,v2,v3,maior,menor,cont:inteiro
   media:real
   cond:caractere
inicio
   media <- 0
   v2 <- 0
   // Contador!
   cont <- 1
   cond <- "s"
   // Quantidade de numeros que o usu�rio ir� inserir!
   // OBS.: Quantidade ilimitada!
   escreval ("              **MAIOR, MENOR E M�DIA**")
   escreval
   enquanto cond = "s" faca
      escreva (" Informe a quantidade de itens que ser�o inseridos :", " ")
      leia (num0)
      escreval


      // Enquanto a vari�vel cont n�o atingir o valor da vari�vel num0 continua a inserir!
      enquanto (cont <= num0) faca
         v3 <- v1
         escreva (" Insira o n�mero", cont," de", num0,":", " ")
         leia (v1)
         v2 <- v2+v1

         // Condi��o que localiza o menor numero!
         se (v3<=v1) entao
            menor <- v3
         senao
            menor <- v1
         fimse

         // Condi��o que localiza O MAIOR NUMERO!
         se (v3>=v1) entao
            maior <- v3
         senao
            maior <- v1
         fimse
         cont <- cont+1
      fimenquanto
      // C�lculo da m�dia!
      media <- v2/num0
      escreval (" A m�dia dos n�meros �:", media)
      escreval (" O menor n�mero �:", menor)
      escreval (" O maior n�mero �:", maior)
      escreval
      escreval (" Deseja continuar s-sim ou n-n�o:", " ")
      leia (cond)
   fimenquanto
   limpatela
fimprocedimento

//Procedimento que pede um valor de 0 a 20 e retorna em c�digo morse "CASO 5"!
procedimento codigo_morse
var
   num1:inteiro
   limite:caractere
inicio
   escreval ("                   **C�DIGO MORSE**")
   escreval
   // Atribui��o das vari�veis com os c�digos morse de 0 a 20!
   m1 <- "�----"
   m2 <- "��---"
   m3 <- "���--"
   m4 <- "����-"
   m5 <- "�����"
   m6 <- "-����"
   m7 <- "--���"
   m8 <- "---��"
   m9 <- "----�"
   m0 <- "-----"
   limite <- "s"

   enquanto (limite = "s") faca
      escreval (" Insira um n�mero de 0 a 20:", " ")
      leia (num1)
      // Condi��o de limite, para n�o ultrapassar o valor maximo do programa!
      se (num1>20) entao
         //Condi��o de conten��o
         escreva (" N�mero n�o suportado pelo programa insira um n�mero de 0 a 20!")
         escreval
      senao
         se (num1=0) entao
            escreval ("C�digo morse", m0)
         senao
            se (num1=1) entao
               escreval ("C�digo morse", m1)
            senao
               se (num1=2) entao
                  escreval ("C�digo morse", m2)
               senao
                  se (num1=3) entao
                     escreval ("C�digo morse", m3)
                  senao
                     se (num1=4) entao
                        escreval ("C�digo morse", m4)
                     senao
                        se (num1=5) entao
                           escreval ("C�digo morse", m5)
                        senao
                           se (num1=6) entao
                              escreval ("C�digo morse", m6)
                           senao
                              se (num1=7) entao
                                 escreval ("C�digo morse", m7)
                              senao
                                 se (num1=8) entao
                                    escreval ("C�digo morse", m8)
                                 senao
                                    se (num1=9) entao
                                       escreval ("C�digo morse", m9)
                                    senao
                                       se (num1=10) entao
                                          escreval ("C�digo morse", m1,m0)
                                       senao
                                          se (num1=11) entao
                                             escreval ("C�digo morse", m1,m1)
                                          senao
                                             se (num1=12) entao
                                                escreval ("C�digo morse", m1,m2)
                                             fimse
                                          fimse
                                       fimse
                                    fimse
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
            se (num1=13) entao
               escreval ("C�digo morse", m1,m3)
            senao
               se (num1=14) entao
                  escreval ("C�digo morse", m1,m4)
               senao
                  se (num1=15) entao
                     escreval ("C�digo morse", m1,m5)
                  senao
                     se (num1=16) entao
                        escreval ("C�digo morse", m1,m6)
                     senao
                        se (num1=17) entao
                           escreval ("C�digo morse", m1,m7)
                        senao
                           se (num1=18) entao
                              escreval ("C�digo morse", m1,m8)
                           senao
                              se (num1=19) entao
                                 escreval ("C�digo morse", m1,m9)
                              senao
                                 se (num1=20) entao
                                    escreval ("C�digo morse", m2,m0)
                                 fimse
                              fimse
                           fimse
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse
      escreval
      escreva (" Deseja continuar s (sim) ou n (n�o):", " ")
      leia (limite)
      escreval
   fimenquanto
   limpatela

fimprocedimento

//Procedimento de numero bin�rio

procedimento num_binario

var
   result:caractere
   n0,n1,n2,n3,n4,n5,n6,n7,num1,num2,opcao,cond:inteiro
   resultado:real
inicio
   escreval ("                **MUDAN�A DE BASE**")
   escreval
   escreval (" 1 - Decimal para bin�rio")
   escreval (" 2 - Bin�rio para decimal")
   escreval (" Escolha a op��o desejada:", " ")
   leia (opcao)

   escolha opcao

   caso 1
      // Calcula decimal para base binaria!
      escreval (" Insira um valor decimal:", " ")
      leia (num1)

      num2 <- num1
      result <- ""

      enquanto num1> 0 faca
         se (num1 mod 2 = 0) entao
            result <- "0" + result
         senao
            result <- "1" + result
         fimse
         num1 <- num1 div 2
      fimenquanto
      escreval
      escreva (" O valor em bin�rio �:", result)

   caso 2

      //Calcula bin�rio para base decimal

      repita
         escreval (" Insira um n�mero binario de 8 bits:")
         escreval (" N�mero 1:", " ")
         leia (n0)
         escreval (" N�mero 2:", " ")
         leia (n1)
         escreval (" N�mero 3:", " ")
         leia (n2)
         escreval (" N�mero 4:", " ")
         leia (n3)
         escreval (" N�mero 5:", " ")
         leia (n4)
         escreval (" N�mero 6:", " ")
         leia (n5)
         escreval (" N�mero 7:", " ")
         leia (n6)
         escreval (" N�mero 8:", " ")
         leia (n7)

         resultado <- n7*2^0+n6*2^1+n5*2^2+n4*2^3+n3*2^4+n2*2^5+n1*2^6+n0*2^7

         escreval (" O n�mero bin�rio acima em base decimal �:", resultado)
      fimrepita
   fimescolha
   escreval
fimprocedimento

//Menu de op��es!
Inicio
   repita
      escreval ("              **MENU DE GERAL DE OP��ES**")
      escreval
      escreval (" 1. Divis�o")
      escreval (" 2. Faixa Et�ria")
      escreval (" 3. N�meros Primos")
      escreval (" 4. Retornar o Maior, Menor e M�dia")
      escreval (" 5. C�digo Morse")
      escreval (" 6. Mudan�a de Base")
      escreval (" 7. Sair")
      escreval
      escreva (" Digite o numero da op��o desejada:", " ")
      leia (operacoes)
      escreval
      escolha operacoes
         // Este caso trata da divis�o de dois n�meros!
      caso 1
         dividir

         // Este caso refere-se a faixa et�ria!
      caso 2
         faixa_etaria

         // Este caso refere-se a n�meros primos!
      caso 3
         Numeros_primos

         // Este caso retorna o maior o menor e a m�dia.
      caso 4
         Maior_menor_media

         // Este caso retorna c�digo morse
      caso 5
         codigo_morse

         // Este caso refere-se a mudan�a de base binario decmal!
      caso 6
         num_binario

         // Este caso finaliza o algoritmo!
      caso 7

fimalgoritmo
outrocaso
   escreval
   escreval (" **Valor incorreto informe uma op��o de 1 a 7 no menu!**")
   escreval
fimescolha
ate operacoes = 7



Fimalgoritmo