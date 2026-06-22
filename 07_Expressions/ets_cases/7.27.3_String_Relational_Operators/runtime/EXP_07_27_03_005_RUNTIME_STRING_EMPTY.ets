/**
 * @id EXP_07_27_03_005_RUNTIME_STRING_EMPTY
 * @expect runtime
 * @section 7.27.3
 * @design 验证空字符串参与字典序关系比较的运行时行为：空字符串小于任何非空字符串
 * @note 运行时用例：实际执行验证空字符串的关系比较结果
 */
function main(): void {
  let empty: string = ""
  let nonEmpty: string = "x"
  let anotherEmpty: string = ""

  // Empty string < any non-empty string
  if (!(empty < nonEmpty)) throw new Error("\"\" < \"x\" should be true")
  if (!(empty <= nonEmpty)) throw new Error("\"\" <= \"x\" should be true")

  // Non-empty string > empty string
  if (!(nonEmpty > empty)) throw new Error("\"x\" > \"\" should be true")
  if (!(nonEmpty >= empty)) throw new Error("\"x\" >= \"\" should be true")

  // Empty string is not greater than non-empty
  if (empty > nonEmpty) throw new Error("\"\" > \"x\" should be false")
  if (empty >= nonEmpty) throw new Error("\"\" >= \"x\" should be false")

  // Non-empty is not less than empty
  if (nonEmpty < empty) throw new Error("\"x\" < \"\" should be false")
  if (nonEmpty <= empty) throw new Error("\"x\" <= \"\" should be false")

  // Two empty strings are equal
  if (!(empty <= anotherEmpty)) throw new Error("\"\" <= \"\" should be true")
  if (!(empty >= anotherEmpty)) throw new Error("\"\" >= \"\" should be true")
  if (empty < anotherEmpty) throw new Error("\"\" < \"\" should be false")
  if (empty > anotherEmpty) throw new Error("\"\" > \"\" should be false")

  // Empty vs space character (space has code point 32)
  if (!(empty < " ")) throw new Error("\"\" < \" \" should be true")
  if (!(" " > empty)) throw new Error("\" \" > \"\" should be true")

  console.log("verified")
}
