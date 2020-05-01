;
; FINAL_PROJECT_Gupta.asm
;
; Created: 11/28/2018 2:35:38 PM
; Author : samri
;


; Replace with your application code
.cseg 
.org  0x0000
.def reg_workhorse=r16
.def reg_SPI_data=r17

.macro        set_pointer
	ldi                @0, low(@2<<1)
	ldi                @1, high(@2<<1)
.endmacro

rjmp setup
.org 0x0100 
.def X_mov= r18
.def Y_mov=r19 
.def fun =r25
.def mov_acc=r20
.def mov_down=r21


Setup: 
			
	call OLED_initialize
	call GFX_clear_array      ; Clear the memory
	set_pointer ZL,ZH,pixel_array
	call OLED_refresh_screen ; clear screen
	

loop:    
	
	set_pointer ZL,ZH, Char_177
	call GFX_set_shape
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,10
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,20
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,30
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,40
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,50
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,60
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,70
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,80
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,90
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,100
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,110
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,120
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	call OLED_refresh_screen
	call delay_1s
	rjmp loop2

loop2:
	
	call GFX_clear_array
	ldi X_mov,0
	ldi Y_mov,10
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,10
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,20
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,30
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,40
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,50
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,60
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,70
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,80
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,90
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,100
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,110
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,120
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	call OLED_refresh_screen
	call delay_1s
	rjmp loop3

loop3:
	call GFX_clear_array
	ldi X_mov,0
	ldi Y_mov,20
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,10
	ldi Y_mov,10
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,20
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,30
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,40
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,50
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,60
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,70
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,80
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,90
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,100
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,110
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,120
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	call OLED_refresh_screen
	call delay_1s
	rjmp loop4

loop4:
	call GFX_clear_array
	ldi X_mov,0
	ldi Y_mov,30
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,10
	ldi Y_mov,20
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,20
	ldi Y_mov,10
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,30
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,40
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,50
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,60
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,70
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,80
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,90
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,100
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,110
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,120
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	call OLED_refresh_screen
	call delay_1s
	rjmp loop5


loop5:
	call GFX_clear_array
	ldi X_mov,0
	ldi Y_mov,40
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,10
	ldi Y_mov,30
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,20
	ldi Y_mov,20
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,30
	ldi Y_mov,10
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,40
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,50
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,60
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,70
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,80
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,90
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,100
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,110
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,120
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	call OLED_refresh_screen
	call delay_1s
	rjmp loop6

loop6:
	call GFX_clear_array
	ldi X_mov,0
	ldi Y_mov,50
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,10
	ldi Y_mov,40
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,20
	ldi Y_mov,30
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,30
	ldi Y_mov,20
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,40
	ldi Y_mov,10
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,50
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,60
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,70
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,80
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,90
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,100
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,110
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,120
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	call OLED_refresh_screen
	call delay_1s
	rjmp loop7

loop7:
	call GFX_clear_array
	ldi X_mov,0
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,10
	ldi Y_mov,50
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,20
	ldi Y_mov,40
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,30
	ldi Y_mov,30
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,40
	ldi Y_mov,20
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,50
	ldi Y_mov,10
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,60
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,70
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,80
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,90
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,100
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,110
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,120
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	call OLED_refresh_screen
	call delay_1s
	rjmp loop8

loop8:
	call GFX_clear_array
	ldi X_mov,0
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,10
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,20
	ldi Y_mov,50
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,30
	ldi Y_mov,40
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,40
	ldi Y_mov,30
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,50
	ldi Y_mov,20
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,60
	ldi Y_mov,10
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,70
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,80
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,90
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,100
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,110
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,120
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	call OLED_refresh_screen
	call delay_1s
	rjmp loop9

loop9:
	call GFX_clear_array
	ldi X_mov,0
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,10
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,20
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,30
	ldi Y_mov,50
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,40
	ldi Y_mov,40
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,50
	ldi Y_mov,30
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,60
	ldi Y_mov,20
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,70
	ldi Y_mov,10
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,80
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,90
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,100
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,110
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,120
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	call OLED_refresh_screen
	call delay_1s
	rjmp loop10

