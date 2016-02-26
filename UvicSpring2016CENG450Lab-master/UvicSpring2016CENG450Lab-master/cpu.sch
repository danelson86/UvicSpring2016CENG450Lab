<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="CLK" />
        <signal name="INSTR(15:0)" />
        <signal name="RST" />
        <signal name="BA(6:0)" />
        <signal name="BT" />
        <signal name="XLXN_389(15:0)" />
        <signal name="XLXN_390(15:0)" />
        <signal name="XLXN_361" />
        <signal name="XLXN_360" />
        <signal name="XLXN_394(15:0)" />
        <signal name="XLXN_397(15:0)" />
        <signal name="XLXN_400(15:0)" />
        <signal name="XLXN_401(15:0)" />
        <signal name="XLXN_405(2:0)" />
        <signal name="XLXN_407" />
        <signal name="XLXN_408" />
        <signal name="XLXN_409" />
        <signal name="XLXN_410" />
        <signal name="EXT_IN(15:0)" />
        <signal name="XLXN_424" />
        <signal name="XLXN_429(1:0)" />
        <signal name="XLXN_430(15:0)" />
        <signal name="XLXN_431(1:0)" />
        <signal name="XLXN_418(15:0)" />
        <signal name="XLXN_406(1:0)" />
        <signal name="OUTPUT(15:0)" />
        <signal name="MEM_DATA(15:0)" />
        <signal name="XLXN_393(15:0)" />
        <signal name="XLXN_441(2:0)" />
        <port polarity="Input" name="CLK" />
        <port polarity="Output" name="INSTR(15:0)" />
        <port polarity="Input" name="RST" />
        <port polarity="Input" name="BA(6:0)" />
        <port polarity="Input" name="BT" />
        <port polarity="Input" name="EXT_IN(15:0)" />
        <port polarity="Output" name="OUTPUT(15:0)" />
        <port polarity="Output" name="MEM_DATA(15:0)" />
        <blockdef name="control">
            <timestamp>2016-2-26T22:54:58</timestamp>
            <line x2="0" y1="-416" y2="-416" x1="64" />
            <rect width="352" x="64" y="-448" height="436" />
            <line x2="0" y1="-384" y2="-384" x1="64" />
            <rect width="64" x="416" y="-396" height="24" />
            <line x2="480" y1="-384" y2="-384" x1="416" />
            <rect width="64" x="416" y="-348" height="24" />
            <line x2="480" y1="-336" y2="-336" x1="416" />
            <rect width="64" x="416" y="-300" height="24" />
            <line x2="480" y1="-288" y2="-288" x1="416" />
            <rect width="64" x="0" y="-284" height="24" />
            <line x2="0" y1="-272" y2="-272" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="416" y="-124" height="24" />
            <line x2="480" y1="-112" y2="-112" x1="416" />
            <rect width="64" x="416" y="-76" height="24" />
            <line x2="480" y1="-64" y2="-64" x1="416" />
            <rect width="64" x="416" y="-172" height="24" />
            <line x2="480" y1="-160" y2="-160" x1="416" />
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
        <blockdef name="execute_instruction">
            <timestamp>2016-2-26T23:0:2</timestamp>
            <rect width="352" x="64" y="-512" height="464" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <rect width="64" x="416" y="-492" height="24" />
            <line x2="480" y1="-480" y2="-480" x1="416" />
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
        </blockdef>
        <block symbolname="ibuf" name="XLXI_29">
            <blockpin signalname="CLK" name="I" />
            <blockpin signalname="XLXN_424" name="O" />
        </block>
        <block symbolname="ibuf" name="XLXI_30">
            <blockpin signalname="RST" name="I" />
            <blockpin signalname="XLXN_360" name="O" />
        </block>
        <block symbolname="instruction_fetch" name="XLXI_53">
            <blockpin signalname="XLXN_424" name="CLK" />
            <blockpin signalname="XLXN_360" name="RST" />
            <blockpin signalname="BT" name="IsBranchTaken" />
            <blockpin signalname="BA(6:0)" name="BranchAddr(6:0)" />
            <blockpin signalname="INSTR(15:0)" name="Istr_out(15:0)" />
        </block>
        <block symbolname="control" name="XLXI_55">
            <blockpin signalname="XLXN_424" name="CLK" />
            <blockpin signalname="XLXN_424" name="RST" />
            <blockpin signalname="XLXN_397(15:0)" name="RegReadData1(15:0)" />
            <blockpin signalname="XLXN_400(15:0)" name="RegReadData2(15:0)" />
            <blockpin signalname="XLXN_401(15:0)" name="ImmData(15:0)" />
            <blockpin signalname="INSTR(15:0)" name="INSTR(15:0)" />
            <blockpin signalname="XLXN_394(15:0)" name="RegWriteData(15:0)" />
            <blockpin signalname="XLXN_406(1:0)" name="ALUIN2Src(1:0)" />
            <blockpin signalname="XLXN_429(1:0)" name="ALU_Dest(1:0)" />
            <blockpin signalname="XLXN_405(2:0)" name="ALUMode(2:0)" />
        </block>
        <block symbolname="ibuf16" name="XLXI_42">
            <blockpin signalname="EXT_IN(15:0)" name="I(15:0)" />
            <blockpin signalname="XLXN_418(15:0)" name="O(15:0)" />
        </block>
        <block symbolname="execute_instruction" name="XLXI_56">
            <blockpin signalname="XLXN_424" name="clk" />
            <blockpin signalname="XLXN_393(15:0)" name="result(15:0)" />
            <blockpin signalname="XLXN_405(2:0)" name="alu_mode_in(2:0)" />
            <blockpin signalname="XLXN_406(1:0)" name="alu_input2_sel(1:0)" />
            <blockpin signalname="XLXN_360" name="rst" />
            <blockpin signalname="XLXN_397(15:0)" name="ra_in(15:0)" />
            <blockpin signalname="XLXN_400(15:0)" name="rb_in(15:0)" />
            <blockpin signalname="XLXN_401(15:0)" name="imm_data_in(15:0)" />
            <blockpin signalname="XLXN_418(15:0)" name="extern_data_in(15:0)" />
        </block>
        <block symbolname="demux_3to1_16bit" name="XLXI_46">
            <blockpin signalname="XLXN_393(15:0)" name="muxin(15:0)" />
            <blockpin signalname="XLXN_429(1:0)" name="sel(1:0)" />
            <blockpin signalname="XLXN_394(15:0)" name="muxout1(15:0)" />
            <blockpin signalname="MEM_DATA(15:0)" name="muxout2(15:0)" />
            <blockpin signalname="OUTPUT(15:0)" name="muxout3(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="5440" height="3520">
        <branch name="CLK">
            <wire x2="352" y1="816" y2="816" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="816" name="CLK" orien="R180" />
        <instance x="352" y="848" name="XLXI_29" orien="R0" />
        <branch name="INSTR(15:0)">
            <wire x2="896" y1="1392" y2="1392" x1="800" />
            <wire x2="1360" y1="1392" y2="1392" x1="896" />
            <wire x2="928" y1="1312" y2="1312" x1="896" />
            <wire x2="896" y1="1312" y2="1392" x1="896" />
        </branch>
        <branch name="RST">
            <wire x2="352" y1="928" y2="928" x1="288" />
        </branch>
        <iomarker fontsize="28" x="288" y="928" name="RST" orien="R180" />
        <branch name="BA(6:0)">
            <wire x2="352" y1="1360" y2="1360" x1="336" />
            <wire x2="368" y1="1328" y2="1328" x1="352" />
            <wire x2="352" y1="1328" y2="1360" x1="352" />
        </branch>
        <branch name="BT">
            <wire x2="288" y1="1296" y2="1296" x1="272" />
            <wire x2="368" y1="1264" y2="1264" x1="288" />
            <wire x2="288" y1="1264" y2="1296" x1="288" />
        </branch>
        <iomarker fontsize="28" x="272" y="1296" name="BT" orien="R180" />
        <iomarker fontsize="28" x="336" y="1360" name="BA(6:0)" orien="R180" />
        <iomarker fontsize="28" x="928" y="1312" name="INSTR(15:0)" orien="R0" />
        <instance x="352" y="960" name="XLXI_30" orien="R0" />
        <instance x="368" y="1360" name="XLXI_53" orien="R0">
        </instance>
        <instance x="1360" y="1664" name="XLXI_55" orien="R0">
        </instance>
        <branch name="EXT_IN(15:0)">
            <wire x2="1680" y1="1904" y2="1904" x1="1632" />
        </branch>
        <instance x="1680" y="1936" name="XLXI_42" orien="R0" />
        <iomarker fontsize="28" x="1632" y="1904" name="EXT_IN(15:0)" orien="R180" />
        <branch name="XLXN_405(2:0)">
            <wire x2="1856" y1="1504" y2="1504" x1="1840" />
            <wire x2="2384" y1="1440" y2="1440" x1="1856" />
            <wire x2="1856" y1="1440" y2="1504" x1="1856" />
        </branch>
        <branch name="XLXN_401(15:0)">
            <wire x2="2384" y1="1376" y2="1376" x1="1840" />
        </branch>
        <branch name="XLXN_400(15:0)">
            <wire x2="2384" y1="1328" y2="1328" x1="1840" />
        </branch>
        <branch name="XLXN_397(15:0)">
            <wire x2="2384" y1="1280" y2="1280" x1="1840" />
        </branch>
        <branch name="XLXN_360">
            <wire x2="304" y1="1024" y2="1200" x1="304" />
            <wire x2="368" y1="1200" y2="1200" x1="304" />
            <wire x2="720" y1="1024" y2="1024" x1="304" />
            <wire x2="720" y1="928" y2="928" x1="576" />
            <wire x2="720" y1="928" y2="1024" x1="720" />
            <wire x2="1904" y1="928" y2="928" x1="720" />
            <wire x2="1904" y1="928" y2="1216" x1="1904" />
            <wire x2="2384" y1="1216" y2="1216" x1="1904" />
        </branch>
        <branch name="XLXN_418(15:0)">
            <wire x2="2352" y1="1904" y2="1904" x1="1904" />
            <wire x2="2352" y1="1568" y2="1904" x1="2352" />
            <wire x2="2384" y1="1568" y2="1568" x1="2352" />
        </branch>
        <branch name="XLXN_406(1:0)">
            <wire x2="2176" y1="1552" y2="1552" x1="1840" />
            <wire x2="2176" y1="1488" y2="1552" x1="2176" />
            <wire x2="2384" y1="1488" y2="1488" x1="2176" />
        </branch>
        <branch name="OUTPUT(15:0)">
            <wire x2="3584" y1="1296" y2="1296" x1="3488" />
        </branch>
        <branch name="MEM_DATA(15:0)">
            <wire x2="3552" y1="1232" y2="1232" x1="3488" />
        </branch>
        <branch name="XLXN_393(15:0)">
            <wire x2="3072" y1="1168" y2="1168" x1="2864" />
        </branch>
        <instance x="2384" y="1648" name="XLXI_56" orien="R0">
        </instance>
        <instance x="3072" y="1328" name="XLXI_46" orien="R0">
        </instance>
        <iomarker fontsize="28" x="3552" y="1232" name="MEM_DATA(15:0)" orien="R0" />
        <iomarker fontsize="28" x="3584" y="1296" name="OUTPUT(15:0)" orien="R0" />
        <branch name="XLXN_429(1:0)">
            <wire x2="1840" y1="1600" y2="1664" x1="1840" />
            <wire x2="2944" y1="1664" y2="1664" x1="1840" />
            <wire x2="2944" y1="1296" y2="1664" x1="2944" />
            <wire x2="3072" y1="1296" y2="1296" x1="2944" />
        </branch>
        <branch name="XLXN_424">
            <wire x2="288" y1="1008" y2="1136" x1="288" />
            <wire x2="368" y1="1136" y2="1136" x1="288" />
            <wire x2="640" y1="1008" y2="1008" x1="288" />
            <wire x2="640" y1="816" y2="816" x1="576" />
            <wire x2="640" y1="816" y2="1008" x1="640" />
            <wire x2="1184" y1="816" y2="816" x1="640" />
            <wire x2="1184" y1="816" y2="1280" x1="1184" />
            <wire x2="1360" y1="1280" y2="1280" x1="1184" />
            <wire x2="1280" y1="816" y2="816" x1="1184" />
            <wire x2="1280" y1="816" y2="1248" x1="1280" />
            <wire x2="1360" y1="1248" y2="1248" x1="1280" />
            <wire x2="1920" y1="816" y2="816" x1="1280" />
            <wire x2="1920" y1="816" y2="1168" x1="1920" />
            <wire x2="2384" y1="1168" y2="1168" x1="1920" />
        </branch>
        <branch name="XLXN_394(15:0)">
            <wire x2="1360" y1="1440" y2="1440" x1="1344" />
            <wire x2="1344" y1="1440" y2="1744" x1="1344" />
            <wire x2="3520" y1="1744" y2="1744" x1="1344" />
            <wire x2="3520" y1="1168" y2="1168" x1="3488" />
            <wire x2="3520" y1="1168" y2="1744" x1="3520" />
        </branch>
    </sheet>
</drawing>