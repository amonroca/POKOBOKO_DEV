
#define SVP_Init
    global.external_svp_open = external_define ("Super Video Play 2.dll","hobbl_com_open",dll_stdcall,ty_real,1,ty_string);
    global.external_svp_openstream = external_define ("Super Video Play 2.dll","hobbl_com_openstream",dll_stdcall,ty_real,1,ty_string);
    global.external_svp_window = external_define ("Super Video Play 2.dll","hobbl_com_window",dll_stdcall,ty_real,6,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real);
    global.external_svp_play = external_define ("Super Video Play 2.dll","hobbl_com_play",dll_stdcall,ty_real,1,ty_real);
    global.external_svp_stop = external_define ("Super Video Play 2.dll","hobbl_com_stop",dll_stdcall,ty_real,1,ty_real);
    global.external_svp_pause = external_define ("Super Video Play 2.dll","hobbl_com_pause",dll_stdcall,ty_real,1,ty_real);
    global.external_svp_resume = external_define ("Super Video Play 2.dll","hobbl_com_resume",dll_stdcall,ty_real,1,ty_real);
    global.external_svp_getpos = external_define ("Super Video Play 2.dll","hobbl_com_getpos",dll_stdcall,ty_real,1,ty_real);
    global.external_svp_getlength = external_define ("Super Video Play 2.dll","hobbl_com_getlength",dll_stdcall,ty_real,1,ty_real);
    global.external_svp_setpos = external_define ("Super Video Play 2.dll","hobbl_com_setpos",dll_stdcall,ty_real,3,ty_real,ty_real,ty_real);
    global.external_svp_setspeed = external_define ("Super Video Play 2.dll","hobbl_com_setspeed",dll_stdcall,ty_real,2,ty_real,ty_real);
    global.external_svp_getspeed = external_define ("Super Video Play 2.dll","hobbl_com_getspeed",dll_stdcall,ty_real,1,ty_real);
    global.external_svp_close = external_define ("Super Video Play 2.dll","hobbl_com_close",dll_stdcall,ty_real,1,ty_real);
    global.external_svp_setvolume = external_define ("Super Video Play 2.dll","hobbl_com_setvolume",dll_stdcall,ty_real,2,ty_real,ty_real);
    global.external_svp_status = external_define ("Super Video Play 2.dll","hobbl_com_status",dll_stdcall,ty_real,1,ty_real);
    global.external_svp_getvolume = external_define ("Super Video Play 2.dll","hobbl_com_getvolume",dll_stdcall,ty_real,1,ty_real);
    global.external_svp_setwindow= external_define ("Super Video Play 2.dll","hobbl_com_setwindow",dll_stdcall,ty_real,6,ty_real,ty_real,ty_real,ty_real,ty_real,ty_real);
    global.external_svp_fullscreen = external_define ("Super Video Play 2.dll","hobbl_com_fullscreen",dll_stdcall,ty_real,1,ty_real);
    global.external_svp_setfullscreen = external_define ("Super Video Play 2.dll","hobbl_com_setfullscreen",dll_stdcall,ty_real,1,ty_real);
    
    SVP_Status_String [0] = "Wrong input"
    SVP_Status_String [1] = "Loading"
    SVP_Status_String [2] = "Paused"
    SVP_Status_String [3] = "Playing"
    SVP_Status_String [4] = "Stopped"
    SVP_Status_String [5] = "Open"
    SVP_Status_String [6] = "Recording"
    SVP_Status_String [7] = "Seeking"
    

#define SVP_Play
    return external_call(global.external_svp_play,argument0);

#define SVP_Stop
    return external_call(global.external_svp_stop,argument0);

#define SVP_Pause
    return external_call(global.external_svp_pause,argument0);

#define SVP_Resume
    return external_call(global.external_svp_resume,argument0);

#define SVP_GetPos
    return external_call(global.external_svp_getpos,argument0);

#define SVP_GetLength
    return external_call(global.external_svp_getlength,argument0);

#define SVP_SetPos
    return external_call(global.external_svp_setpos,argument0,argument1,argument2);

#define SVP_SetSpeed
    return external_call(global.external_svp_setspeed,argument0,argument1);

#define SVP_GetSpeed
    return external_call(global.external_svp_getspeed,argument0);

#define SVP_Status
    return external_call(global.external_svp_status,argument0);

#define SVP_StatusString
    return SVP_Status_String[external_call(global.external_svp_status,argument0)];

#define SVP_SetVolume
    return external_call(global.external_svp_setvolume,argument0,argument1);

#define SVP_GetVolume
    return external_call(global.external_svp_getvolume,argument0);

#define SVP_Open
    return external_call(global.external_svp_open,argument0);

#define SVP_OpenStream
    return external_call(global.external_svp_openstream,argument0);

#define SVP_Close
    return external_call(global.external_svp_close,argument0);

#define SVP_SetWindow
    return external_call(global.external_svp_setwindow,argument0,argument1,argument2,argument3,argument4,argument5);

#define SVP_Fullscreen
    return external_call(global.external_svp_fullscreen,argument0);

#define SVP_SetFullscreen
    return external_call(global.external_svp_setfullscreen,argument0);

#define SVP_Window
    return external_call(global.external_svp_window,argument0,argument1,argument2,argument3,argument4,argument5);
