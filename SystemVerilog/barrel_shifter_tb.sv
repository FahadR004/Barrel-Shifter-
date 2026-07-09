module barrel_shifter_tb;

logic        clk;
logic [2:0]  select_lines;
logic [7:0]  data_in;
logic [7:0]  data_out;

barrel_shifter dut (
    .clk(clk),
    .select_lines(select_lines),
    .data_in(data_in),
    .data_out(data_out)
);

initial 
  begin
      clk = 1'b1;
      forever #5 clk = ~clk;
  end

initial 
  begin
      $dumpfile("dump.vcd");
      $dumpvars(1, barrel_shifter_tb);

      select_lines = 3'b000;
      data_in      = 8'b00001111;
      repeat(2) @(posedge clk);
      #1;

      select_lines = 3'b001;
      @(posedge clk); #2;
      select_lines = 3'b000;
      @(posedge clk); #2;

      select_lines = 3'b010;
      @(posedge clk); #2;
      select_lines = 3'b000;
      @(posedge clk); #2;

      select_lines = 3'b011;
      @(posedge clk); #2;
      select_lines = 3'b000;
      @(posedge clk); #2;

      select_lines = 3'b100;
      @(posedge clk); #2;
      select_lines = 3'b000;
      @(posedge clk); #2;

      select_lines = 3'b101;
      @(posedge clk); #2;
      select_lines = 3'b000;
      @(posedge clk); #2;

      select_lines = 3'b110;
      @(posedge clk); #1;
      select_lines = 3'b000;
      @(posedge clk); #2;

      select_lines = 3'b111;
      @(posedge clk); #2;

      $finish;
  end

endmodule
