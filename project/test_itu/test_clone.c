#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include "SDL/SDL.h"
#include "ite/itu.h"

#define ForKenny

#define GESTURE_THRESHOLD 40
#define MOUSEDOWN_LONGPRESS_DELAY   1000
#define MenuRowDistance  120
#define MenuColumnDistance 160
#define MenuFirstX 46
#define MenuFirstY 60
#define MenuTotalApp 10
#define MenuRowRange 5

static ITUScene scene;
static int moveTableX[2][10] = {
	{ 16, 16, 16, 16, 16, 16, 16, 16, 16, 16 },
	{ 64, 64, 64, 64, 64, 64, 64, 64, 64, 64 }
};

static int moveTableY[10] = {
	12, 12, 12, 12, 12, 12, 12, 12, 12, 12
};

static int favorite[10] = { 0 };

static ITUContainer *mainContainer[MenuTotalApp] = { 0 };
static ITUAnimation *mainAnimation[MenuTotalApp] = { 0 };
#ifndef ForKenny
static ITUButton *mainTrashCanButton = 0;
static ITUIcon *mainIcon[MenuTotalApp][3] = { 0 };
#endif // !ForKenny


static bool longPressState = false;
static int index, lastX, lastY, lastPos, offsetX, offsetY;
static int hold_cnt = 0;
static bool arranging = false;
static int arrange_cnt = 0;
static int arrange_start, arrange_end, arrange_idx[10];
static bool changed = false;
static int mainTotalApp = 0;
static int mainRowNum = 0;

static int getCurrentPosition(int x, int y)
{
	int pos = -1, i, j;

	for (i = 0; i < mainRowNum; i++){
		if ((y >= (MenuFirstY + MenuRowDistance * i))
			&& (y < (MenuFirstY + MenuRowDistance * (i + 1)))){
			for (j = 0; j < MenuRowRange; j++){
				if ((x >= (MenuFirstX + MenuColumnDistance * j)) 
					&& (x < (MenuFirstX + MenuColumnDistance * (j+1)))) 
					pos = i * MenuRowRange + j;
			}
		}
	}
	if (pos == -1)
		pos += mainTotalApp;
#ifndef ForKenny
	printf("x:%d, y:%d\n", x, y);

	if (x > 662 && x < 784 && y > 337 && y < 456){
		for (i = 0; i < 3; i++){
			ituWidgetSetAlpha(mainIcon[index][i], 100);
		}
	}
	else
	{
		for (i = 0; i < 3; i++){
			ituWidgetSetAlpha(mainIcon[index][i], 255);
		}
	}
	printf("pos: %d\n", pos);
#endif
	return pos;
}

static int findIndexByPosition(int pos)
{
	int i, x, y;
	int idx = -1;
	if (pos<MenuRowRange) { x = MenuFirstX + MenuColumnDistance * pos; y = MenuFirstY; }
	else { x = MenuFirstX + MenuColumnDistance * (pos - MenuRowRange); y = MenuFirstY + MenuRowDistance; }
	for (i = 0; i<mainTotalApp; i++) {
		if (i == index) continue;
		if (ituWidgetGetY(mainContainer[i]) == y && ituWidgetGetX(mainContainer[i]) == x) {
			idx = i;
			break;
		}
	}
	return idx;
}

bool MainOnEnter(ITUWidget* widget, char* param)
{
	int i, x, y;
	char name[128];
	mainTotalApp = MenuTotalApp;
	if (mainTotalApp%MenuRowRange != 0)
		mainRowNum = mainTotalApp / MenuRowRange + 1;
	else
		mainRowNum = mainTotalApp / MenuRowRange;
	if (!mainContainer[0])
	{
		for (i = 0; i < mainTotalApp; i++){
			sprintf(name, "mainContainer%d\0", i);
			mainContainer[i] = ituSceneFindWidget(&scene, name);
			assert(mainContainer[i]);

			sprintf(name, "mainAnimation%d\0", i);
			mainAnimation[i] = ituSceneFindWidget(&scene, name);
			assert(mainAnimation[i]);
		}
#ifndef ForKenny
		for (i = 0; i < 3; i++){
			sprintf(name, "mainIcon0%d\0", i);
			mainIcon[0][i] = ituSceneFindWidget(&scene, name);
			assert(mainIcon[0][i]);
		}
		mainTrashCanButton = ituSceneFindWidget(&scene, "mainTrashCanButton");
		assert(mainTrashCanButton);
#endif
	}
	for (i = 0; i < mainTotalApp; i++)
		favorite[i] = i;

	for (i = 0; i < mainTotalApp; i++){
		if (i<MenuRowRange) { x = MenuFirstX + MenuColumnDistance * i; y = MenuFirstY; }
		else { x = MenuFirstX + MenuColumnDistance * (i - MenuRowRange); y = MenuFirstY + MenuRowDistance; }
		ituWidgetSetPosition(mainContainer[favorite[i]], x, y);
	}
	longPressState = false;
	index = -1;
	changed = false;
	return true;
}

