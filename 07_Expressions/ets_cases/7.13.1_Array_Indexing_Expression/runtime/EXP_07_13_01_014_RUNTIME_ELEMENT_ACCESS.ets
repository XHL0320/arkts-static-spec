/**
 * @id EXP_07_13_01_014_RUNTIME_ELEMENT_ACCESS
 * @expect runtime
 * @section 7.13.1
 * @design 验证数组元素基本访问和赋值运行时正确性
 * @note 运行时用例：int 索引读取和修改数组元素值
 */
function main(): void {
  let names: string[] = ["Alice", "Bob", "Carol"];
  let s: string = names[1];
  if (s != "Bob") {
    throw new Error("assertion failed: expected Bob, got " + s);
  }
  names[1] = "Martin";
  let s2: string = names[1];
  if (s2 != "Martin") {
    throw new Error("assertion failed: expected Martin, got " + s2);
  }
  console.log("verified");
}
