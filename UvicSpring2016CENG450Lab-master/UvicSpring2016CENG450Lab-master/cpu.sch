<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="XLXN_48(2:0)" />
        <signal name="XLXN_104(1:0)" />
        <signal name="XLXN_13(15:0)" />
        <signal name="XLXN_23(2:0)" />
        <signal name="XLXN_24(2:0)" />
        <signal name="XLXN_49(2:0)" />
        <signal name="XLXN_8" />
        <signal name="INSTR(15:0)" />
        <signal name="XLXN_207(15:0)" />
        <signal name="XLXN_264(1:0)" />
        <signal name="XLXN_275" />
        <signal name="RST" />
        <signal name="XLXN_97(15:0)" />
        <signal name="XLXN_260(15:0)" />
        <signal name="XLXN_87(15:0)" />
        <signal name="XLXN_103(15:0)" />
        <signal name="OUTPUT(15:0)" />
        <signal name="MEM_DATA(15:0)" />
        <signal name="XLXN_259(15:0)" />
        <signal name="Z_FLAG" />
        <signal name="N_FLAG" />
        <signal name="EXT_IN(15:0)" />
        <signal name="XLXN_327" />
        <signal name="BT" />
        <signal name="BA(6:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="INSTR(15:0)" />
        <port polarity="Input" name="RST" />
        <port polarity="Output" name="OUTPUT(15:0)" />
        <port polarity="Output" name="MEM_DATA(15:0)" />
        <port polarity="Output" name="Z_FLAG" />
        <port polarity="Output" name="N_FLAG" />
        <port polarity="Input" name="EXT_IN(15:0)" />
        <port polarity="Input" name="BT" />
        <port polarity="Input" name="BA(6:0)" />
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
            <timestamp>2016-2-26T20:1:53</timestamp>
            <rect width="64" x="416" y="20" height="24" />
            <line x2="480" y1="32" y2="32" x1="416" />
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
            <rect width="64" x="416" y="-108" height="24" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="352" x="64" y="-448" height="512" />
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
        <blockdef name="demux_3to1_16bit">
            <timestamp>2016-2-25T23:55:46</timestamp>
            <rect width="288" x="64" y="-192" height="192" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="352" y="-172" height="24" />
            <line x2="416" y1="-160" y2="-160" x1="352" />
            <rect width="64" x="352" y="-108" height="24" />
            <line x2="416" y1="-96" y2="-96" x1="352" />
            <rect width="64" x="352" y="-44" height="24" />
            <line x2="416" y1="-32" y2="-32" x1="352" />
        </blockdef>
        <blockdef name="instruction_fetch">
            <timestamp>2016-2-26T19:37:39</timestamp>
            <rect width="64" x="368" y="20" height="24" />
            <line x2="432" y1="32" y2="32" x1="368" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="304" x="64" y="-256" height="320" />
        </blockdef>
        <block symbolname="ibuf" name="XLXI_29">
            <blockpin signalname="CLK" name="I" />
            <blockpin signalname="XLXN_327" name="O" />
        </block>
        <block symbolname="control" name="XLXI_4">
            <blockpin signalname="XLXN_327" name="CLK" />
            <blockpin signalname="XLXN_275" name="RST" />
            <blockpin signalname="INSTR(15:0)" name="INSTR(15:0)" />
            <blockpin signalname="XLXN_8" name="RegWriteEn" />
            <blockpin signalname="XLXN_23(2:0)" name="RegRead1(2:0)" />
            <blockpin signalname="XLXN_24(2:0)" name="RegRead2(2:0)" />
            <blockpin signalname="XLXN_48(2:0)" name="RegWrite(2:0)" />
            <blockpin signalname="XLXN_49(2:0)" name="ALUMode(2:0)" />
            <blockpin signalname="XLXN_13(15:0)" name="ImmData(15:0)" />
            <blockpin signalname="XLXN_104(1:0)" name="ALUIN2Src(1:0)" />
            <blockpin signalname="XLXN_264(1:0)" name="ALU_Dest(1:0)" />
        </block>
        <block symbolname="ibuf" name="XLXI_30">
            <blockpin signalname="RST" name="I" />
            <blockpin signalname="XLXN_275" name="O" />
        </block>
        <block symbolname="register_file" name="XLXI_2">
            <blockpin signalname="XLXN_8" name="wr_enable" />
            <blockpin signalname="XLXN_23(2:0)" name="rd_index1(2:0)" />
            <blockpin signalname="XLXN_24(2:0)" name="rd_index2(2:0)" />
            <blockpin signalname="XLXN_48(2:0)" name="wr_index(2:0)" />
            <blockpin signalname="XLXN_260(15:0)" name="wr_data(15:0)" />
            <blockpin signalname="XLXN_97(15:0)" name="rd_data2(15:0)" />
            <blockpin signalname="XLXN_275" name="rst" />
            <blockpin signalname="XLXN_327" name="clk" />
            <blockpin signalname="XLXN_87(15:0)" name="rd_data1(15:0)" />
        </block>
        <block symbolname="mux_3to1_16bit" name="XLXI_5">
            <blockpin signalname="XLXN_97(15:0)" name="in1(15:0)" />
            <blockpin signalname="XLXN_13(15:0)" name="in2(15:0)" />
            <blockpin signalname="XLXN_207(15:0)" name="in3(15:0)" />
            <blockpin signalname="XLXN_104(1:0)" name="sel(1:0)" />
            <blockpin signalname="XLXN_103(15:0)" name="muxout(15:0)" />
        </block>
        <block symbolname="ALU" name="XLXI_1">
            <blockpin signalname="XLXN_327" name="clk" />
            <blockpin signalname="XLXN_275" name="rst" />
            <blockpin signalname="XLXN_87(15:0)" name="in1(15:0)" />
            <blockpin signalname="XLXN_103(15:0)" name="in2(15:0)" />
            <blockpin signalname="XLXN_49(2:0)" name="alu_mode(2:0)" />
            <blockpin signalname="Z_FLAG" name="z_flag" />
            <blockpin signalname="N_FLAG" name="n_flag" />
            <blockpin signalname="XLXN_259(15:0)" name="result(15:0)" />
        </block>
        <block symbolname="demux_3to1_16bit" name="XLXI_46">
            <blockpin signalname="XLXN_259(15:0)" name="muxin(15:0)" />
            <blockpin signalname="XLXN_264(1:0)" name="sel(1:0)" />
            <blockpin signalname="XLXN_260(15:0)" name="muxout1(15:0)" />
            <blockpin signalname="MEM_DATA(15:0)" name="muxout2(15:0)" />
            <blockpin signalname="OUTPUT(15:0)" name="muxout3(15:0)" />
        </block>
        <block symbolname="ibuf16" name="XLXI_42">
            <blockpin signalname="EXT_IN(15:0)" name="I(15:0)" />
            <blockpin signalname="XLXN_207(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="instruction_fetch" name="XLXI_53">
            <blockpin signalname="XLXN_327" name="CLK" />
            <blockpin signalname="XLXN_275" name="RST" />
            <blockpin signalname="BT" name="IsBranchTaken" />
            <blockpin signalname="BA(6:0)" name="BranchAddr(6:0)" />
            <blockpin signalname="INSTR(15:0)" name="Istr_out(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <branch name="CLK">
            <wire x2="352" y1="816" y2="816" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="816" name="CLK" orien="R180" />
        <instance x="352" y="848" name="XLXI_29" orien="R0" />
        <instance x="1136" y="1456" name="XLXI_4" orien="R0">
        </instance>
        <branch name="XLXN_48(2:0)">
            <wire x2="1760" y1="1232" y2="1232" x1="1616" />
            <wire x2="1760" y1="1232" y2="1344" x1="1760" />
            <wire x2="1904" y1="1344" y2="1344" x1="1760" />
        </branch>
        <branch name="XLXN_104(1:0)">
            <wire x2="1728" y1="1360" y2="1360" x1="1616" />
            <wire x2="1728" y1="1360" y2="1600" x1="1728" />
            <wire x2="2400" y1="1600" y2="1600" x1="1728" />
        </branch>
        <branch name="XLXN_13(15:0)">
            <wire x2="1696" y1="1424" y2="1424" x1="1616" />
            <wire x2="1696" y1="1424" y2="1472" x1="1696" />
            <wire x2="2400" y1="1472" y2="1472" x1="1696" />
        </branch>
        <branch name="XLXN_23(2:0)">
            <wire x2="1792" y1="1104" y2="1104" x1="1616" />
            <wire x2="1792" y1="1104" y2="1216" x1="1792" />
            <wire x2="1904" y1="1216" y2="1216" x1="1792" />
        </branch>
        <branch name="XLXN_24(2:0)">
            <wire x2="1776" y1="1168" y2="1168" x1="1616" />
            <wire x2="1776" y1="1168" y2="1280" x1="1776" />
            <wire x2="1904" y1="1280" y2="1280" x1="1776" />
        </branch>
        <branch name="XLXN_49(2:0)">
            <wire x2="1744" y1="1296" y2="1296" x1="1616" />
            <wire x2="1744" y1="1296" y2="1664" x1="1744" />
            <wire x2="2816" y1="1664" y2="1664" x1="1744" />
            <wire x2="2832" y1="1360" y2="1360" x1="2816" />
            <wire x2="2816" y1="1360" y2="1664" x1="2816" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1808" y1="1040" y2="1040" x1="1616" />
            <wire x2="1808" y1="1040" y2="1152" x1="1808" />
            <wire x2="1904" y1="1152" y2="1152" x1="1808" />
        </branch>
        <branch name="INSTR(15:0)">
            <wire x2="896" y1="1632" y2="1632" x1="784" />
            <wire x2="992" y1="1632" y2="1632" x1="896" />
            <wire x2="896" y1="1424" y2="1616" x1="896" />
            <wire x2="896" y1="1616" y2="1632" x1="896" />
            <wire x2="912" y1="1424" y2="1424" x1="896" />
            <wire x2="976" y1="1424" y2="1424" x1="912" />
            <wire x2="1120" y1="1424" y2="1424" x1="976" />
            <wire x2="1136" y1="1424" y2="1424" x1="1120" />
        </branch>
        <branch name="XLXN_264(1:0)">
            <wire x2="1632" y1="1488" y2="1488" x1="1616" />
            <wire x2="1632" y1="1488" y2="1696" x1="1632" />
            <wire x2="2848" y1="1696" y2="1696" x1="1632" />
            <wire x2="3280" y1="1488" y2="1488" x1="2848" />
            <wire x2="2848" y1="1488" y2="1696" x1="2848" />
        </branch>
        <branch name="RST">
            <wire x2="352" y1="928" y2="928" x1="288" />
        </branch>
        <instance x="352" y="960" name="XLXI_30" orien="R0" />
        <iomarker fontsize="28" x="288" y="928" name="RST" orien="R180" />
        <instance x="1904" y="1440" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_260(15:0)">
            <wire x2="1904" y1="1408" y2="1408" x1="1888" />
            <wire x2="1888" y1="1408" y2="1728" x1="1888" />
            <wire x2="3728" y1="1728" y2="1728" x1="1888" />
            <wire x2="3728" y1="1360" y2="1360" x1="3696" />
            <wire x2="3728" y1="1360" y2="1728" x1="3728" />
        </branch>
        <iomarker fontsize="28" x="3760" y="1488" name="OUTPUT(15:0)" orien="R0" />
        <iomarker fontsize="28" x="3760" y="1424" name="MEM_DATA(15:0)" orien="R0" />
        <branch name="OUTPUT(15:0)">
            <wire x2="3760" y1="1488" y2="1488" x1="3696" />
        </branch>
        <branch name="MEM_DATA(15:0)">
            <wire x2="3760" y1="1424" y2="1424" x1="3696" />
        </branch>
        <branch name="XLXN_259(15:0)">
            <wire x2="3280" y1="1360" y2="1360" x1="3248" />
        </branch>
        <branch name="Z_FLAG">
            <wire x2="3376" y1="1104" y2="1104" x1="3248" />
        </branch>
        <branch name="N_FLAG">
            <wire x2="3376" y1="1232" y2="1232" x1="3248" />
        </branch>
        <instance x="3280" y="1520" name="XLXI_46" orien="R0">
        </instance>
        <branch name="XLXN_87(15:0)">
            <wire x2="2704" y1="1056" y2="1056" x1="2352" />
            <wire x2="2704" y1="1056" y2="1232" x1="2704" />
            <wire x2="2832" y1="1232" y2="1232" x1="2704" />
        </branch>
        <instance x="2832" y="1392" name="XLXI_1" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3376" y="1104" name="Z_FLAG" orien="R0" />
        <iomarker fontsize="28" x="3376" y="1232" name="N_FLAG" orien="R0" />
        <branch name="XLXN_103(15:0)">
            <wire x2="2800" y1="1408" y2="1408" x1="2784" />
            <wire x2="2800" y1="1296" y2="1408" x1="2800" />
            <wire x2="2832" y1="1296" y2="1296" x1="2800" />
        </branch>
        <branch name="XLXN_207(15:0)">
            <wire x2="2384" y1="2048" y2="2048" x1="2000" />
            <wire x2="2400" y1="1536" y2="1536" x1="2384" />
            <wire x2="2384" y1="1536" y2="2048" x1="2384" />
        </branch>
        <branch name="XLXN_97(15:0)">
            <wire x2="2400" y1="1408" y2="1408" x1="2352" />
        </branch>
        <instance x="2400" y="1632" name="XLXI_5" orien="R0">
        </instance>
        <branch name="EXT_IN(15:0)">
            <wire x2="1776" y1="2048" y2="2048" x1="1712" />
        </branch>
        <instance x="1776" y="2080" name="XLXI_42" orien="R0" />
        <iomarker fontsize="28" x="1712" y="2048" name="EXT_IN(15:0)" orien="R180" />
        <branch name="BT">
            <wire x2="304" y1="1504" y2="1504" x1="288" />
            <wire x2="352" y1="1504" y2="1504" x1="304" />
        </branch>
        <branch name="BA(6:0)">
            <wire x2="304" y1="1568" y2="1568" x1="288" />
            <wire x2="352" y1="1568" y2="1568" x1="304" />
        </branch>
        <iomarker fontsize="28" x="288" y="1504" name="BT" orien="R180" />
        <iomarker fontsize="28" x="288" y="1568" name="BA(6:0)" orien="R180" />
        <branch name="XLXN_275">
            <wire x2="768" y1="1216" y2="1216" x1="256" />
            <wire x2="256" y1="1216" y2="1440" x1="256" />
            <wire x2="352" y1="1440" y2="1440" x1="256" />
            <wire x2="768" y1="928" y2="928" x1="576" />
            <wire x2="1088" y1="928" y2="928" x1="768" />
            <wire x2="1088" y1="928" y2="1232" x1="1088" />
            <wire x2="1136" y1="1232" y2="1232" x1="1088" />
            <wire x2="1840" y1="928" y2="928" x1="1088" />
            <wire x2="1840" y1="928" y2="1104" x1="1840" />
            <wire x2="1904" y1="1104" y2="1104" x1="1840" />
            <wire x2="2784" y1="928" y2="928" x1="1840" />
            <wire x2="2784" y1="928" y2="1168" x1="2784" />
            <wire x2="2832" y1="1168" y2="1168" x1="2784" />
            <wire x2="768" y1="928" y2="1216" x1="768" />
        </branch>
        <branch name="XLXN_327">
            <wire x2="720" y1="1184" y2="1184" x1="224" />
            <wire x2="224" y1="1184" y2="1376" x1="224" />
            <wire x2="352" y1="1376" y2="1376" x1="224" />
            <wire x2="720" y1="816" y2="816" x1="576" />
            <wire x2="1136" y1="816" y2="816" x1="720" />
            <wire x2="1136" y1="816" y2="1040" x1="1136" />
            <wire x2="1856" y1="816" y2="816" x1="1136" />
            <wire x2="1856" y1="816" y2="1056" x1="1856" />
            <wire x2="1904" y1="1056" y2="1056" x1="1856" />
            <wire x2="2832" y1="816" y2="816" x1="1856" />
            <wire x2="2832" y1="816" y2="1104" x1="2832" />
            <wire x2="720" y1="816" y2="1184" x1="720" />
        </branch>
        <instance x="352" y="1600" name="XLXI_53" orien="R0">
        </instance>
        <iomarker fontsize="28" x="992" y="1632" name="INSTR(15:0)" orien="R0" />
    </sheet>
</drawing>