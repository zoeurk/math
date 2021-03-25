GCC=gcc
OPTIONS=-Wall -Wpadded -Wunused -Wextra -g -v -lm
GNU90=-std=gnu90
GNU89=-std=gnu89
ANSI=-ansi -D_GNU_SOURCE
FILE=math
RM=rm
RMOPTIONS=-fv

all: GNU GNU89 GNU90 ANSI
	@printf "________________\n"
	@ls -1 . | sed -n '/math-/ { s/^/fichier créé: /p }'
GNU:
	$(GCC) $(FILE).c -o $(FILE)-bin $(OPTIONS)
GNU90:
	$(GCC) $(GNU90) $(FILE).c -o $(FILE)-gnu90 $(OPTIONS)
GNU89:
	$(GCC) $(GNU89) $(FILE).c -o $(FILE)-gnu89 $(OPTIONS)
ANSI:
	$(GCC) $(ANSI) $(FILE).c -o $(FILE)-ansi ${OPTIONS}
clean:
	$(RM) $(RMOPTIONS) $(FILE)-*
