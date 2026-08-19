module control(input [6:0] op,input [2:0] f3,input f7,output reg rw,mr,mw,asrc,br,jp,output reg [1:0] wb,output reg [3:0] ao); 
  always @* begin 
    rw=0;mr=0;mw=0;asrc=0;br=0;jp=0;wb=0;ao=0; 
    case(op) 
      7'b0110011:begin rw=1;
        case(f3)
          0:ao=f7?1:0;
          2:ao=5;
          4:ao=4;
          6:ao=3;
          7:ao=2;
        endcase 
      end 
      7'b0010011:begin 
        rw=1;asrc=1;
        case(f3)
          0:ao=0;
          4:ao=4;
          6:ao=3;
          7:ao=2;
        endcase 
      end 
      7'b0000011:begin 
        rw=1;mr=1;asrc=1;wb=1;
      end 
      7'b0100011:begin 
        mw=1;asrc=1;
      end 
      7'b1100011:begin 
        br=1;ao=1;
      end 
      7'b1101111:begin 
        rw=1;jp=1;wb=2;
      end 7'b0110111:begin 
        rw=1;wb=2;
      end 
    endcase 
  end 
endmodule
