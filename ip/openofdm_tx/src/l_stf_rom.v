/*
 * Legacy short_preamble_rom - TODO
 *
 * Michael Tetemke Mehari michael.mehari@ugent.be
 * Xianjun Jiao xianjun.jiao@imec.be putaoshu@msn.com
 */
`include "openofdm_tx_pre_def.v"

module l_stf_rom
(
  input      [7:0]  addr,
  output reg [31:0] dout  
);

  always @ *
    case (addr)
              0:   dout = 32'h05E305E3;
              1:   dout = 32'hEF0C004D;
              2:   dout = 32'hFE47F5F3;
              3:   dout = 32'h1246FE61;
              4:   dout = 32'h0BC70000;
              5:   dout = 32'h1246FE61; // last 155
              6:   dout = 32'hFE47F5F3;
              7:   dout = 32'hEF0C004D;
              8:   dout = 32'h05E305E3;
              9:   dout = 32'h004DEF0C;
             10:   dout = 32'hF5F3FE47; //last 150
             11:   dout = 32'hFE611246;
             12:   dout = 32'h00000BC7;
             13:   dout = 32'hFE611246;
             14:   dout = 32'hF5F3FE47;
             15:   dout = 32'h004DEF0C; // last 145
             16:   dout = 32'h05E305E3;
             17:   dout = 32'hEF0C004D;
             18:   dout = 32'hFE47F5F3;
             19:   dout = 32'h1246FE61;
             20:   dout = 32'h0BC70000; // last 140
             21:   dout = 32'h1246FE61;
             22:   dout = 32'hFE47F5F3;
             23:   dout = 32'hEF0C004D;
             24:   dout = 32'h05E305E3;
             25:   dout = 32'h004DEF0C; // last 135
             26:   dout = 32'hF5F3FE47;
             27:   dout = 32'hFE611246;
             28:   dout = 32'h00000BC7;
             29:   dout = 32'hFE611246;
             30:   dout = 32'hF5F3FE47; // last 130
             31:   dout = 32'h004DEF0C;
             32:   dout = 32'h05E305E3;
             33:   dout = 32'hEF0C004D;
             34:   dout = 32'hFE47F5F3;
             35:   dout = 32'h1246FE61; // last 125
             36:   dout = 32'h0BC70000;
             37:   dout = 32'h1246FE61;
             38:   dout = 32'hFE47F5F3;
             39:   dout = 32'hEF0C004D;
             40:   dout = 32'h05E305E3; // last 120
             41:   dout = 32'h004DEF0C;
             42:   dout = 32'hF5F3FE47;
             43:   dout = 32'hFE611246;
             44:   dout = 32'h00000BC7;
             45:   dout = 32'hFE611246; // last 115
             46:   dout = 32'hF5F3FE47;
             47:   dout = 32'h004DEF0C;
             48:   dout = 32'h05E305E3;
             49:   dout = 32'hEF0C004D;
             50:   dout = 32'hFE47F5F3; // last 110
             51:   dout = 32'h1246FE61;
             52:   dout = 32'h0BC70000;
             53:   dout = 32'h1246FE61;
             54:   dout = 32'hFE47F5F3;
             55:   dout = 32'hEF0C004D; // last 105
             56:   dout = 32'h05E305E3;
             57:   dout = 32'h004DEF0C;
             58:   dout = 32'hF5F3FE47;
             59:   dout = 32'hFE611246;
             60:   dout = 32'h00000BC7; // last 100
             61:   dout = 32'hFE611246;
             62:   dout = 32'hF5F3FE47;
             63:   dout = 32'h004DEF0C;
             64:   dout = 32'h05E305E3;
             65:   dout = 32'hEF0C004D; //last 95 start here
             66:   dout = 32'hFE47F5F3;
             67:   dout = 32'h1246FE61;
             68:   dout = 32'h0BC70000;
             69:   dout = 32'h1246FE61;
             70:   dout = 32'hFE47F5F3; //last 90 start here
             71:   dout = 32'hEF0C004D;
             72:   dout = 32'h05E305E3;
             73:   dout = 32'h004DEF0C;
             74:   dout = 32'hF5F3FE47;
             75:   dout = 32'hFE611246; // last 85 start here
             76:   dout = 32'h00000BC7;
             77:   dout = 32'hFE611246;
             78:   dout = 32'hF5F3FE47;
             79:   dout = 32'h004DEF0C;
             80:   dout = 32'h05E305E3; // last 80 start here
             81:   dout = 32'hEF0C004D;
             82:   dout = 32'hFE47F5F3;
             83:   dout = 32'h1246FE61;
             84:   dout = 32'h0BC70000;
             85:   dout = 32'h1246FE61; // last 75 start here
             86:   dout = 32'hFE47F5F3;
             87:   dout = 32'hEF0C004D;
             88:   dout = 32'h05E305E3;
             89:   dout = 32'h004DEF0C;
             90:   dout = 32'hF5F3FE47; // last 70 start here
             91:   dout = 32'hFE611246;
             92:   dout = 32'h00000BC7;
             93:   dout = 32'hFE611246;
             94:   dout = 32'hF5F3FE47;
             95:   dout = 32'h004DEF0C; // last 65 start here
             96:   dout = 32'h05E305E3;
             97:   dout = 32'hEF0C004D;
             98:   dout = 32'hFE47F5F3;
             99:   dout = 32'h1246FE61;
            100:   dout = 32'h0BC70000; //last 60 start here
            101:   dout = 32'h1246FE61;
            102:   dout = 32'hFE47F5F3;
            103:   dout = 32'hEF0C004D;
            104:   dout = 32'h05E305E3;
            105:   dout = 32'h004DEF0C; //last 55 starts here
            106:   dout = 32'hF5F3FE47;
            107:   dout = 32'hFE611246;
            108:   dout = 32'h00000BC7;
            109:   dout = 32'hFE611246;
            110:   dout = 32'hF5F3FE47; //last 50 start here
            111:   dout = 32'h004DEF0C;
            112:   dout = 32'h05E305E3;
            113:   dout = 32'hEF0C004D;
            114:   dout = 32'hFE47F5F3;
            115:   dout = 32'h1246FE61; // last 45 start here
            116:   dout = 32'h0BC70000;
            117:   dout = 32'h1246FE61;
            118:   dout = 32'hFE47F5F3;
            119:   dout = 32'hEF0C004D;
            120:   dout = 32'h05E305E3; //last 40 start here
            121:   dout = 32'h004DEF0C;
            122:   dout = 32'hF5F3FE47;
            123:   dout = 32'hFE611246;
            124:   dout = 32'h00000BC7;
            125:   dout = 32'hFE611246; //last 35 start here
            126:   dout = 32'hF5F3FE47;
            127:   dout = 32'h004DEF0C;
            128:   dout = 32'h05E305E3;
            129:   dout = 32'hEF0C004D;
            130:   dout = 32'hFE47F5F3; // last 30 start here
            131:   dout = 32'h1246FE61;
            132:   dout = 32'h0BC70000;
            133:   dout = 32'h1246FE61;
            134:   dout = 32'hFE47F5F3;
            135:   dout = 32'hEF0C004D; //last 25 samples start here
            136:   dout = 32'h05E305E3;
            137:   dout = 32'h004DEF0C;
            138:   dout = 32'hF5F3FE47;
            139:   dout = 32'hFE611246;
            140:   dout = 32'h00000BC7; // last 20 samples start here
            141:   dout = 32'hFE611246;
            142:   dout = 32'hF5F3FE47;
            143:   dout = 32'h004DEF0C;
            144:   dout = 32'h05E305E3;
            145:   dout = 32'hEF0C004D; // last 15 samples start here
            146:   dout = 32'hFE47F5F3;
            147:   dout = 32'h1246FE61;
            148:   dout = 32'h0BC70000;
            149:   dout = 32'h1246FE61;
            150:   dout = 32'hFE47F5F3; // Last 10 samples are here
            151:   dout = 32'hEF0C004D;
            152:   dout = 32'h05E305E3;
            153:   dout = 32'h004DEF0C;
            154:   dout = 32'hF5F3FE47;
            155:   dout = 32'hFE611246; // Last five samples start here
            156:   dout = 32'h00000BC7;
            157:   dout = 32'hFE611246;
            158:   dout = 32'hF5F3FE47;
            159:   dout = 32'h004DEF0C;

          default: dout = 32'h00000000;
    endcase

endmodule
