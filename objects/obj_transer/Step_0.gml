/// @description Aciona a transição/controla a velocidade da transição

if (mode != TRANS_MODE.OFF )
{
	if (mode == TRANS_MODE.INTRO)
	{
		percent = max(0, percent -max((percent/10), 0.005));
	}
	else 
	{
		percent = min(1, percent +max(((1-percent)/10), 0.005));
	}
	
	if (percent == 1) or (percent == 0)
	{
		switch (mode)
		{
			case TRANS_MODE.INTRO:
			{
				mode = TRANS_MODE.OFF;
				break;
			}
			case TRANS_MODE.NEXT:
			{
				mode = TRANS_MODE.INTRO;
				room_goto_next();
				break;
			}
			case TRANS_MODE.GOTO:
			{
				mode = TRANS_MODE.INTRO
				room_goto(target);
				break;
			}
			case TRANS_MODE.RESTART:
			{
				game_restart();
				break;
			}
			
			case TRANS_MODE.RESTARTR:
			{
				obj_lives.morto=true;
				if (global.checkpointR != 0)
				{
					room_goto(global.checkpointR);

				}
				else
				{
					room_restart();
				}
				break;
			}
				
		}
	}				
}