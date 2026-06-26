# 02 Lexical Elements - Spec Extract

Source: ArkTS static language specification, chapter 02 Lexical Elements.

## 2.1 Use of Unicode Characters

ArkTS source text is a sequence of Unicode characters. Unicode escape sequences (`\uHHHH`, `\u{H...H}`) are processed early in lexical analysis. Surrogate pairs are combined into single code points. char type uses `c'...'` syntax for character literals, supports 32-bit Unicode code points (U+0000–U+10FFFF). Equality and relational operators are allowed when both operands are char, or one is char and the other numeric (per spec/experimental.md §122-128).

## 2.2 Lexical Input Elements

Source text is tokenized into a sequence of input elements: white space, line terminators, comments, and tokens. The longest possible token is matched at each step (maximal munch rule). Comments are lexical input elements that are ignored (token separator status per spec is implicit).

## 2.3 White Spaces

Recognized white space characters: TAB (U+0009), SP (U+0020), NBSP (U+00A0), ZWNBSP (U+FEFF), Ogham Space Mark (U+1680), various spaces (U+2000–U+200A). White space separates tokens and is otherwise ignored.

## 2.4 Line Separators

Line terminators: LF (U+000A), CR (U+000D), LS (U+2028), PS (U+2029). CRLF sequence is treated as a single separator. "Any sequence of line separators is considered a single separator." Line separators have special meaning in semicolon inference (see §2.11).

## 2.5 Tokens

Tokens are identifiers, keywords, literals, operators, and punctuators. Recognized greedily (longest match).

## 2.6 Identifiers

Start with `$`, `_`, or Unicode letter (Lu, Ll, Lt, Lm, Lo, Nl). Continue with letters, digits, `$`, `_`, ZWJ (U+200D), ZWNJ (U+200C). Cannot be a keyword. Unicode escape sequences resolve to characters that must satisfy ID_Start/ID_Continue.

## 2.7 Keywords

Hard keywords (28): `abstract as async await break case catch class const constructor continue default do else enum extends final false for function if implements import in instanceof interface let new null override private protected public return static super switch this throw true try typeof undefined void while`

Type keywords: `Any bigint BigInt boolean Boolean byte Byte char Char double Double float Float int Int long Long number Number Object object short Short string String void`

Soft keywords: `catch declare finally from get keyof namespace of out readonly set type`

## 2.8 Operators and Punctuators

Arithmetic: `+ - * / % ** ++ --` | Assignment: `= += -= *= /= %= **= <<= >>= >>>= &= ^= |= &&= ||= ??=` | Comparison: `== != === !== < > <= >=` | Bitwise: `& | ^ ~ << >> >>>` | Logical: `&& || ! ??` | Other: `?. ? : ,` | Punctuators: `{ } ( ) [ ] . ; : => @ ...`

Note: `??=` not yet implemented (compile-time error ISSUE-009). `&&=` and `||=` also pending implementation.

## 2.9 Literals

### 2.9.1 Numeric Literals
Decimal, hexadecimal (0x), octal (0o), binary (0b). Underscore separators allowed.

### 2.9.2 Integer Literals
`42` (int), `42L` (long). Underscore NOT at start/end. Type inference: int or long based on value.

### 2.9.3 Floating-Point Literals
`3.14` (double), `3.14f` (float), scientific notation (`1.5e10`), hex float (`0x1.Fp10`).

### 2.9.4 Bigint Literals
`123n`. Hex/octal/binary bigint not yet supported (compile-time error). Underscore NOT before `n`.

### 2.9.5 Boolean Literals
`true`, `false`.

### 2.9.6 String Literals
`"double"` or `'single'`. Escape sequences: `\" \' \\ \n \r \t \b \f \v \0 \xHH \uHHHH \u{H...H}`. `\1`–`\9` are invalid (compile-time error).

### 2.9.7 Multiline String Literal
Backtick `` ` `` strings. Can span multiple lines. Escape sequences processed same as regular strings.

### 2.9.8 Undefined Literal
`undefined` — represents absence of value.

### 2.9.9 Null Literal
`null` — represents null reference.

## 2.10 Comments

`//` single-line, `/* */` multi-line (do NOT nest), `/** */` documentation.

## 2.11 Semicolons

Semicolons are optional. ASI (Automatic Semicolon Insertion) before line terminator, closing `}`, or certain restricted productions.
