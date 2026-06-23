/*
 * @id SEM_15_03_001_PASS_ARRAY_type_identity
 * @expect compile-pass
 * @section 15.3
 * @design 规范 15.3：数组类型 T1[] 和 T2[] 相同，如果 T1 和 T2 相同
 * @note 测试数组类型身份
 */

// 测试数组类型身份
function test_array_type_identity(): void {
  let a1: number[] = [1, 2, 3]
  let a2: Array<number> = [4, 5, 6]
  
  // number[] 和 Array<number> 是相同类型
  a1 = a2  // OK: 相同类型
  a2 = a1  // OK: 相同类型
  
  console.log("Array type identity test passed")
}

// 测试不同类型参数的数组类型
function test_diferent_array_type_identity(): void {
  let a1: number[] = [1, 2, 3]
  let a2: string[] = ["a", "b", "c"]
    
  // number[] 和 string[] 不是相同类型
  // a1 = a2  // Error: 不同类型
    
  console.log("Different array type identity test passed")
}
