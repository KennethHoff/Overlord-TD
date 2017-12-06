var wantDir, currDir, directiondiff, maxTurn;

// want - this is your target direction \\
wantDir = argument0;

// max turn - this is the max number of degrees to turn \\
maxTurn = argument1;

// current - this is your current direction \\
currDir = direction;

if (wantDir >= (currDir + 180))
{
    currDir += 360;
}
else
{
    if (wantDir < (currDir - 180))
    {
        wantDir += 360;
    }
}

directiondiff = wantDir - currDir;

if (directiondiff < -maxTurn)
{
    directiondiff = -maxTurn
}

if (directiondiff > maxTurn)
{
    directiondiff = maxTurn
}

return directiondiff