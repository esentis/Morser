String morseCharacter(String char) {
  switch (char) {
    case 'A':
      {
        return '.-';
      }
      break;

    case 'B':
      {
        return '-...';
      }
      break;
    case 'C':
      {
        return '-.-.';
      }
      break;
    case 'D':
      {
        return '-..';
      }
      break;
    case 'E':
      {
        return '.';
      }
      break;
    case 'F':
      {
        return '..-.';
      }
      break;
    case 'G':
      {
        return '--.';
      }
      break;
    case 'H':
      {
        return '....';
      }
      break;
    case 'I':
      {
        return '..';
      }
      break;
    case 'J':
      {
        return '.---';
      }
      break;
    case 'K':
      {
        return '-.-';
      }
      break;
    case 'L':
      {
        return '.-..';
      }
      break;
    case 'M':
      {
        return '--';
      }
      break;
    case 'N':
      {
        return '-.';
      }
      break;
    case 'O':
      {
        return '---';
      }
      break;
    case 'P':
      {
        return '.--.';
      }
      break;
    case 'Q':
      {
        return '--.-';
      }
      break;
    case 'R':
      {
        return '.-.';
      }
      break;
    case 'S':
      {
        return '...';
      }
      break;
    case 'T':
      {
        return '-';
      }
      break;
    case 'U':
      {
        return '..-';
      }
      break;
    case 'V':
      {
        return '...-';
      }
      break;
    case 'W':
      {
        return '.--';
      }
      break;
    case 'X':
      {
        return '-..-';
      }
      break;
    case 'Y':
      {
        return '-.--';
      }
      break;
    case 'Z':
      {
        return '--..';
      }
      break;
    case '0':
      {
        return '-----';
      }
      break;
    case '1':
      {
        return '.----';
      }
      break;
    case '2':
      {
        return '..---';
      }
      break;
    case '3':
      {
        return '...--';
      }
      break;
    case '4':
      {
        return '....-';
      }
      break;
    case '5':
      {
        return '.....';
      }
      break;
    case '6':
      {
        return '-....';
      }
      break;
    case '7':
      {
        return '--...';
      }
      break;
    case '8':
      {
        return '---..';
      }
      break;
    case '9':
      {
        return '----.';
      }
      break;
    case 'colon':
      {
        return '---...';
      }
      break;
    case 'comma':
      {
        return '--..--';
      }
      break;
    case 'parenthesis_close':
      {
        return '-.--.-';
      }
      break;
    case 'parenthesis_open':
      {
        return '-.--.';
      }
      break;
    case 'period':
      {
        return '.-.-.-';
      }
      break;
    case 'question':
      {
        return '..--..';
      }
      break;
    case 'quotation':
      {
        return '.-..-.';
      }
      break;
    case 'slash':
      {
        return '-..-.';
      }
      break;
    case 'space':
      {
        return '[space]';
      }
      break;
    default:
      {
        return '';
      }
      break;
  }
}

String checkSpecialCharacter(String character) {
  switch (character) {
    case '?':
      {
        return 'question';
      }
      break;
    case ';':
      {
        return 'question';
      }
      break;
    case '"':
      {
        return 'quotation';
      }
      break;
    case '/':
      {
        return 'slash';
      }
      break;
    case '(':
      {
        return 'parenthesis_open';
      }
      break;
    case ')':
      {
        return 'parenthesis_close';
      }
      break;
    case ',':
      {
        return 'comma';
      }
      break;
    case '.':
      {
        return 'period';
      }
      break;
    case ':':
      {
        return 'colon';
      }
      break;
    default:
      {
        return character;
      }
      break;
  }
}
