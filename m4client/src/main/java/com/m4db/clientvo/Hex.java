/*  
**  M4DB ( Manager Monitor Multiple Machine & DataBase )
**  Copyright (C) 2010-2020 M4DB
**/ 

package com.m4db.clientvo;

/**
 *
* @author penghwa penghwa@msn.com
 */
public class Hex {
    static char[] hexValues = new char[16];
  static int COLS_PER_ROW;
  static int BYTES_PER_ROW;

  public static String asHex(byte[] paramArrayOfByte, int paramInt)
  {
    return asHex(paramArrayOfByte, paramInt, true);
  }

  public static byte[] asHexBytes(byte[] paramArrayOfByte, int paramInt, boolean paramBoolean)
  {
    int i = Math.min(paramInt, paramArrayOfByte.length);

    int j = 0;
    byte[] arrayOfByte;
    if (paramBoolean) {
      arrayOfByte = new byte[i * 2 + 2];
      arrayOfByte[0] = 48;
      arrayOfByte[1] = 120;
      j += 2;
    }
    else {
      arrayOfByte = new byte[i * 2];
    }
    for (int k = 0; k < i; ++k) {
      arrayOfByte[(j++)] = (byte)hexValues[((paramArrayOfByte[k] & 0xF0) >> 4)];
      arrayOfByte[(j++)] = (byte)hexValues[(paramArrayOfByte[k] & 0xF)];
    }
    return arrayOfByte;
  }

  public static String asHex(byte[] paramArrayOfByte, int paramInt, boolean paramBoolean)
  {
    return new String(asHexBytes(paramArrayOfByte, paramInt, paramBoolean), 0);
  }

  public static byte[] fromHexString(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;

    if ((paramArrayOfByte[0] == 48) && (((paramArrayOfByte[1] == 120) || (paramArrayOfByte[1] == 88))))
    {
      i += 2;
      paramInt -= 2;
    }

    int j = paramInt / 2;
    byte[] arrayOfByte = new byte[j];

    int k = 0;
    while (k < j)
    {
      arrayOfByte[k] = (byte)
        ((hexValueOf(paramArrayOfByte[i]) << 4 | hexValueOf(paramArrayOfByte[(i + 1)])) & 0xFF);
      ++k;
      i += 2;
    }
    return arrayOfByte;
  }

  public static String asHex(int paramInt)
  {
    char[] arrayOfChar = new char[2];
    arrayOfChar[0] = hexValues[((paramInt & 0xF0) >> 4)];
    arrayOfChar[1] = hexValues[(paramInt & 0xF)];
    return new String(arrayOfChar);
  }

  public static String asHex(byte[] paramArrayOfByte)
  {
    return asHex(paramArrayOfByte, paramArrayOfByte.length);
  }

  public static int hexValueOf(int paramInt)
  {
    if ((paramInt >= 48) && (paramInt <= 57)) return paramInt - 48;
    if ((paramInt >= 97) && (paramInt <= 102)) return paramInt - 97 + 10;
    if ((paramInt >= 65) && (paramInt <= 70)) return paramInt - 65 + 10;
    return 0;
  }

  public static String dump(byte[] paramArrayOfByte)
  {
    return dump(paramArrayOfByte, 0, paramArrayOfByte.length);
  }

  public static String dump(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    if (paramInt1 < 0) {
      paramInt1 = 0;
    }
    int i = Math.min(paramArrayOfByte.length, paramInt1 + paramInt2);

    int j = paramInt1 & (BYTES_PER_ROW - 1 ^ 0xFFFFFFFF);

    int k = i + (BYTES_PER_ROW - 1) & (BYTES_PER_ROW - 1 ^ 0xFFFFFFFF);

    StringBuffer localStringBuffer = new StringBuffer();

    int l = j;

    for (int i1 = j; i1 < k; ++i1)
    {
      if (i1 % BYTES_PER_ROW == 0)
      {
        lineLabel(localStringBuffer, i1);
        l = i1;
      }
      if ((i1 < paramInt1) || (i1 >= i))
        localStringBuffer.append("  ");
      else {
        localStringBuffer.append(asHex(paramArrayOfByte[i1]));
      }
      if (i1 % 2 == 1) {
        localStringBuffer.append(' ');
      }
      if (i1 % BYTES_PER_ROW != BYTES_PER_ROW - 1)
        continue;
      localStringBuffer.append("  ");
      for (int i2 = l; i2 < l + BYTES_PER_ROW; ++i2)
      {
        if ((i2 < paramInt1) || (i2 >= i))
          localStringBuffer.append(' ');
        else
          localStringBuffer.append(toPrint(paramArrayOfByte[i2]));
      }
      localStringBuffer.append('\n');
    }

    return localStringBuffer.toString();
  }

  public static final boolean isHexChar(int paramInt)
  {
    switch (paramInt)
    {
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
      return true;
    }
    return false;
  }

  static char toPrint(byte paramByte)
  {
    int i = paramByte;
    if ((i < 32) || (i > 126)) {
      return '.';
    }
    return (char)i;
  }

  static void lineLabel(StringBuffer paramStringBuffer, int paramInt) {
    String str = new Integer(paramInt).toString();

    StringBuffer localStringBuffer = new StringBuffer("    ");
    localStringBuffer.insert(5 - str.length(), str);
    localStringBuffer.setLength(5);
    paramStringBuffer.append(localStringBuffer);
    paramStringBuffer.append(": ");
  }

  static
  {
    hexValues[0] = '0';
    hexValues[1] = '1';
    hexValues[2] = '2';
    hexValues[3] = '3';
    hexValues[4] = '4';
    hexValues[5] = '5';
    hexValues[6] = '6';
    hexValues[7] = '7';
    hexValues[8] = '8';
    hexValues[9] = '9';
    hexValues[10] = 'a';
    hexValues[11] = 'b';
    hexValues[12] = 'c';
    hexValues[13] = 'd';
    hexValues[14] = 'e';
    hexValues[15] = 'f';

    COLS_PER_ROW = 8;
    BYTES_PER_ROW = COLS_PER_ROW * 2;
  }
}
