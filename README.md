# SimpleCPU
I modified someone else's Simple CPU design so that it would in Quartus. 

To clarify, this CPU design comes from Mike, who wrote a neat little how-to page on
how to build a CPU from logic gates. 
You can see his page here:
http://www.simplecpudesign.com/simple_cpu_v1/index.html

Most of the provided files on his page worked only in Altera, so my purpose was to merely get his simple CPU
working in Quartus. I created all of the block symbol files (.bsf) files from scratch. I then
generated many of the Verilog files you see here. 

Many of the flip-flops used were native to Quartus and were not created by me. 

The RAM, as far as I'm aware, only works if it's a .VHD file.

The purpose of this project was to better understand how you get from a conception of logic gates
to the conception of assembly instructions. I took a digital logic class which explored logic
gates and flip-flops, and I also took a computer architecture class where I learned about Assembly code 
and the general layout of a CPU, but I still felt like there was a disconnect between how you get from logic gates
to the level of a CPU. Mike's page is really helpful in bridging that gap. 

There might be some files included here that are not needed to get the CPU working. 
Since I first finished this project last winter (2020-2021), I couldn't remember
which files were not needed. I was able to get the CPU working in Quartus, but
the files might need slight modifications since I haven't touched the project 
since that time. 
