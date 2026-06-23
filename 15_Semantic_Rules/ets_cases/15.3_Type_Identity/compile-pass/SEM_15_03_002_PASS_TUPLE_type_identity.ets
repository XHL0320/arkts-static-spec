/*
 * @id SEM_15_03_002_PASS_TUPLE_type_identity
 * @expect compile-pass
 * @section 15.3
 * @design 规范 15.3：元组类型 T(P1,...,Pn) 和 S(P1,...,Pm) 相同，如果 n == m 且每个 Ti 和 Si 相同
 * @note 测试元组类型身份
 */

// 测试元组类型身份
function test_tuple_type_identity(): void {
  let t1: [number] = [1]
  let t2: [number] = [2]
  
  // 相同元组类型
  t1 = t2  // OK: 相同类型
  
  let t3: [number, string] = [1, "hello"]
  let t4: [number, string] = [2, "world"]
  
  // 相同元组类型
  t3 = t4  // OK: 相同类型
  
  console.log("Tuple type identity test passed")
}

// 测试不同元组类型
function test_diferent_tuple_type_identity(): void {
  let t1: [number] = [1]
  let t2: [number, string] = [1, "hello"]
  
  // 不同元组类型
  // t1 = t2  // Error: 不同类型
  
  console.log("Different tuple type identity test passed")
}
