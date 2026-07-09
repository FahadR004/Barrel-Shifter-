module barrel_shifter (
    input  logic        clk,
    input  logic [2:0]  select_lines,
    input  logic [7:0]  data_in,
    output logic [7:0]  data_out
);

always_ff @(posedge clk) begin
    case (select_lines)
        3'b000: data_out <= data_in;
        3'b001: data_out <= {data_in[0], data_in[7:1]};
        3'b010: data_out <= {data_in[1:0], data_in[7:2]};
        3'b011: data_out <= {data_in[2:0], data_in[7:3]};
        3'b100: data_out <= {data_in[3:0], data_in[7:4]};
        3'b101: data_out <= {data_in[4:0], data_in[7:5]};
        3'b110: data_out <= {data_in[5:0], data_in[7:6]};
        3'b111: data_out <= {data_in[6:0], data_in[7]};
    endcase
end

endmodule