loop10:
	call GFX_clear_array
	ldi X_mov,0
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,10
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,20
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,30
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,40
	ldi Y_mov,50
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,50
	ldi Y_mov,40
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,60
	ldi Y_mov,30
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,70
	ldi Y_mov,20
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,80
	ldi Y_mov,10
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,90
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,100
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,110
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,120
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	call OLED_refresh_screen
	call delay_1s
	rjmp loop11

loop11:
	call GFX_clear_array
	ldi X_mov,0
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,10
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,20
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,30
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,40
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,50
	ldi Y_mov,50
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,60
	ldi Y_mov,40
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,70
	ldi Y_mov,30
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,80
	ldi Y_mov,20
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,90
	ldi Y_mov,10
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,100
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,110
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,120
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	call OLED_refresh_screen
	call delay_1s
	rjmp loop12

loop12:
	call GFX_clear_array
	ldi X_mov,0
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,10
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,20
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,30
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,40
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,50
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,60
	ldi Y_mov,50
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,70
	ldi Y_mov,40
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,80
	ldi Y_mov,30
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,90
	ldi Y_mov,20
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,100
	ldi Y_mov,10
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,110
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,120
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	call OLED_refresh_screen
	call delay_1s
	rjmp loop13


loop13:
	call GFX_clear_array
	ldi X_mov,0
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,10
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,20
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,30
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,40
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,50
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,60
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,70
	ldi Y_mov,50
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,80
	ldi Y_mov,40
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,90
	ldi Y_mov,30
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,100
	ldi Y_mov,20
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,110
	ldi Y_mov,10
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,120
	ldi Y_mov,0
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	call OLED_refresh_screen
	call delay_1s
	rjmp loop14

loop14:
	call GFX_clear_array
	ldi X_mov,0
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,10
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,20
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,30
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,40
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,50
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,60
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,70
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,80
	ldi Y_mov,50
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,90
	ldi Y_mov,40
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,100
	ldi Y_mov,30
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,110
	ldi Y_mov,20
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,120
	ldi Y_mov,10
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	call OLED_refresh_screen
	call delay_1s
	rjmp loop15

loop15:
	call GFX_clear_array
	ldi X_mov,0
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,10
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,20
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,30
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,40
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,50
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,60
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,70
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,80
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,90
	ldi Y_mov,50
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,100
	ldi Y_mov,40
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,110
	ldi Y_mov,30
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,120
	ldi Y_mov,20
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	call OLED_refresh_screen
	call delay_1s
	rjmp loop16


loop16:
	call GFX_clear_array
	ldi X_mov,0
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,10
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,20
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,30
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,40
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,50
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,60
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,70
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,80
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,90
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,100
	ldi Y_mov,50
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,110
	ldi Y_mov,40
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,120
	ldi Y_mov,30
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	call OLED_refresh_screen
	call delay_1s
	rjmp loop17

loop17:
	call GFX_clear_array
	ldi X_mov,0
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,10
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,20
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,30
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,40
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,50
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,60
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,70
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,80
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,90
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,100
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,110
	ldi Y_mov,50
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,120
	ldi Y_mov,40
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	call OLED_refresh_screen
	call delay_1s
	rjmp loop18


loop18:
	call GFX_clear_array
	ldi X_mov,0
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,10
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,20
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,30
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,40
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,50
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,60
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,70
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,80
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,90
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,100
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,110
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,120
	ldi Y_mov,50
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	call OLED_refresh_screen
	call delay_1s
	rjmp loop19

loop19:
	call GFX_clear_array
	ldi X_mov,0
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,10
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	ldi X_mov,20
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,30
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,40
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,50
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,60
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,70
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,80
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,90
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,100
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,110
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array

	ldi X_mov,120
	ldi Y_mov,60
	call GFX_set_array_pos
	call GFX_set_shape
	set_pointer ZL,ZH, Char_177
	call GFX_draw_shape
	set_pointer XL,XH,pixel_array
	
	call OLED_refresh_screen
	call GFX_clear_array
	call delay_1s
	jmp loop



.include "lib_delay.asm"
.include "lib_SSD1306_OLED.asm"
.include "lib_GFX.asm"




