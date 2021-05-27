This is a repository to store various projects in x-64 assembly.
This repository uses nasm to compile and link the asm files
the commands to do this are stored here unless specified in the projects folder
command to compile:
  nasm -f macho64 <file-name>.asm
command to link:
  ld -macosx_version_min 10.7.0 -o <file-name> <file-name>.o
