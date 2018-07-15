import java.util.*;

// Define to enable or disable the log print in console.
//final static boolean PRINT_DBG = true; 
final static boolean PRINT_DBG = false; 

//static color C_BG = #FFFFFF; // White
static color C_BG = #F8F8F8; // White - 0x8

// Define window title string.
final static String TITLE_COMPANY = "DASAN InfoTek";
final static String TITLE_PRODUCT = "RelayModule Test Program";
String Title;

static int FRAME_RATE = 20; // Frame rate per second of screen update in Hz. 20Hz = 50msec
static int FRAME_TIME; // Frame time will calculated from frame rate.

// The settings() function is new with Processing 3.0. It's not needed in most sketches.
// It's only useful when it's absolutely necessary to define the parameters to size() with a variable. 
void settings() {
  Screen_settings();
}

// The setup() function is run once, when the program starts.
// It's used to define initial enviroment properties such as screen size
//  and to load media such as images and fonts as the program starts.
// There can only be one setup() function for each program
//  and it shouldn't be called again after its initial execution.
void setup() {
  if (PRINT_DBG) println("setup():Enter");

  // Must very first initialize font.
  SCREEN_PFront = createFont("SansSerif", 32);
  textFont(SCREEN_PFront);

  // To set the background on the first frame of animation. 
  background(C_BG);

  // Title set to default.
  Title = TITLE_COMPANY + ":" + TITLE_PRODUCT;

  Const_setup();
  Screen_setup();
  Relay_Module_setup();
  Version_Date_setup();

  frameRate(FRAME_RATE);
  FRAME_TIME = int(1000. / FRAME_RATE);

  // Set window title
  surface.setTitle(Title);

  // Need to call gc() to free memory.
  System.gc();
}

// Called directly after setup()
//  , the draw() function continuously executes the lines of code contained inside
//  its block until the program is stopped or noLoop() is called. draw() is called automatically
//  and should never be called explicitly.
// All Processing programs update the screen at the end of draw(), never earlier.
void draw() {

  // Ready to draw from here!
  // To clear the display window at the beginning of each frame,
  background(C_BG);

  Relay_Module_output();

  Version_Date_draw();
} 
