/**
 * @id LEX_02_01_025_RUNTIME_SUPPLEMENTARY_STRING_LENGTH
 * @expect runtime
 * @section 2.1
 * @design 补充平面字符string.length返回2(UTF-16代码单元数)、混合字符length计算 * @note 运行时用例：实际执行验证语义正确性

 */
function main(): void {
  let s1: string = "\u{1F600}"
  if (s1.length !== 2) { throw new Error("Supplementary char length should be 2") }

  let s2: string = "A\u{1F600}B"
  if (s2.length !== 4) { throw new Error("Mixed string length mismatch") }

  let s3: string = "\u{1F600}\u{1F601}"
  if (s3.length !== 4) { throw new Error("Multiple supplementary length mismatch") }

  let s4: string = "A\u{1F600}B\u{1F601}"
  if (s4.length !== 6) { throw new Error("Complex mixed length mismatch") }
}
