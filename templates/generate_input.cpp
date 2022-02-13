#include <bits/stdc++.h>
using namespace std;
typedef long long ll;

int main()
{
    string zad = "NAZWA_ZADANIA";
    ofstream in;
    for(int i = 0; i <= 10000; i++)
    {
        in.open("in/" + zad + to_string(i) + ".in");
        in << i;
        in.close();
    }
}