<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="RST" />
        <signal name="BT" />
        <signal name="BA(6:0)" />
        <signal name="XLXN_514" />
        <signal name="IsBranch" />
        <signal name="ALU_DATA_A(15:0)" />
        <signal name="ALU_DATA_B(15:0)" />
        <signal name="ALU_DATA_IMM(15:0)" />
        <signal name="XLXN_519(2:0)" />
        <signal name="XLXN_520(1:0)" />
        <signal name="XLXN_521(6:0)" />
        <signal name="XLXN_522(1:0)" />
        <signal name="XLXN_524(15:0)" />
        <signal name="EXT_IN(15:0)" />
        <signal name="XLXN_561(15:0)" />
        <signal name="XLXN_562(15:0)" />
        <signal name="OUTPUT(15:0)" />
        <signal name="INSTR(15:0)" />
        <signal name="XLXN_569(15:0)" />
        <signal name="XLXN_570" />
        <signal name="XLXN_571(2:0)" />
        <signal name="XLXN_572(2:0)" />
        <signal name="XLXN_573" />
        <signal name="XLXN_574" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="RST" />
        <port polarity="Input" name="BA(6:0)" />
        <port polarity="Input" name="IsBranch" />
        <port polarity="Output" name="ALU_DATA_A(15:0)" />
        <port polarity="Output" name="ALU_DATA_B(15:0)" />
        <port polarity="Output" name="ALU_DATA_IMM(15:0)" />
        <port polarity="Input" name="EXT_IN(15:0)" />
        <port polarity="Output" name="OUTPUT(15:0)" />
        <port polarity="Output" name="INSTR(15:0)" />
        <blockdef name="control">
            <timestamp>2016-2-27T19:31:11</timestamp>
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
            <rect width="64" x="416" y="-12" height="24" />
            <line x2="480" y1="0" y2="0" x1="416" />
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <rect width="64" x="416" y="-412" height="24" />
            <line x2="480" y1="-400" y2="-400" x1="416" />
            <rect width="64" x="416" y="-380" height="24" />
            <line x2="480" y1="-368" y2="-368" x1="416" />
            <rect width="64" x="416" y="-348" height="24" />
            <line x2="480" y1="-336" y2="-336" x1="416" />
            <rect width="64" x="416" y="-156" height="24" />
            <line x2="480" y1="-144" y2="-144" x1="416" />
            <rect width="64" x="416" y="-108" height="24" />
            <line x2="480" y1="-96" y2="-96" x1="416" />
            <rect width="64" x="416" y="-204" height="24" />
            <line x2="480" y1="-192" y2="-192" x1="416" />
            <rect width="64" x="416" y="36" height="24" />
            <line x2="480" y1="48" y2="48" x1="416" />
            <rect width="64" x="416" y="68" height="24" />
            <line x2="480" y1="80" y2="80" x1="416" />
            <rect width="64" x="416" y="100" height="24" />
            <line x2="480" y1="112" y2="112" x1="416" />
            <rect width="64" x="416" y="132" height="24" />
            <line x2="480" y1="144" y2="144" x1="416" />
            <line x2="-4" y1="-200" y2="-200" x1="60" />
            <line x2="-4" y1="196" y2="196" x1="60" />
            <rect width="64" x="-4" y="184" height="24" />
            <line x2="480" y1="272" y2="272" x1="416" />
            <rect width="64" x="416" y="292" height="24" />
            <line x2="480" y1="304" y2="304" x1="416" />
            <rect width="64" x="416" y="228" height="24" />
            <line x2="480" y1="240" y2="240" x1="416" />
            <rect width="352" x="64" y="-448" height="820" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <rect width="64" x="0" y="-284" height="24" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <rect width="64" x="0" y="-252" height="24" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
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
        <blockdef name="instruction_fetch">
            <timestamp>2016-2-27T19:31:30</timestamp>
            <rect width="64" x="368" y="84" height="24" />
            <line x2="432" y1="96" y2="96" x1="368" />
            <rect width="64" x="368" y="20" height="24" />
            <line x2="432" y1="32" y2="32" x1="368" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="304" x="64" y="-256" height="384" />
        </blockdef>
        <blockdef name="execute_instruction">
            <timestamp>2016-2-27T19:31:58</timestamp>
            <line x2="0" y1="112" y2="112" x1="64" />
            <rect width="64" x="0" y="148" height="24" />
            <line x2="0" y1="160" y2="160" x1="64" />
            <line x2="480" y1="112" y2="112" x1="416" />
            <rect width="64" x="416" y="148" height="24" />
            <line x2="480" y1="160" y2="160" x1="416" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="416" y="-44" height="24" />
            <line x2="480" y1="-32" y2="-32" x1="416" />
            <rect width="64" x="416" y="4" height="24" />
            <line x2="480" y1="16" y2="16" x1="416" />
            <rect width="64" x="416" y="52" height="24" />
            <line x2="480" y1="64" y2="64" x1="416" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="0" y="-220" height="24" />
            <line x2="0" y1="-208" y2="-208" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-432" y2="-432" x1="64" />
            <rect width="64" x="0" y="-380" height="24" />
            <line x2="0" y1="-368" y2="-368" x1="64" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <rect width="64" x="0" y="-284" height="24" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <rect width="64" x="0" y="-88" height="24" />
            <line x2="0" y1="-76" y2="-76" x1="64" />
            <rect width="352" x="64" y="-512" height="800" />
        </blockdef>
        <blockdef name="ram_16x16">
            <timestamp>2016-2-26T9:8:6</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
        </blockdef>
        <block symbolname="control" name="XLXI_55">
            <blockpin signalname="BT" name="CLK" />
            <blockpin signalname="BT" name="RST" />
            <blockpin signalname="XLXN_573" name="WriteEnableIn" />
            <blockpin signalname="INSTR(15:0)" name="INSTR(15:0)" />
            <blockpin signalname="XLXN_569(15:0)" name="RegWriteData(15:0)" />
            <blockpin signalname="XLXN_572(2:0)" name="WriteIndexIn(2:0)" />
            <blockpin signalname="XLXN_521(6:0)" name="CurrentPC(6:0)" />
            <blockpin signalname="XLXN_561(15:0)" name="Extern_In(15:0)" />
            <blockpin signalname="XLXN_570" name="WriteEnableOut" />
            <blockpin name="BranchTaken" />
            <blockpin signalname="XLXN_571(2:0)" name="WriteIndexOut(2:0)" />
            <blockpin name="BranchPC(6:0)" />
            <blockpin signalname="XLXN_519(2:0)" name="ALUMode(2:0)" />
            <blockpin signalname="XLXN_520(1:0)" name="ALUIN2Src(1:0)" />
            <blockpin signalname="XLXN_522(1:0)" name="ALU_Dest(1:0)" />
            <blockpin signalname="ALU_DATA_A(15:0)" name="ALU_Data_A(15:0)" />
            <blockpin signalname="ALU_DATA_B(15:0)" name="ALU_Data_B(15:0)" />
            <blockpin signalname="ALU_DATA_IMM(15:0)" name="ImmData(15:0)" />
            <blockpin name="MemMode(1:0)" />
            <blockpin name="MemDestAddr(2:0)" />
            <blockpin name="MemSrcAddr(2:0)" />
            <blockpin name="MemData(15:0)" />
            <blockpin signalname="XLXN_562(15:0)" name="Extern_Out(15:0)" />
        </block>
        <block symbolname="execute_instruction" name="XLXI_56">
            <blockpin signalname="BT" name="clk" />
            <blockpin signalname="XLXN_514" name="rst" />
            <blockpin signalname="XLXN_570" name="WriteEnableIn" />
            <blockpin signalname="ALU_DATA_A(15:0)" name="ra_in(15:0)" />
            <blockpin signalname="ALU_DATA_B(15:0)" name="rb_in(15:0)" />
            <blockpin signalname="ALU_DATA_IMM(15:0)" name="imm_data_in(15:0)" />
            <blockpin signalname="XLXN_562(15:0)" name="extern_data_in(15:0)" />
            <blockpin signalname="XLXN_519(2:0)" name="alu_mode_in(2:0)" />
            <blockpin signalname="XLXN_520(1:0)" name="alu_input2_sel(1:0)" />
            <blockpin signalname="XLXN_522(1:0)" name="alu_dest(1:0)" />
            <blockpin signalname="XLXN_571(2:0)" name="WriteIndexIn(2:0)" />
            <blockpin signalname="XLXN_573" name="WriteEnableOut" />
            <blockpin signalname="XLXN_524(15:0)" name="MEM_data(15:0)" />
            <blockpin signalname="XLXN_569(15:0)" name="Reg_data(15:0)" />
            <blockpin signalname="OUTPUT(15:0)" name="Output_data(15:0)" />
            <blockpin signalname="XLXN_572(2:0)" name="WriteIndexOut(2:0)" />
        </block>
        <block symbolname="ibuf" name="XLXI_29">
            <blockpin signalname="CLK" name="I" />
            <blockpin signalname="BT" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_30">
            <blockpin signalname="RST" name="I" />
            <blockpin signalname="XLXN_514" name="O" />
        </block>
        <block symbolname="instruction_fetch" name="XLXI_53">
            <blockpin signalname="BT" name="CLK" />
            <blockpin signalname="XLXN_514" name="RST" />
            <blockpin signalname="IsBranch" name="IsBranchTaken" />
            <blockpin signalname="BA(6:0)" name="BranchAddr(6:0)" />
            <blockpin signalname="INSTR(15:0)" name="Istr_out(15:0)" />
            <blockpin signalname="XLXN_521(6:0)" name="PC_out(6:0)" />
        </block>
        <block symbolname="ram_16x16" name="XLXI_58">
            <blockpin name="ADDR(15:0)" />
            <blockpin name="WE" />
            <blockpin signalname="BT" name="CLK" />
            <blockpin signalname="XLXN_524(15:0)" name="D_IN(15:0)" />
            <blockpin name="D_OUT(15:0)" />
        </block>
        <block symbolname="ibuf16" name="XLXI_42">
            <blockpin signalname="EXT_IN(15:0)" name="I(15:0)" />
            <blockpin signalname="XLXN_561(15:0)" name="O(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <instance x="1360" y="1664" name="XLXI_55" orien="R0">
        </instance>
        <text style="fontsize:64;fontname:Arial" x="2536" y="576">Execute</text>
        <text style="fontsize:64;fontname:Arial" x="3616" y="584">Memory</text>
        <rect width="916" x="12" y="636" height="1432" />
        <rect width="1068" x="4372" y="644" height="1432" />
        <text style="fontsize:64;fontname:Arial" x="4768" y="592">Write-Back</text>
        <text style="fontsize:64;fontname:Arial" x="312" y="564">Fetch</text>
        <text style="fontsize:64;fontname:Arial" x="1380" y="592">Decode</text>
        <rect width="1024" x="1040" y="648" height="1416" />
        <rect width="928" x="3344" y="648" height="1432" />
        <rect width="992" x="2172" y="644" height="1432" />
        <branch name="CLK">
            <wire x2="336" y1="688" y2="688" x1="272" />
        </branch>
        <branch name="RST">
            <wire x2="320" y1="800" y2="800" x1="272" />
            <wire x2="336" y1="784" y2="784" x1="320" />
            <wire x2="320" y1="784" y2="800" x1="320" />
        </branch>
        <instance x="160" y="1360" name="XLXI_53" orien="R0">
        </instance>
        <branch name="BA(6:0)">
            <wire x2="160" y1="1328" y2="1328" x1="144" />
            <wire x2="144" y1="1328" y2="1504" x1="144" />
            <wire x2="304" y1="1504" y2="1504" x1="144" />
            <wire x2="304" y1="1504" y2="1584" x1="304" />
            <wire x2="304" y1="1584" y2="1584" x1="240" />
        </branch>
        <branch name="XLXN_514">
            <wire x2="144" y1="928" y2="1200" x1="144" />
            <wire x2="160" y1="1200" y2="1200" x1="144" />
            <wire x2="720" y1="928" y2="928" x1="144" />
            <wire x2="720" y1="928" y2="1184" x1="720" />
            <wire x2="1616" y1="928" y2="928" x1="720" />
            <wire x2="1616" y1="928" y2="1184" x1="1616" />
            <wire x2="2528" y1="1184" y2="1184" x1="1616" />
            <wire x2="720" y1="784" y2="784" x1="560" />
            <wire x2="720" y1="784" y2="928" x1="720" />
            <wire x2="624" y1="1184" y2="1328" x1="624" />
            <wire x2="672" y1="1328" y2="1328" x1="624" />
            <wire x2="720" y1="1184" y2="1184" x1="624" />
        </branch>
        <branch name="BT">
            <wire x2="64" y1="976" y2="1136" x1="64" />
            <wire x2="160" y1="1136" y2="1136" x1="64" />
            <wire x2="768" y1="976" y2="976" x1="64" />
            <wire x2="768" y1="688" y2="688" x1="560" />
            <wire x2="768" y1="688" y2="816" x1="768" />
            <wire x2="768" y1="816" y2="976" x1="768" />
            <wire x2="880" y1="816" y2="816" x1="768" />
            <wire x2="1184" y1="816" y2="816" x1="880" />
            <wire x2="1280" y1="816" y2="816" x1="1184" />
            <wire x2="1280" y1="816" y2="1248" x1="1280" />
            <wire x2="1360" y1="1248" y2="1248" x1="1280" />
            <wire x2="1920" y1="816" y2="816" x1="1280" />
            <wire x2="2944" y1="816" y2="816" x1="1920" />
            <wire x2="2944" y1="816" y2="1408" x1="2944" />
            <wire x2="3520" y1="1408" y2="1408" x1="2944" />
            <wire x2="1920" y1="816" y2="1136" x1="1920" />
            <wire x2="2528" y1="1136" y2="1136" x1="1920" />
            <wire x2="1184" y1="816" y2="1280" x1="1184" />
            <wire x2="1360" y1="1280" y2="1280" x1="1184" />
            <wire x2="880" y1="816" y2="1104" x1="880" />
            <wire x2="880" y1="1104" y2="1104" x1="608" />
            <wire x2="608" y1="1104" y2="1264" x1="608" />
            <wire x2="672" y1="1264" y2="1264" x1="608" />
        </branch>
        <iomarker fontsize="28" x="240" y="1584" name="BA(6:0)" orien="R180" />
        <branch name="IsBranch">
            <wire x2="160" y1="1264" y2="1264" x1="128" />
        </branch>
        <iomarker fontsize="28" x="128" y="1264" name="IsBranch" orien="R180" />
        <instance x="336" y="720" name="XLXI_29" orien="R0" />
        <iomarker fontsize="28" x="272" y="688" name="CLK" orien="R180" />
        <instance x="336" y="816" name="XLXI_30" orien="R0" />
        <iomarker fontsize="28" x="272" y="800" name="RST" orien="R180" />
        <branch name="ALU_DATA_A(15:0)">
            <wire x2="1856" y1="1264" y2="1264" x1="1840" />
            <wire x2="1856" y1="1248" y2="1264" x1="1856" />
            <wire x2="1936" y1="1248" y2="1248" x1="1856" />
            <wire x2="2528" y1="1248" y2="1248" x1="1936" />
            <wire x2="1936" y1="464" y2="1248" x1="1936" />
        </branch>
        <branch name="ALU_DATA_B(15:0)">
            <wire x2="2032" y1="1296" y2="1296" x1="1840" />
            <wire x2="2528" y1="1296" y2="1296" x1="2032" />
            <wire x2="2032" y1="544" y2="1296" x1="2032" />
        </branch>
        <branch name="ALU_DATA_IMM(15:0)">
            <wire x2="1856" y1="1328" y2="1328" x1="1840" />
            <wire x2="1856" y1="1328" y2="1344" x1="1856" />
            <wire x2="2112" y1="1344" y2="1344" x1="1856" />
            <wire x2="2528" y1="1344" y2="1344" x1="2112" />
            <wire x2="2112" y1="608" y2="1344" x1="2112" />
        </branch>
        <branch name="XLXN_519(2:0)">
            <wire x2="1856" y1="1472" y2="1472" x1="1840" />
            <wire x2="2528" y1="1408" y2="1408" x1="1856" />
            <wire x2="1856" y1="1408" y2="1472" x1="1856" />
        </branch>
        <branch name="XLXN_520(1:0)">
            <wire x2="1952" y1="1520" y2="1520" x1="1840" />
            <wire x2="1952" y1="1456" y2="1520" x1="1952" />
            <wire x2="2528" y1="1456" y2="1456" x1="1952" />
        </branch>
        <branch name="XLXN_521(6:0)">
            <wire x2="976" y1="1456" y2="1456" x1="592" />
            <wire x2="976" y1="1456" y2="1632" x1="976" />
            <wire x2="1360" y1="1632" y2="1632" x1="976" />
        </branch>
        <branch name="XLXN_522(1:0)">
            <wire x2="1856" y1="1568" y2="1568" x1="1840" />
            <wire x2="1856" y1="1568" y2="1584" x1="1856" />
            <wire x2="2528" y1="1584" y2="1584" x1="1856" />
        </branch>
        <instance x="3520" y="1504" name="XLXI_58" orien="R0">
        </instance>
        <branch name="XLXN_524(15:0)">
            <wire x2="3504" y1="1584" y2="1584" x1="3008" />
            <wire x2="3520" y1="1472" y2="1472" x1="3504" />
            <wire x2="3504" y1="1472" y2="1584" x1="3504" />
        </branch>
        <instance x="2528" y="1616" name="XLXI_56" orien="R0">
        </instance>
        <instance x="1024" y="2208" name="XLXI_42" orien="R0" />
        <branch name="EXT_IN(15:0)">
            <wire x2="1024" y1="2176" y2="2176" x1="944" />
        </branch>
        <iomarker fontsize="28" x="944" y="2176" name="EXT_IN(15:0)" orien="R180" />
        <branch name="XLXN_562(15:0)">
            <wire x2="2176" y1="1904" y2="1904" x1="1840" />
            <wire x2="2528" y1="1536" y2="1536" x1="2176" />
            <wire x2="2176" y1="1536" y2="1904" x1="2176" />
        </branch>
        <branch name="OUTPUT(15:0)">
            <wire x2="3040" y1="1680" y2="1680" x1="3008" />
        </branch>
        <iomarker fontsize="28" x="3040" y="1680" name="OUTPUT(15:0)" orien="R0" />
        <branch name="XLXN_561(15:0)">
            <wire x2="1296" y1="2176" y2="2176" x1="1248" />
            <wire x2="1360" y1="1856" y2="1856" x1="1296" />
            <wire x2="1296" y1="1856" y2="2176" x1="1296" />
        </branch>
        <branch name="INSTR(15:0)">
            <wire x2="976" y1="1392" y2="1392" x1="592" />
            <wire x2="976" y1="1392" y2="1408" x1="976" />
            <wire x2="688" y1="1408" y2="1728" x1="688" />
            <wire x2="736" y1="1728" y2="1728" x1="688" />
            <wire x2="976" y1="1408" y2="1408" x1="688" />
            <wire x2="976" y1="1344" y2="1392" x1="976" />
            <wire x2="1360" y1="1344" y2="1344" x1="976" />
        </branch>
        <branch name="XLXN_569(15:0)">
            <wire x2="3072" y1="1040" y2="1040" x1="1344" />
            <wire x2="3072" y1="1040" y2="1632" x1="3072" />
            <wire x2="1344" y1="1040" y2="1392" x1="1344" />
            <wire x2="1360" y1="1392" y2="1392" x1="1344" />
            <wire x2="3072" y1="1632" y2="1632" x1="3008" />
        </branch>
        <branch name="XLXN_570">
            <wire x2="2192" y1="1936" y2="1936" x1="1840" />
            <wire x2="2192" y1="1728" y2="1936" x1="2192" />
            <wire x2="2528" y1="1728" y2="1728" x1="2192" />
        </branch>
        <branch name="XLXN_571(2:0)">
            <wire x2="2208" y1="1968" y2="1968" x1="1840" />
            <wire x2="2208" y1="1776" y2="1968" x1="2208" />
            <wire x2="2528" y1="1776" y2="1776" x1="2208" />
        </branch>
        <branch name="XLXN_572(2:0)">
            <wire x2="1296" y1="1056" y2="1424" x1="1296" />
            <wire x2="1360" y1="1424" y2="1424" x1="1296" />
            <wire x2="3024" y1="1056" y2="1056" x1="1296" />
            <wire x2="3024" y1="1056" y2="1776" x1="3024" />
            <wire x2="3024" y1="1776" y2="1776" x1="3008" />
        </branch>
        <branch name="XLXN_573">
            <wire x2="1360" y1="1472" y2="1472" x1="1312" />
            <wire x2="1312" y1="1472" y2="2096" x1="1312" />
            <wire x2="3088" y1="2096" y2="2096" x1="1312" />
            <wire x2="3088" y1="1728" y2="1728" x1="3008" />
            <wire x2="3088" y1="1728" y2="2096" x1="3088" />
        </branch>
        <iomarker fontsize="28" x="736" y="1728" name="INSTR(15:0)" orien="R0" />
        <iomarker fontsize="28" x="1936" y="464" name="ALU_DATA_A(15:0)" orien="R270" />
        <iomarker fontsize="28" x="2032" y="544" name="ALU_DATA_B(15:0)" orien="R270" />
        <iomarker fontsize="28" x="2112" y="608" name="ALU_DATA_IMM(15:0)" orien="R270" />
    </sheet>
</drawing>