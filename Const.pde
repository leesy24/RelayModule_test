//final static boolean PRINT_CONST_ALL_DBG = true;
final static boolean PRINT_CONST_ALL_DBG = false;
//final static boolean PRINT_CONST_ALL_ERR = true;
final static boolean PRINT_CONST_ALL_ERR = false;

//final static boolean PRINT_CONST_SETUP_DBG = true;
final static boolean PRINT_CONST_SETUP_DBG = false;
//final static boolean PRINT_CONST_SETUP_ERR = true;
final static boolean PRINT_CONST_SETUP_ERR = false;

// Define default binary buf filename and path 
final static String CONST_FILE_NAME = "const";
final static String CONST_FILE_EXT = ".csv";

static String CONST_file_full_name;

void Const_setup()
{
  if (PRINT_CONST_ALL_DBG || PRINT_CONST_SETUP_DBG) println("Const_setup():Enter");

  // A Table object
  Table table;

  CONST_file_full_name = CONST_FILE_NAME + CONST_FILE_EXT;

  // Load config file(CSV type) into a Table object
  // "header" option indicates the file has a header row
  table = loadTable(CONST_file_full_name, "header");
  // Check loadTable failed.
  if (table == null)
  {
    if (PRINT_CONST_ALL_ERR || PRINT_CONST_SETUP_ERR) println("Const_setup():loadTable() error!");
    return;
  }

  for (TableRow variable : table.rows())
  {
    // You can access the fields via their column name (or index)
    String name = variable.getString("Name");
    if(name.equals("FRAME_RATE"))
      FRAME_RATE = variable.getInt("Value");
    else if (name.equals("Relay_Module_UART_port_name"))
      Relay_Module_UART_port_name = variable.getString("Value");
    else if (name.equals("Relay_Module_UART_baud_rate"))
      Relay_Module_UART_baud_rate = variable.getInt("Value");
    else if (name.equals("Relay_Module_UART_parity"))
      Relay_Module_UART_parity = variable.getString("Value").charAt(0);
    else if (name.equals("Relay_Module_UART_data_bits"))
      Relay_Module_UART_data_bits = variable.getInt("Value");
    else if (name.equals("Relay_Module_UART_stop_bits"))
      Relay_Module_UART_stop_bits = variable.getFloat("Value"); 
    else if(name.equals("C_RELAY_MODULE_INDICATOR_OFF_FILL"))
      C_RELAY_MODULE_INDICATOR_OFF_FILL = (int)Long.parseLong(variable.getString("Value"), 16);
    else if(name.equals("C_RELAY_MODULE_INDICATOR_OFF_STROKE"))
      C_RELAY_MODULE_INDICATOR_OFF_STROKE = (int)Long.parseLong(variable.getString("Value"), 16);
    else if(name.equals("C_BG"))
      C_BG = (int)Long.parseLong(variable.getString("Value"), 16);
    else if(name.equals("C_VERSION_DATE_TEXT"))
      C_VERSION_DATE_TEXT = (int)Long.parseLong(variable.getString("Value"), 16);
  }
}
