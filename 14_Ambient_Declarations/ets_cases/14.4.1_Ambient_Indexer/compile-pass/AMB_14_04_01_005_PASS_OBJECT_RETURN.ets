/**
 * @id AMB_14_04_01_005_PASS_OBJECT_RETURN
 * @expect compile-pass
 * @section 14.4.1
 * @design declare class 中 ambient indexer，返回 Object 类型
 * @note 正向用例：验证 Object 返回类型索引编译通过
 */
declare class G {
  [index: string]: Object
}
