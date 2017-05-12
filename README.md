# cppstyle

Automatically fix C++ code to comply to a standard style.

## Usage
```
cleanup.sh [dir] [-e list of files or dirs to exclude]
```

## Requirement
* clang-format (tested with 3.8)
* Both cleanup.sh and cleansrc.sh must be installed in a directory within $PATH.

## Rationale
Is messy code giving you a headache?
Tired of reformatting code manually?
Do you want the style of your code to be consistent?

Look no further! Simply run cleanup.sh on the root of your project and it will clean it up for you.

## Goals
* Readability
* Consistency
* Avoid pitfalls that may lead to bugs

I am an avid fan of the coding style based on K&R, and for years I have formatted my code based on that style. However, in the interest of the above goals, this standard set was conceived. I have spent a lot of time researching, comparing, rationalizing the different ideas and philosophies as to why certain coding styles are recommended. You don't have to waste anymore time and crack your brains out to understand the whys. Simply use this standard and you're done.

### Would it cause problems with git diff or your favorite version control system?
Follow these steps to avoid diff issues:
1. Do a clean checkout
2. Run cleanup.sh on that fresh checkout
3. Stage the changes (e.g. git add)
4. Build
5. Commit

You only have to do this once or every once in a while when you feel that your code is no longer consistent. Don't include any other changes to the code before committing to ensure that only the code formatting is updated. If you have checked-out code that you have been working on prior to the cleanup, simply run cleansrc.sh file.cpp before you check it in to avoid diff problems.

**Note**: For source code that uses templates, compiling that code based on this standard requires at least a C++11 compiler.