bool MainOnTimer(ITUWidget* widget, char* param)
{
	bool updated = false;
	int i, curX, curY, curPos;
	if (longPressState == true) {
		curX = scene.lastMouseX;
		curY = scene.lastMouseY;
		curPos = getCurrentPosition(curX, curY);
		ituWidgetSetX(mainContainer[index], curX - offsetX);
		ituWidgetSetY(mainContainer[index], curY - offsetY);

		if (abs(curX - lastX)<5 && abs(curY - lastY)<5 && curPos >= 0) {
			hold_cnt++;
		}
		else {
			hold_cnt = 0;
			lastX = curX;
			lastY = curY;
		}

		if (hold_cnt>10 && curPos != lastPos && arranging == false) {
			printf("arrange.... start from %d to %d\n", lastPos, curPos);
			arranging = true;
			arrange_cnt = 0;
			arrange_start = lastPos;
			arrange_end = curPos;
			if (arrange_start<arrange_end) {
				for (i = arrange_start + 1; i <= arrange_end; i++)
					arrange_idx[i] = findIndexByPosition(i);
			}
			else {
				for (i = arrange_start - 1; i >= arrange_end; i--)
					arrange_idx[i] = findIndexByPosition(i);
			}
			lastPos = curPos;
		}

		if (arranging == true && arrange_cnt<10) {
			if (arrange_start<arrange_end) {
				for (i = arrange_start + 1; i <= arrange_end; i++) {
					if (arrange_idx[i]<0) continue;
					if (i == 5) {
						ituWidgetSetX(mainContainer[arrange_idx[i]], ituWidgetGetX(mainContainer[arrange_idx[i]]) + moveTableX[1][arrange_cnt]);
						ituWidgetSetY(mainContainer[arrange_idx[i]], ituWidgetGetY(mainContainer[arrange_idx[i]]) - moveTableY[arrange_cnt]);
					}
					else {
						ituWidgetSetX(mainContainer[arrange_idx[i]], ituWidgetGetX(mainContainer[arrange_idx[i]]) - moveTableX[0][arrange_cnt]);
					}
				}
			}
			else {
				for (i = arrange_start - 1; i >= arrange_end; i--) {
					if (arrange_idx[i]<0) continue;
					if (i == 4) {
						ituWidgetSetX(mainContainer[arrange_idx[i]], ituWidgetGetX(mainContainer[arrange_idx[i]]) - moveTableX[1][arrange_cnt]);
						ituWidgetSetY(mainContainer[arrange_idx[i]], ituWidgetGetY(mainContainer[arrange_idx[i]]) + moveTableY[arrange_cnt]);
					}
					else {
						ituWidgetSetX(mainContainer[arrange_idx[i]], ituWidgetGetX(mainContainer[arrange_idx[i]]) + moveTableX[0][arrange_cnt]);
					}
				}
			}
			arrange_cnt++;
		}

		if (arrange_cnt >= 10) {
			arranging = false;
		}
		updated = true;
	}
	return updated;
}

bool MainButtonOnLongPress(ITUWidget* widget, char* param)
{
	int i;
#ifndef ForKenny
	ituWidgetSetVisible(mainTrashCanButton, true);
#endif
	for (i = 0; i<mainTotalApp; i++)
		ituAnimationPlay(mainAnimation[i], 0);

	index = atoi(param);
	lastX = ituWidgetGetX(mainContainer[index]);
	lastY = ituWidgetGetY(mainContainer[index]);
	offsetX = scene.lastMouseX - lastX;
	offsetY = scene.lastMouseY - lastY;
	lastPos = getCurrentPosition(scene.lastMouseX, scene.lastMouseY);

	longPressState = true;
	changed = true;
	hold_cnt = 0;
	return true;
}

bool MainButtonOnMouseUp(ITUWidget* widget, char* param)
{
	int i;
#ifndef ForKenny
	ituWidgetSetVisible(mainTrashCanButton, false);
#endif
	if (longPressState == true) {
		for (i = 0; i<mainTotalApp; i++)
			ituAnimationGoto(mainAnimation[i], 0);
		longPressState = false;
		if (lastPos<MenuRowRange) {
			ituWidgetSetX(mainContainer[index], MenuFirstX + MenuColumnDistance * lastPos);
			ituWidgetSetY(mainContainer[index], MenuFirstY);
		}
		else {
			ituWidgetSetX(mainContainer[index], MenuFirstX + MenuColumnDistance * (lastPos - MenuRowRange));
			ituWidgetSetY(mainContainer[index], MenuFirstY + MenuRowDistance);
		}
		index = -1;
	}
	return true;
}

