# 测试设计思维导图 - 8.11 continue 语句

## 1. 规格定义
- continueStatement: 'continue' 标识符?
- 不带标签：将控制权转移到包含它的最近循环的下一次迭代
- 带标签：将控制权转移到匹配标签标识的循环的下一次迭代
- 编译时错误：continue 出现在循环语句之外
- 编译时错误：标签与任何封闭循环不匹配

## 2. 子类型枚举

### 2.1 不带标签的 continue（无标签）
- 在 for 循环中使用
- 在 while 循环中使用
- 在 do-while 循环中使用

### 2.2 带标签的 continue（有标签）
- 在单层循环中带标签
- 在嵌套循环中带外层标签
- 在多层嵌套循环中带中间层标签
- 在多层嵌套循环中带最外层标签

## 3. 测试点

### 3.1 编译通过 (compile-pass)
- STM_08_11_001: 不带标签的 continue 在 for 循环中
- STM_08_11_002: 带标签的 continue 在嵌套 for 循环中
- STM_08_11_003: 不带标签的 continue 在 while 循环中
- STM_08_11_004: 不带标签的 continue 在 do-while 循环中
- STM_08_11_005: 带标签的 continue 在多层嵌套循环中

### 3.2 编译失败 (compile-fail)
- STM_08_11_006: continue 在循环外部（无循环上下文）
- STM_08_11_007: continue 使用不存在的标签
- STM_08_11_008: continue 使用非循环语句上的标签

### 3.3 运行时 (runtime)
- STM_08_11_009: 不带标签的 continue 在 for 循环中跳过特定迭代
- STM_08_11_010: 带标签的 continue 在嵌套循环中断内层跳到外层
- STM_08_11_011: 不带标签的 continue 在 while 循环中

## 4. 边界值和异常场景

### 4.1 边界值
- continue 在循环的第一条语句
- continue 在循环的最后一条语句（dead code 之后）
- continue 在 if-else 的分支中
- 嵌套循环中使用 continue 跳到不同层级的标签

### 4.2 异常场景
- continue 在 for 循环之外（函数中直接使用）
- continue 在 switch 块中（无封闭循环）
- continue + 标签指向不存在的标签名
- continue + 标签指向非循环语句（如块语句）

## 5. 文件命名约定
- 目录: 8.11_continue_Statements/
  - compile-pass/: STM_08_11_001_PASS_xxx.ets
  - compile-fail/: STM_08_11_00N_FAIL_xxx.ets
  - runtime/: STM_08_11_00N_RUNTIME_xxx.ets
- 编号连续递增，跨类别统一编号
- 5 标签注释块：@id, @expect, @section, @design, @note
