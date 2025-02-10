#ifndef PLAYER_H
#define PLAYER_H

typedef struct Player {
		int x;
		int y;
		int speed;
		int health;
} Player;

void handleMove(Player *player);

#endif
