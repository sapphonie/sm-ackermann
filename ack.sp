#include <sourcemod>

#pragma semicolon 1
#pragma newdecls required
#pragma dynamic 8192000

public void OnPluginStart()
{
    PrintToServer("Ack: %i", ack( 4, 3 ));
}


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
