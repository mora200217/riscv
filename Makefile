.PHONY : clean asm

firmware_words:
	make -C firmware/firmware_words_src/

c:
	make -C firmware/c

asm:
	make -C firmware/asm

#rtl:
#	make -C rtl/
	
clean:
	make -C firmware/c clean
	make -C firmware/asm clean
#	make -C firmware/firmware_words_src/ clean
	
	

asm_2_hw: clean asm
	make -C rtl sim_quark
