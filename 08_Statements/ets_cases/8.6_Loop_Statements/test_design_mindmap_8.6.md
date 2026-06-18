# 8.6 循环语句  测试设计思维导图

## 一、章节定义 (Section Definition)
- **规范章节**: 8.6 Loop Statements
- **范围**: 循环语句的语法规则与标签约束
- **核心规则**:
  1. 四种循环: while, do-while, for, for-of
  2. 每个循环可附带可选标签 (identifier)
  3. 标签只能被循环体内的 break/continue 引用
  4. 若标签在循环体内未被使用，则编译时报错
  5. 若标签在循环体内的 lambda 表达式中使用，则编译时报错

## 二、子类型枚举 (Sub-type Enumeration)

### 2.1 while 循环
- `while (condition) statement`
- condition 为 boolean 表达式
- 循环体可能执行零次

### 2.2 do-while 循环
- `do statement while (condition);`
- 循环体至少执行一次
- condition 在每次迭代后检查

### 2.3 for 循环
- `for (init; condition; update) statement`
- 支持 let 变量声明初始化
- 条件表达式为 boolean 类型
- update 表达式在每次迭代后执行

### 2.4 for-of 循环
- `for (let variable of iterable) statement`
- 遍历可迭代对象 (数组等)
- 每次迭代绑定新值到变量

### 2.5 标签循环 (Labeled Loop)
- `label: loopStatement`
- 标签标识符遵循标识符命名规则
- 标签作用域为整个循环体
- 标签只能被 break/continue 引用

## 三、测试点分布 (Test Points)

### 3.1 编译通过 (compile-pass) — 5个文件
- STM_08_06_001: 基本 while 循环
- STM_08_06_002: 基本 do-while 循环
- STM_08_06_003: 基本 for 循环
- STM_08_06_004: 基本 for-of 循环
- STM_08_06_005: 带标签循环使用 break label

### 3.2 编译失败 (compile-fail) — 3个文件
- STM_08_06_006: 标签循环体内 lambda 中使用 continue label (规范示例)
- STM_08_06_007: 标签循环体内 lambda 中使用 break label
- STM_08_06_008: break 到未声明的标签

### 3.3 运行时 (runtime) — 3个文件
- STM_08_06_009: while 和 do-while 运行时正确性
- STM_08_06_010: for 和 for-of 运行时正确性
- STM_08_06_011: 带标签循环运行时正确性

## 四、边界值与异常场景 (Boundary & Exception)

### 4.1 编译通过边界
- while 条件为 false 时循环体不执行
- for 循环 init 为空 (省略)
- for-of 遍历空数组
- do-while 条件初始为 false (至少执行一次)
- 标签在 break 中正确引用

### 4.2 编译失败异常
- lambda 表达式内引用外层循环标签 (规范示例)
- break 到不存在的标签
- 在循环体外使用标签
- 标签标识符重复或冲突

### 4.3 运行时异常
- 循环次数正确性 (递增/递减)
- 循环提前终止 (break)
- 循环跳过当前迭代 (continue)
- break label 跳出多层循环
- continue label 跳到外层循环的下一次迭代
- 不同类型循环的嵌套

## 五、文件命名规范 (File Naming)
- 格式: `STM_08_06_XXX_CATEGORY_DESCRIPTION.ets`
- XXX: 三位数字序号 (全局连续: 001-011)
- CATEGORY: PASS / FAIL / RUNTIME
- DESCRIPTION: 简短英文描述
- 思维导图: `test_design_mindmap_8.6.md`

## 六、与其他章节的关系
- 与 8.5 (Break/Continue Statements) 相关 - break/continue 使用标签
- 标签作用域规则与 lambda 表达式相关
- for-of 循环与可迭代对象类型相关
