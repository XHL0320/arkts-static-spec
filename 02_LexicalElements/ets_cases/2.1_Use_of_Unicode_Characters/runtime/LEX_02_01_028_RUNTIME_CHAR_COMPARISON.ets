/**
 * @id LEX_02_01_028_RUNTIME_CHAR_COMPARISON
 * @expect runtime
 * @section 2.1
 * @design char运行时等值比较: ==, ===, !=, !== * @note 运行时用例：实际执行验证语义正确性

 */
function main(): void {
  let a: char = c'A'
  let b: char = c'\u0041'
  if (a != b) { throw new Error("char == should be true") }
  if (a !== b) { throw new Error("char === should be true") }

  let c: char = c'B'
  if (a == c) { throw new Error("char == different should be false") }
  if (a === c) { throw new Error("char === different should be false") }
  if (a != c === false) { throw new Error("char != should be true") }
}
