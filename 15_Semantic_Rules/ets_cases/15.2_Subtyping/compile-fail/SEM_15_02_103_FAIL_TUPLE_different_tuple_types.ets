/*
 * @id SEM_15_02_103_FAIL_TUPLE_different_tuple_types
 * @expect compile-fail
 * @section 15.2.4
 * @design 规范 15.2.4：元组类型 T(P1,...,Pn) 和 S(P1,...,Pm) 之间，如果 n != m 或任何对应元素类型不相同，则它们不是子类型
 * @note 测试元组类型不匹配（编译失败）
 */

// 测试元组类型不匹配（编译失败）
function test_tuple_type_mismatch(): void {
  let t1: [number] = [1]
  let t2: [string, number] = ["hello", 2]
  let t3: [number, string] = [1, "hello"]
  
  // 编译失败：不同长度的元组类型之间没有子类型关系
  t1 = t2  // Error: Type '[string, number]' is not assignable to type '[number]'
  
  // 编译失败：相同长度但元素类型不同的元组类型之间没有子类型关系
  t2 = t3  // Error: Type '[number, string]' is not assignable to type '[string, number]'
}
