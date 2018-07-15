//final static boolean PRINT_SCREENFUNC_ALL_DBG = true;
final static boolean PRINT_SCREENFUNC_ALL_DBG = false;

//final static boolean PRINT_SCREENFUNC_SETTINGS_DBG = true;
final static boolean PRINT_SCREENFUNC_SETTINGS_DBG = false;

//final static boolean PRINT_SCREENFUNC_SETUP_DBG = true;
final static boolean PRINT_SCREENFUNC_SETUP_DBG = false;

// Define default screen x, y, width and height.
static int SCREEN_x = 0;
static int SCREEN_y = 0;
//static int SCREEN_width = 1920;
//static int SCREEN_height = 1080;
//static int SCREEN_width = 1024;
//static int SCREEN_height = 768;
static int SCREEN_width = 400;
static int SCREEN_height = 300;
//static int SCREEN_width = 640;
//static int SCREEN_height = 480;

// Define just font height variables.
int FONT_HEIGHT;

// Define just text area margin variables.
int TEXT_MARGIN;
PFont SCREEN_PFront;

void Screen_settings() {
  if(PRINT_SCREENFUNC_ALL_DBG || PRINT_SCREENFUNC_SETTINGS_DBG) println("Screen_settings():");
  if(PRINT_SCREENFUNC_ALL_DBG || PRINT_SCREENFUNC_SETTINGS_DBG) println("Screen_settings():displayWidth="+displayWidth+",displayHeight="+displayHeight);
  if(PRINT_SCREENFUNC_ALL_DBG || PRINT_SCREENFUNC_SETTINGS_DBG) println("Screen_settings():SCREEN_x="+SCREEN_x+",SCREEN_y="+SCREEN_y+",SCREEN_width="+SCREEN_width+",SCREEN_height="+SCREEN_height);
 
  size(SCREEN_width, SCREEN_height);
}

/*
boolean SCREEN_surface_set = false; // Needs to set one time.
*/
void Screen_setup()
{
  if(PRINT_SCREENFUNC_ALL_DBG || PRINT_SCREENFUNC_SETUP_DBG) println("Screen_setup():Enter");

  TEXT_MARGIN = 4;
  if (PRINT_SCREENFUNC_ALL_DBG) println("Screen_setup():TEXT_MARGIN=" + TEXT_MARGIN);
  //println("Screen_setup():TEXT_MARGIN=" + TEXT_MARGIN);

  FONT_HEIGHT = 16;
  if (PRINT_SCREENFUNC_ALL_DBG) println("Screen_setup():FONT_HEIGHT=" + FONT_HEIGHT);
  //println("Screen_setup():FONT_HEIGHT=" + FONT_HEIGHT);
  textSize(FONT_HEIGHT);
}
