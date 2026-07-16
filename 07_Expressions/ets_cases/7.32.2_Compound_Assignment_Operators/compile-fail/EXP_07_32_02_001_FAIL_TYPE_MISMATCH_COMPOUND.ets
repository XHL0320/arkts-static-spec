/**
 * @id EXP_07_32_02_001_FAIL_TYPE_MISMATCH_COMPOUND
 * @expect compile-fail
 * @section 7.32.2
 * @design 验证复合赋值运算符在类型不匹配时的编译错误：string 不支持 -= *= /= %= 等非拼接运算符；boolean 不支持算术复合；不同类别类型间的复合
 * @note 反向用例：复合赋值本质是 lhs = ((lhs) op (rhs)) as T，当二元运算符 op 不支持操作数类型时，应产生编译错误
 */
function main(): void {
  // === string 不支持非 += 复合运算符 ===

  // string -= string (string 不支持 - 运算符)
  let s1: string = "hello";
  s1 -= "o";

  // string *= int (string 不支持 * 运算符)
  let s2: string = "hello";
  s2 *= 2;

  // string /= int (string 不支持 / 运算符)
  let s3: string = "hello";
  s3 /= 2;

  // string %= int (string 不支持 % 运算符)
  let s4: string = "hello";
  s4 %= 2;

  // string <<= int (string 不支持 <<)
  let s5: string = "hello";
  s5 <<= 1;

  // string &= int (string 不支持 &)
  let s6: string = "hello";
  s6 &= 0xFF;

  // === boolean 不支持算术/移位复合 ===

  // boolean += boolean (boolean 不支持 +)
  let b1: boolean = true;
  b1 += false;

  // boolean -= boolean (boolean 不支持 -)
  let b2: boolean = true;
  b2 -= false;

  // boolean *= boolean (boolean 不支持 *)
  let b3: boolean = true;
  b3 *= false;

  // boolean /= boolean (boolean 不支持 /)
  let b4: boolean = true;
  b4 /= false;

  // boolean <<= int (boolean 不支持移位)
  let b5: boolean = true;
  b5 <<= 1;

  // === 不同类型间的不兼容复合 ===

  // int += string (int + string 无定义)
  let i1: int = 10;
  i1 += "hello";

  // int -= string
  let i2: int = 10;
  i2 -= "hello";

  // int &= string
  let i3: int = 10;
  i3 &= "hello";

  // string |= int
  let str1: string = "hello";
  str1 |= 0xFF;

  // long += boolean
  let l1: long = 100;
  l1 += true;

  // double &= int (double 不支持位运算)
  let d1: double = 3.14;
  d1 &= 0xFF;
}
