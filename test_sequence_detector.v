module test_sequence_detector;
reg sequence_in;
reg clock;
reg reset;
wire detector_out;

sequence_detector uut(.sequence_in(sequence_in),.clock(clock),.reset(reset),.detector_out(detector_out));
initial begin
clock=0;
forever #5 clock=~clock;
end
initial begin
sequence_in=0;
reset=1;
#30;
  reset=0;
#40;
sequence_in=1;
#10;
sequence_in=0;
#10;
sequence_in=1;
#20;
sequence_in=1;
$finish;
end
endmodule
