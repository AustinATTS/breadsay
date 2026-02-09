package Core library "io";

import library "prelude";

fn Print(x: i32) = "print.int";
fn PrintChar(x: char) -> i32 = "print.char";

fn PrintStr(msg: str) {
  let size: i64 = msg.Size() as i64;
  var i: i64 = 0;
  while (i < size) {
    PrintChar(msg[i]);
    ++i;
  }
}

fn ReadChar() -> i32 = "read.char";

fn EOF() -> i32 { return -1; }


import Core library "io";

fn PrintBorder(len: i32, border_char: str) {
  var i: i32 = 0;
  while (i < len + 2) {
    Core.PrintStr(border_char);
    i = i + 1;
  }
  Core.PrintStr("\n");
}

fn PrintBreadArt() {
  Core.PrintStr("        \\\n");
  Core.PrintStr("         \\\n");
  Core.PrintStr("          ___________\n");
  Core.PrintStr("         /           \\\n");
  Core.PrintStr("        /   ~~~~~~    \\\n");
  Core.PrintStr("       |   ~~~~~~~~    |\n");
  Core.PrintStr("       |  ~~~~~~~~~~   |\n");
  Core.PrintStr("       |   ~~~~~~~~    |\n");
  Core.PrintStr("       |    ~~~~~~     |\n");
  Core.PrintStr("        \\             /\n");
  Core.PrintStr("         \\_..._____../\n");
  Core.PrintStr("           Bread\n");
}

fn ReadLine(max_len: i32) -> str {
  var result: str = "";
  var count: i32 = 0;

  while (count < max_len) {
    let c: i32 = Core.ReadChar();
    if (c == Core.EOF() || c == '\n') {
      break;
    }
    result = result + (c as char);
    count = count + 1;
  }

  return result;
}

fn Run() -> i32 {
  Core.PrintStr("Say something bready: ");

  var message: str = ReadLine(32);

  if (message.Size() == 0) {
    message = "Gluten Tag!";
  }

  let msg_len: i32 = 32;

  Core.PrintStr(" ");
  PrintBorder(msg_len, "-");

  Core.PrintStr("< ");
  Core.PrintStr(message);
  Core.PrintStr(" >\n");

  Core.PrintStr(" ");
  PrintBorder(msg_len, "-");

  PrintBreadArt();

  return 0;
}
