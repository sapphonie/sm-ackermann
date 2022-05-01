#include <sourcemod>

#pragma semicolon 1
#pragma newdecls required
#pragma dynamic 81920

int ack(int m, int n)
{
    int answer;
    if ( m == 0 )
    {
        answer = n + 1;
    }
    else if ( n == 0 )
    {
        answer = ack( m - 1, 1 );
    }
    else
    {
        answer = ack( m - 1, ack( m, n - 1 ) );
    }
    return answer;
}

public void OnPluginStart ()
{
    for (int i = 0; i < 6; i++)
    {
        for (int j = 0; j < 6; j++)
        {
            PrintToServer("Ack %i, %i, ack=%i", i, j, ack(i, j));
        }
    }
}
