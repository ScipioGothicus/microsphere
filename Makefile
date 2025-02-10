main: main.c player.c
	cc main.c player.c -lraylib -lGL -lm -lpthread -ldl -lrt -lX11
