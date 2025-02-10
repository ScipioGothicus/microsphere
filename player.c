#include "player.h"
#include "raylib.h"

void handleMove(Player *player) {
	if (IsKeyDown(KEY_W)) {
		player->y -= player->speed;
	}
	if (IsKeyDown(KEY_S)) {
		player->y += player->speed;
	}
	if (IsKeyDown(KEY_A)) {
		player->x -= player->speed;
	}
	if (IsKeyDown(KEY_D)) {
		player->x += player->speed;
	}
}
