# Using CLISP REPL

## Start REPL
```bash
clisp
```

## Basic Usage

### Evaluate expressions
```lisp
(+ 1 2 3)  ; Returns 6
(print "Hello")  ; Prints "Hello"
```

### Define functions
```lisp
(defun square (x) (* x x))
(square 5)  ; Returns 25
```

### Variables
```lisp
(setq x 10)  ; Set variable
x  ; Returns 10
```

## File Operations

### Load LISP file
```lisp
(load "mycode.lisp")
```

### Run script directly
```bash
clisp mycode.lisp
```

## REPL Commands

### Exit REPL
```lisp
(exit)
; or Ctrl+D
```

### Help
```lisp
(apropos "string")  ; Search functions
(describe 'function-name)  ; Get info
```
