#include <windows.h>
#include <thread>
using namespace std;

void fill_screen_with_color(int color)
{
    HWND hwnd = GetDesktopWindow();
    HDC hdc = GetWindowDC(hwnd);
    int width = GetSystemMetrics(SM_CXSCREEN);
    int height = GetSystemMetrics(SM_CYSCREEN);
    for (int _ = 0; _ < 50000; _++)
    {
        int x = rand() % width - 1;
        int y = rand() % height - 1;
        SetPixel(hdc, x, y, color);
    }
    ReleaseDC(hwnd, hdc);
}

void exucute_effects()
{
    while (true)
    {
        thread t2(fill_screen_with_color, 0x0000FF);

        // Ожидание завершения потоков
        t2.join();
    }
}

int main()
{
    exucute_effects();
}