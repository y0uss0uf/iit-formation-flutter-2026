
void main() {

	//****
  // COMMENT FAIRE UNE BOUCLE DO WHILE
  // contairement a la boucle tantQue il excecute d'abord la 1ere instruction
  // puis verifie la condition du while ( i <= 10)


  // Dans le cas ou i = 12
  // la boucle s'executera une fois mais apres verification il ne fera pas d'autre boucle
  // */
	int i = 1;

	do {

		if ( i % 2 == 0) {
			print(i);
		}

		i++;
	} while ( i <= 10);
}