bool MainTrashCanButtonOnMouseUp(ITUWidget* widget, char* param)
{
	int i;
#ifndef ForKenny
	ituWidgetSetVisible(mainTrashCanButton, false);
#endif
	if (longPressState == true) {
		for (i = 0; i<mainTotalApp; i++)
			ituAnimationGoto(mainAnimation[i], 0);
		longPressState = false;

		mainTotalApp--;
		ituWidgetSetVisible(mainContainer[index], false);
		

		index = -1;
	}
	return true;
}

ITUActionFunction actionFunctions[] =
{
	"MainOnEnter", MainOnEnter,
	"MainOnTimer", MainOnTimer,
	"MainButtonOnLongPress", MainButtonOnLongPress,
	"MainButtonOnMouseUp", MainButtonOnMouseUp,
	"MainTrashCanButtonOnMouseUp", MainTrashCanButtonOnMouseUp,
	NULL, NULL
};

int SDL_main(int argc, char *argv[])
{
	SDL_Window *window;
	SDL_Event ev;
	int done, delay, lastx, lasty;
	uint32_t tick, dblclk, lasttick, mouseDownTick;

	// wait mouting USB storage
#ifndef _WIN32
	sleep(5);
#endif

	/* Initialize SDL */
	if (SDL_Init(SDL_INIT_VIDEO) < 0)
	{
		printf("Couldn't initialize SDL: %s\n", SDL_GetError());
		return (1);
	}
	window = SDL_CreateWindow("UI Hexahedron Flip",
		SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,
		800, 480, 0);
	if (!window)
	{
		printf("Couldn't create 800x480 window: %s\n",
			SDL_GetError());
		SDL_Quit();
		exit(2);
	}

	// init itu
	ituLcdInit();

#ifdef CFG_M2D_ENABLE
	ituM2dInit();
#else
	ituSWInit();
#endif

	ituFtInit();
	ituFtLoadFont(0, CFG_PRIVATE_DRIVE ":/font/wqyMicroHei.ttf", ITU_GLYPH_8BPP);

	// load itu file
	tick = SDL_GetTicks();

	ituSceneInit(&scene, NULL);
	ituSceneSetFunctionTable(&scene, actionFunctions);
	ituSceneLoadFile(&scene, CFG_PRIVATE_DRIVE ":/UI_Dynamic_Menu.itu");

	printf("loading time: %dms\n", SDL_GetTicks() - tick);

	scene.leftKey = SDLK_LEFT;
	scene.upKey = SDLK_UP;
	scene.rightKey = SDLK_RIGHT;
	scene.downKey = SDLK_DOWN;

	/* Watch keystrokes */
	done = dblclk = lasttick = lastx = lasty = mouseDownTick = 0;
	while (!done)
	{
		bool result = false;

		tick = SDL_GetTicks();

		while (SDL_PollEvent(&ev))
		{
			switch (ev.type)
			{
			case SDL_MOUSEMOTION:
				result = ituSceneUpdate(&scene, ITU_EVENT_MOUSEMOVE, ev.button.button, ev.button.x, ev.button.y);
				break;

			case SDL_MOUSEBUTTONDOWN:
				mouseDownTick = SDL_GetTicks();
				if (mouseDownTick - dblclk <= 300)
				{
					result = ituSceneUpdate(&scene, ITU_EVENT_MOUSEDOUBLECLICK, ev.button.button, ev.button.x, ev.button.y);
					dblclk = mouseDownTick = 0;
				}
				else
				{
					result = ituSceneUpdate(&scene, ITU_EVENT_MOUSEDOWN, ev.button.button, ev.button.x, ev.button.y);
					dblclk = mouseDownTick;
					lastx = ev.button.x;
					lasty = ev.button.y;
				}
				break;

			case SDL_MOUSEBUTTONUP:
				if (SDL_GetTicks() - dblclk <= 300)
				{
					int xdiff = abs(ev.button.x - lastx);
					int ydiff = abs(ev.button.y - lasty);

					if (xdiff >= GESTURE_THRESHOLD)
					{
						if (ev.button.x > lastx)
						{
							printf("mouse: slide to right\n");
							result |= ituSceneUpdate(&scene, ITU_EVENT_TOUCHSLIDERIGHT, 1, ev.button.x, ev.button.y);
						}
						else
						{
							printf("mouse: slide to left\n");
							result |= ituSceneUpdate(&scene, ITU_EVENT_TOUCHSLIDELEFT, 1, ev.button.x, ev.button.y);
						}
					}
					else if (ydiff >= GESTURE_THRESHOLD)
					{
						if (ev.button.y > lasty)
						{
							printf("mouse: slide to down\n");
							result |= ituSceneUpdate(&scene, ITU_EVENT_TOUCHSLIDEDOWN, 1, ev.button.x, ev.button.y);
						}
						else
						{
							printf("mouse: slide to up\n");
							result |= ituSceneUpdate(&scene, ITU_EVENT_TOUCHSLIDEUP, 1, ev.button.x, ev.button.y);
						}
					}
				}
				result |= ituSceneUpdate(&scene, ITU_EVENT_MOUSEUP, ev.button.button, ev.button.x, ev.button.y);
				mouseDownTick = 0;
				break;

			case SDL_FINGERMOTION:
				printf("touch: move %d, %d\n", ev.tfinger.x, ev.tfinger.y);
				result = ituSceneUpdate(&scene, ITU_EVENT_MOUSEMOVE, 1, ev.tfinger.x, ev.tfinger.y);
				break;

			case SDL_FINGERDOWN:
				printf("touch: down %d, %d\n", ev.tfinger.x, ev.tfinger.y);
				{
					mouseDownTick = SDL_GetTicks();
					if (mouseDownTick - dblclk <= 300)
					{
						result = ituSceneUpdate(&scene, ITU_EVENT_MOUSEDOUBLECLICK, 1, ev.tfinger.x, ev.tfinger.y);
						dblclk = mouseDownTick = 0;
					}
					else
					{
						result = ituSceneUpdate(&scene, ITU_EVENT_MOUSEDOWN, 1, ev.tfinger.x, ev.tfinger.y);
						dblclk = mouseDownTick;
						lastx = ev.tfinger.x;
						lasty = ev.tfinger.y;
					}
				}
				break;

			case SDL_FINGERUP:
				printf("touch: up %d, %d\n", ev.tfinger.x, ev.tfinger.y);
				if (SDL_GetTicks() - dblclk <= 300)
				{
					int xdiff = abs(ev.tfinger.x - lastx);
					int ydiff = abs(ev.tfinger.y - lasty);

					if (xdiff >= GESTURE_THRESHOLD)
					{
						if (ev.tfinger.x > lastx)
						{
							printf("touch: slide to right %d %d\n", ev.tfinger.x, ev.tfinger.y);
							result |= ituSceneUpdate(&scene, ITU_EVENT_TOUCHSLIDERIGHT, 1, ev.tfinger.x, ev.tfinger.y);
						}
						else
						{
							printf("touch: slide to left %d %d\n", ev.button.x, ev.button.y);
							result |= ituSceneUpdate(&scene, ITU_EVENT_TOUCHSLIDELEFT, 1, ev.tfinger.x, ev.tfinger.y);
						}
					}
					else if (ydiff >= GESTURE_THRESHOLD)
					{
						if (ev.tfinger.y > lasty)
						{
							printf("touch: slide to down %d %d\n", ev.tfinger.x, ev.tfinger.y);
							result |= ituSceneUpdate(&scene, ITU_EVENT_TOUCHSLIDEDOWN, 1, ev.tfinger.x, ev.tfinger.y);
						}
						else
						{
							printf("touch: slide to up %d %d\n", ev.tfinger.x, ev.tfinger.y);
							result |= ituSceneUpdate(&scene, ITU_EVENT_TOUCHSLIDEUP, 1, ev.tfinger.x, ev.tfinger.y);
						}
					}
				}
				result |= ituSceneUpdate(&scene, ITU_EVENT_MOUSEUP, 1, ev.tfinger.x, ev.tfinger.y);
				mouseDownTick = 0;
				break;

			case SDL_QUIT:
				done = 1;
				break;
			}
		}

		if (mouseDownTick > 0 && (SDL_GetTicks() - mouseDownTick >= MOUSEDOWN_LONGPRESS_DELAY))
		{
			printf("long press: %d %d\n", lastx, lasty);
			result |= ituSceneUpdate(&scene, ITU_EVENT_MOUSELONGPRESS, 1, lastx, lasty);
			mouseDownTick = 0;
		}

		result |= ituSceneUpdate(&scene, ITU_EVENT_TIMER, 0, 0, 0);
		if (result)
		{
			ituSceneDraw(&scene, ituGetDisplaySurface());
			ituFlip(ituGetDisplaySurface());
		}

		delay = 17- (SDL_GetTicks() - tick);
		if (delay > 0)
		{
			SDL_Delay(delay);
		}
	}

	SDL_Quit();
	return (0);
}