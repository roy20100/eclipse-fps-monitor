asm= dgasm
.PHONY: monitor

monitor: monitor.txt monitor.sim
monitor.txt: monitor.s
monitor.sim: monitor.s

%.txt:%.s
	$(asm) -t eclipse_s140 -f eclipse -o $@ $^
%.sim:%.s
	$(asm) -t eclipse_s140 -f simh -o $@ $^
