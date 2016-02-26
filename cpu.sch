<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_116(15:0)" />
        <signal name="XLXN_117(15:0)" />
        <signal name="N_FLAG" />
        <signal name="Z_FLAG" />
        <signal name="XLXN_48(2:0)" />
        <signal name="RESULT(15:0)" />
        <signal name="XLXN_190(15:0)" />
        <signal name="XLXN_104(1:0)" />
        <signal name="XLXN_103(15:0)" />
        <signal name="XLXN_194(15:0)" />
        <signal name="XLXN_97(15:0)" />
        <signal name="XLXN_13(15:0)" />
        <signal name="XLXN_87(15:0)" />
        <signal name="XLXN_23(2:0)" />
        <signal name="XLXN_24(2:0)" />
        <signal name="XLXN_49(2:0)" />
        <signal name="XLXN_202(2:0)" />
        <signal name="XLXN_8" />
        <signal name="XLXN_206(15:0)" />
        <signal name="XLXN_207(15:0)" />
        <signal name="EXT_IN(15:0)" />
        <signal name="CLK" />
        <signal name="RST" />
        <signal name="XLXN_215" />
        <signal name="XLXN_216" />
        <signal name="INSTR(15:0)" />
        <port polarity="Output" name="N_FLAG" />
        <port polarity="Output" name="Z_FLAG" />
        <port polarity="Output" name="RESULT(15:0)" />
        <port polarity="Input" name="EXT_IN(15:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RST" />
        <port polarity="Input" name="INSTR(15:0)" />
        <blockdef name="ALU">
            <timestamp>2016-2-22T5:50:34</timestamp>
            <rect width="288" x="64" y="-320" height="320" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="416" y1="-288" y2="-288" x1="352" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <blockdef name="register_file">
            <timestamp>2016-2-22T7:32:18</timestamp>
            <rect width="320" x="64" y="-416" height="416" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="384" y="-44" height="24" />
            <line x2="448" y1="-32" y2="-32" x1="384" />
            <line x2="0" y1="-336" y2="-336" x1="64" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <rect width="64" x="384" y="-396" height="24" />
            <line x2="448" y1="-384" y2="-384" x1="384" />
        </blockdef>
        <blockdef name="control">
            <timestamp>2016-2-22T22:52:54</timestamp>
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="480" y1="-416" y2="-416" x1="416" />
            <rect width="64" x="416" y="-364" height="24" />
            <line x2="480" y1="-352" y2="-352" x1="416" />
            <rect width="64" x="416" y="-300" height="24" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <rect width="64" x="416" y="-236" height="24" />
            <line x2="480" y1="-224" y2="-224" x1="416" />
            <rect width="64" x="416" y="-172" height="24" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
            <rect width="352" x="64" y="-448" height="448" />
            <rect width="64" x="416" y="-108" height="24" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
        </blockdef>
        <blockdef name="mux_3to1_16bit">
            <timestamp>2016-2-22T22:42:25</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <blockdef name="ibuf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="ibuf16">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <rect width="96" x="128" y="-44" height="24" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <rect width="64" x="0" y="-44" height="24" />
        </blockdef>
        <block symbolname="ALU" name="XLXI_1">
            <blockpin signalname="XLXN_215" name="clk" />
            <blockpin signalname="XLXN_216" name="rst" />
            <blockpin signalname="XLXN_87(15:0)" name="in1(15:0)" />
            <blockpin signalname="XLXN_103(15:0)" name="in2(15:0)" />
            <blockpin signalname="XLXN_49(2:0)" name="alu_mode(2:0)" />
            <blockpin signalname="Z_FLAG" name="z_flag" />
            <blockpin signalname="N_FLAG" name="n_flag" />
            <blockpin signalname="RESULT(15:0)" name="result(15:0)" />
        </block>
        <block symbolname="register_file" name="XLXI_2">
            <blockpin signalname="XLXN_8" name="wr_enable" />
            <blockpin signalname="XLXN_23(2:0)" name="rd_index1(2:0)" />
            <blockpin signalname="XLXN_24(2:0)" name="rd_index2(2:0)" />
            <blockpin signalname="XLXN_48(2:0)" name="wr_index(2:0)" />
            <blockpin signalname="RESULT(15:0)" name="wr_data(15:0)" />
            <blockpin signalname="XLXN_97(15:0)" name="rd_data2(15:0)" />
            <blockpin signalname="XLXN_216" name="rst" />
            <blockpin signalname="XLXN_215" name="clk" />
            <blockpin signalname="XLXN_87(15:0)" name="rd_data1(15:0)" />
        </block>
        <block symbolname="mux_3to1_16bit" name="XLXI_5">
            <blockpin signalname="XLXN_97(15:0)" name="in1(15:0)" />
            <blockpin signalname="XLXN_13(15:0)" name="in2(15:0)" />
            <blockpin signalname="XLXN_207(15:0)" name="in3(15:0)" />
            <blockpin signalname="XLXN_104(1:0)" name="sel(1:0)" />
            <blockpin signalname="XLXN_103(15:0)" name="muxout(15:0)" />
        </block>
        <block symbolname="control" name="XLXI_4">
            <blockpin signalname="XLXN_215" name="CLK" />
            <blockpin signalname="XLXN_216" name="RST" />
            <blockpin signalname="XLXN_206(15:0)" name="INSTR(15:0)" />
            <blockpin signalname="XLXN_8" name="RegWriteEn" />
            <blockpin signalname="XLXN_23(2:0)" name="RegRead1(2:0)" />
            <blockpin signalname="XLXN_24(2:0)" name="RegRead2(2:0)" />
            <blockpin signalname="XLXN_48(2:0)" name="RegWrite(2:0)" />
            <blockpin signalname="XLXN_49(2:0)" name="ALUMode(2:0)" />
            <blockpin signalname="XLXN_13(15:0)" name="ImmData(15:0)" />
            <blockpin signalname="XLXN_104(1:0)" name="ALUIN2Src(1:0)" />
        </block>
        <block symbolname="ibuf" name="XLXI_29">
            <blockpin signalname="CLK" name="I" />
            <blockpin signalname="XLXN_215" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_30">
            <blockpin signalname="RST" name="I" />
            <blockpin signalname="XLXN_216" name="O" />
        </block>
        <block symbolname="ibuf16" name="XLXI_41">
            <blockpin signalname="INSTR(15:0)" name="I(15:0)" />
            <blockpin signalname="XLXN_206(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="ibuf16" name="XLXI_42">
            <blockpin signalname="EXT_IN(15:0)" name="I(15:0)" />
            <blockpin signalname="XLXN_207(15:0)" name="O(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2336" y="1392" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1408" y="1456" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1888" y="1648" name="XLXI_5" orien="R0">
        </instance>
        <instance x="720" y="1456" name="XLXI_4" orien="R0">
        </instance>
        <branch name="N_FLAG">
            <wire x2="2768" y1="1232" y2="1232" x1="2752" />
            <wire x2="2880" y1="1232" y2="1232" x1="2768" />
        </branch>
        <branch name="Z_FLAG">
            <wire x2="2768" y1="1104" y2="1104" x1="2752" />
            <wire x2="2880" y1="1104" y2="1104" x1="2768" />
        </branch>
        <branch name="XLXN_48(2:0)">
            <wire x2="1280" y1="1232" y2="1232" x1="1200" />
            <wire x2="1280" y1="1232" y2="1360" x1="1280" />
            <wire x2="1408" y1="1360" y2="1360" x1="1280" />
        </branch>
        <branch name="RESULT(15:0)">
            <wire x2="1376" y1="1424" y2="1712" x1="1376" />
            <wire x2="2784" y1="1712" y2="1712" x1="1376" />
            <wire x2="1408" y1="1424" y2="1424" x1="1376" />
            <wire x2="2784" y1="1360" y2="1360" x1="2752" />
            <wire x2="2784" y1="1360" y2="1712" x1="2784" />
            <wire x2="2816" y1="1360" y2="1360" x1="2784" />
        </branch>
        <branch name="XLXN_104(1:0)">
            <wire x2="1248" y1="1360" y2="1360" x1="1200" />
            <wire x2="1248" y1="1360" y2="1616" x1="1248" />
            <wire x2="1888" y1="1616" y2="1616" x1="1248" />
        </branch>
        <branch name="XLXN_103(15:0)">
            <wire x2="2288" y1="1424" y2="1424" x1="2272" />
            <wire x2="2336" y1="1296" y2="1296" x1="2288" />
            <wire x2="2288" y1="1296" y2="1424" x1="2288" />
        </branch>
        <branch name="XLXN_97(15:0)">
            <wire x2="1888" y1="1424" y2="1424" x1="1856" />
        </branch>
        <branch name="XLXN_13(15:0)">
            <wire x2="1232" y1="1424" y2="1424" x1="1200" />
            <wire x2="1232" y1="1424" y2="1488" x1="1232" />
            <wire x2="1888" y1="1488" y2="1488" x1="1232" />
        </branch>
        <branch name="XLXN_87(15:0)">
            <wire x2="1872" y1="1072" y2="1072" x1="1856" />
            <wire x2="1872" y1="1072" y2="1232" x1="1872" />
            <wire x2="2336" y1="1232" y2="1232" x1="1872" />
        </branch>
        <branch name="XLXN_23(2:0)">
            <wire x2="1312" y1="1104" y2="1104" x1="1200" />
            <wire x2="1312" y1="1104" y2="1232" x1="1312" />
            <wire x2="1408" y1="1232" y2="1232" x1="1312" />
        </branch>
        <branch name="XLXN_24(2:0)">
            <wire x2="1296" y1="1168" y2="1168" x1="1200" />
            <wire x2="1296" y1="1168" y2="1296" x1="1296" />
            <wire x2="1408" y1="1296" y2="1296" x1="1296" />
        </branch>
        <branch name="XLXN_49(2:0)">
            <wire x2="1264" y1="1296" y2="1296" x1="1200" />
            <wire x2="1264" y1="1296" y2="1680" x1="1264" />
            <wire x2="2320" y1="1680" y2="1680" x1="1264" />
            <wire x2="2336" y1="1360" y2="1360" x1="2320" />
            <wire x2="2320" y1="1360" y2="1680" x1="2320" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1328" y1="1040" y2="1040" x1="1200" />
            <wire x2="1328" y1="1040" y2="1168" x1="1328" />
            <wire x2="1408" y1="1168" y2="1168" x1="1328" />
        </branch>
        <branch name="XLXN_206(15:0)">
            <wire x2="704" y1="1424" y2="1424" x1="688" />
            <wire x2="720" y1="1424" y2="1424" x1="704" />
        </branch>
        <branch name="RST">
            <wire x2="304" y1="1232" y2="1232" x1="288" />
            <wire x2="448" y1="1232" y2="1232" x1="304" />
        </branch>
        <branch name="CLK">
            <wire x2="448" y1="1040" y2="1040" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="1232" name="RST" orien="R180" />
        <iomarker fontsize="28" x="400" y="1552" name="EXT_IN(15:0)" orien="R180" />
        <iomarker fontsize="28" x="384" y="1424" name="INSTR(15:0)" orien="R180" />
        <iomarker fontsize="28" x="288" y="1040" name="CLK" orien="R180" />
        <branch name="XLXN_215">
            <wire x2="704" y1="1040" y2="1040" x1="672" />
            <wire x2="720" y1="1040" y2="1040" x1="704" />
            <wire x2="1408" y1="928" y2="928" x1="704" />
            <wire x2="1408" y1="928" y2="1072" x1="1408" />
            <wire x2="2336" y1="928" y2="928" x1="1408" />
            <wire x2="2336" y1="928" y2="1104" x1="2336" />
            <wire x2="704" y1="928" y2="1040" x1="704" />
        </branch>
        <branch name="XLXN_216">
            <wire x2="688" y1="1232" y2="1232" x1="672" />
            <wire x2="720" y1="1232" y2="1232" x1="688" />
            <wire x2="688" y1="896" y2="1232" x1="688" />
            <wire x2="1376" y1="896" y2="896" x1="688" />
            <wire x2="1376" y1="896" y2="1120" x1="1376" />
            <wire x2="1408" y1="1120" y2="1120" x1="1376" />
            <wire x2="2304" y1="896" y2="896" x1="1376" />
            <wire x2="2304" y1="896" y2="1168" x1="2304" />
            <wire x2="2336" y1="1168" y2="1168" x1="2304" />
        </branch>
        <instance x="448" y="1072" name="XLXI_29" orien="R0" />
        <instance x="448" y="1264" name="XLXI_30" orien="R0" />
        <iomarker fontsize="28" x="2816" y="1360" name="RESULT(15:0)" orien="R0" />
        <iomarker fontsize="28" x="2880" y="1232" name="N_FLAG" orien="R0" />
        <iomarker fontsize="28" x="2880" y="1104" name="Z_FLAG" orien="R0" />
        <branch name="XLXN_207(15:0)">
            <wire x2="1872" y1="1552" y2="1552" x1="688" />
            <wire x2="1888" y1="1552" y2="1552" x1="1872" />
        </branch>
        <branch name="EXT_IN(15:0)">
            <wire x2="416" y1="1552" y2="1552" x1="400" />
            <wire x2="464" y1="1552" y2="1552" x1="416" />
        </branch>
        <instance x="464" y="1584" name="XLXI_42" orien="R0" />
        <branch name="INSTR(15:0)">
            <wire x2="400" y1="1424" y2="1424" x1="384" />
            <wire x2="464" y1="1424" y2="1424" x1="400" />
        </branch>
        <instance x="464" y="1456" name="XLXI_41" orien="R0" />
    </sheet>
</drawing>