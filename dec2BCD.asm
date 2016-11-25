#  GroupID-7 (15116052_15116059) - Satyam Yadav & Surya Narayan
# Date: October 30, 2016 
# BCD.asm - This program  encrypts the digits present in 
#          an alphanumeric string taken as input by the user,
#          leaving the othercharacers unchannged 



   .data
enter_num :           .asciiz "Enter Number\n"
bcd_out  :            .asciiz "BCD String\n"
bcd0 :                .asciiz "0000 "
bcd1 :                .asciiz "0001 "
bcd2 :                .asciiz "0010 "
bcd3 :                .asciiz "0011 "
bcd4 :                .asciiz "0100 "
bcd5 :                .asciiz "0101 "
bcd6 :                .asciiz "0110 "
bcd7 :                .asciiz "0111 "
bcd8 :                .asciiz "1000 "
bcd9 :                .asciiz "1001 "
str       :           .space   32

   .text
main:

la $a0,enter_num
li $v0,4
syscall

la $a0, str
li $a1, 32
li $v0, 8
syscall 

la $t0,str

la $a0,bcd_out
li $v0,4
syscall

loop:

       lb $t1, 0($t0)
       beqz $t1, terminate
else0:
       li $t2, '0'
       bne $t1 , $t2, else1
       la $a0, bcd0
       li $v0, 4
       syscall
       b iterate

else1:
       li $t2, '1'
       bne $t1 , $t2, else2

       la $a0, bcd1
       li $v0, 4
       syscall
       b iterate
else2: 
       li $t2, '2'
       bne $t1 , $t2, else3
       la $a0,  bcd2
       li $v0, 4
       syscall
       b iterate
else3:
       li $t2, '3'
       bne $t1 , $t2, else4
       la $a0,  bcd3
       li $v0, 4 
       syscall
       b iterate
else4:
       li $t2, '4'
       bne $t1 , $t2, else5
       la $a0,  bcd4
       li $v0, 4 
       syscall
       b iterate
else5:
       li $t2, '5'
       bne $t1 , $t2, else6
       la $a0,  bcd5
       li $v0, 4 
       syscall
       b iterate
else6: 
       li $t2, '6'
       bne $t1 , $t2, else7

       la $a0,  bcd6
       li $v0, 11 
       syscall
       b iterate
else7:
       li $t2, '7'
       bne $t1 , $t2, else8

       la $a0, bcd7
       li $v0, 4
       syscall
       b iterate
else8:
       li $t2, '8'
       bne $t1 , $t2, else9
       la $a0,  bcd8
       li $v0, 4 
       syscall
       b iterate
else9:
       li $t2, '9'
       bne $t1 , $t2, def
       la $a0,  bcd9
       li $v0, 4 
       syscall
       b iterate

def:
       la $a0, ($t1)
       li $v0, 11 
       syscall
iterate:
       addu $t0, $t0, 1
       b loop

terminate:

exit:
li $v0, 10
syscall 