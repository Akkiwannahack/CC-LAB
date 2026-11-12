# Compiler Construction Lab (CC-Lab)

[![C](https://img.shields.io/badge/Language-C-blue.svg)](https://en.wikipedia.org/wiki/C_(programming_language))
[![Lex/Flex](https://img.shields.io/badge/Lexer-Flex-orange.svg)](https://github.com/westes/flex)
[![Yacc/Bison](https://img.shields.io/badge/Parser-Bison%2FYacc-green.svg)](https://www.gnu.org/software/bison/)
[![Build](https://img.shields.io/badge/Compiler-GCC-informational.svg)](https://gcc.gnu.org/)

A comprehensive collection of practical experiments for the **Compiler Construction / Compiler Design Laboratory** course, implemented using **Lex (Flex)** for lexical analysis and **Yacc (Bison)** for syntax analysis and parsing in C.

---

## 👨‍💻 Student Details

* **Name:** Akshat Digalwar
* **PRN / Roll No:** 24070521003
* **Semester / Division:** Semester V — Section A
* **Course:** Compiler Construction Laboratory

---

## 📑 Table of Contents

- [Overview](#-overview)
- [Prerequisites & Installation](#-prerequisites--installation)
- [List of Practical Experiments](#-list-of-practical-experiments)
- [Directory Structure](#-directory-structure)
- [Compilation & Execution Guide](#-compilation--execution-guide)
  - [1. Standalone Lex Programs](#1-standalone-lex-programs)
  - [2. Combined Lex and Yacc Programs](#2-combined-lex-and-yacc-programs)
- [Experiment Details & Sample I/O](#-experiment-details--sample-io)
- [License & Acknowledgements](#-license--acknowledgements)

---

## 🔍 Overview

This repository demonstrates the fundamental stages of compiler construction:
* **Lexical Analysis (Scanner):** Tokenization, regular expression matching, token classification, counting patterns, and character conversions using Lex/Flex.
* **Syntax Analysis (Parser):** Context-Free Grammars (CFG), syntax validation, precedence handling, semantic action execution, and error recovery using Yacc/Bison.
* **Intermediate Code Generation (ICG):** Evaluation of expressions and synthesis of Three-Address Code (TAC) representations with temporary variables (`t1`, `t2`, ...).

---

## 🛠 Prerequisites & Installation

To compile and run these practical experiments, you need `flex`, `bison` (or `byacc`), `gcc`, and the standard C math library.

### On Debian / Ubuntu / Linux Mint:
```bash
sudo apt update
sudo apt install build-essential flex bison
```

### On Arch Linux:
```bash
sudo pacman -S base-devel flex bison
```

### On macOS (Homebrew):
```bash
brew install flex bison
```

### On Windows:
You can use **WSL (Windows Subsystem for Linux)**, **MSYS2**, or **WinFlexBison**.

---

## 🧪 List of Practical Experiments

| Practical | Directory | Tools Used | Description |
| :--- | :--- | :--- | :--- |
| **P1** | [`p1/`](./p1) | Lex (Flex) | **Single-Line Comment Counter**: Recognizes and counts C-style single-line comments (`//...`). |
| **P2** | [`p2/`](./p2) | Lex (Flex) | **Source Code Token & Metrics Analyzer**: Counts lines, words, spaces, comments, C keywords, and identifiers. |
| **P3** | [`p3/`](./p3) | Lex (Flex) | **Token Pattern Classifier**: Identifies and counts words starting with `'A'`/`'a'` and numeric literals (integers, floats, scientific notation). |
| **P4** | [`p4/`](./p4) | Lex & Yacc | **Arithmetic Expression Syntax Validator**: Validates arithmetic expressions with operator precedence and nested parentheses. |
| **P5** | [`p5/`](./p5) | Lex (Flex) | **Case Toggle Converter**: Inverts the case of alphabet characters (uppercase to lowercase and vice-versa). |
| **P6** | [`p6/`](./p6) | Lex (Flex) | **Radix Base Converters**: Dual utilities for Decimal-to-Hexadecimal (`p6.l`) and Hexadecimal-to-Decimal (`p6hd.l`) conversion. |
| **P7** | [`p7/`](./p7) | Lex (Flex) | **String Suffix Recognizer**: Checks whether input lines end with the specified domain/extension suffix `.com`. |
| **P8** | [`p8/`](./p8) | Lex & Yacc | **Postfix (RPN) Expression Evaluator**: Evaluates Reverse Polish Notation arithmetic expressions (`+`, `-`, `*`, `/`, `%`, `^`). |
| **P9** | [`p9/`](./p9) | Lex & Yacc | **Infix Calculator with Error Recovery**: Evaluates arithmetic expressions with unary operators (`++`, `--`), precedence rules, and `yyerrok` error recovery. |
| **P10** | [`p10/`](./p10) | Lex & Yacc | **Control Structure & Ternary Validator**: Validates grammar syntax for C `for` loops and conditional ternary statements (`cond ? true : false`). |
| **P11** | [`p11/`](./p11) | Lex & Yacc | **Variable Declaration Syntax Validator**: Validates syntax of C variable declarations (`int a, b;`, `float x;`, `char ch;`). |
| **P12** | [`p12/`](./p12) | Lex & Yacc | **Three-Address Code (TAC) & Expression Evaluator**: Generates intermediate three-address code steps with temporaries (`t1`, `t2`, ...) and computes the final value. |

---

## 📂 Directory Structure

```text
CC-Lab/
├── README.md
├── p1/
│   └── p1.l            # Single-line comment counter
├── p2/
│   └── exp2.l          # Code metrics & token recognizer
├── p3/
│   └── exp3.l          # Words starting with 'A' and number detector
├── p4/
│   ├── exp4.l          # Lexer for arithmetic expression validator
│   └── exp4.y          # Parser grammar for expression validation
├── p5/
│   └── p5.l            # Case toggler
├── p6/
│   ├── p6.l            # Decimal to Hexadecimal converter
│   └── p6hd.l          # Hexadecimal to Decimal converter
├── p7/
│   └── exp7.l          # Line suffix pattern matcher
├── p8/
│   ├── exp8.l          # Lexer for postfix evaluation
│   └── exp8.y          # Parser and calculator for postfix expressions
├── p9/
│   ├── p9.l            # Lexer for advanced infix calculator
│   └── p9.y            # Parser with operator precedence & error recovery
├── p10/
│   ├── p10.l           # Lexer for for-loop and ternary expressions
│   └── p10.y           # Parser grammar for control flow statements
├── p11/
│   ├── p11.l           # Lexer for C variable declarations
│   └── p11.y           # Parser for declaration syntax checking
└── p12/
    ├── p12.l           # Lexer for expression analyzer
    └── p12.y           # TAC generator and arithmetic evaluator
```

---

## 🚀 Compilation & Execution Guide

### 1. Standalone Lex Programs
Applicable to: **p1, p2, p3, p5, p6, p7**

```bash
# Navigate to practical directory
cd p1

# Generate C source from lex specification
lex p1.l          # or: flex p1.l

# Compile using GCC
gcc lex.yy.c -o p1

# Run the executable
./p1
```
*(Press `Ctrl + D` on Linux/macOS or `Ctrl + Z` then `Enter` on Windows to signal EOF if required).*

---

### 2. Combined Lex and Yacc Programs
Applicable to: **p4, p8, p9, p10, p11, p12**

```bash
# Navigate to practical directory
cd p4

# Generate parser tables and header (y.tab.c, y.tab.h)
yacc -d exp4.y    # or: bison -d exp4.y

# Generate lexical analyzer (lex.yy.c)
lex exp4.l        # or: flex exp4.l

# Compile both into a single executable (link math library with -lm when needed)
gcc y.tab.c lex.yy.c -o exp4 -lm

# Execute
./exp4
```

---

## 💡 Experiment Details & Sample I/O

### Practical 1: Comment Counter (`p1`)
* **Input:**
  ```c
  // This is a comment
  int a = 10;
  // Another comment
  ```
* **Output:**
  ```text
  Comments: 2
  ```

---

### Practical 4: Arithmetic Expression Syntax Validator (`p4`)
* **Valid Input:** `(10 + 20) * 3` &rarr; `Valid Expression`
* **Invalid Input:** `10 + * 20` &rarr; `Invalid Expression`

---

### Practical 6: Base Conversions (`p6`)
* **Decimal to Hex (`p6.l`):**
  * Input: `255`
  * Output: `FF`
* **Hex to Decimal (`p6hd.l`):**
  * Input: `1A`
  * Output: `Decimal: 26`

---

### Practical 10: Control Structures & Ternary Validator (`p10`)
* **For Loop Input:** `for(i=0; i<10; i++)` &rarr; `valid`
* **Ternary Operator Input:** `result = (a > b) ? true : false;` &rarr; `valid`

---

### Practical 11: Variable Declaration Validator (`p11`)
* **Valid Input:** `int a, b, c;` &rarr; `Valid`
* **Invalid Input:** `int 1a;` &rarr; `Invalid`

---

### Practical 12: Three-Address Code & Evaluator (`p12`)
* **Input:**
  ```text
  10 + 20 * 3
  ```
* **Output:**
  ```text
  t1 = 20 * 3 = 60
  t2 = 10 + 60 = 70
  Result: 70
  ```

---

## 📜 License & Acknowledgements

Created and maintained by **Akshat Digalwar** for academic coursework in **Compiler Construction**.  
Licensed under the [MIT License](https://opensource.org/licenses/MIT).

