<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="ADDR(15:0)" />
        <signal name="ADDR(13:0)" />
        <signal name="WE" />
        <signal name="CLK" />
        <signal name="D_IN(15:0)" />
        <signal name="D_OUT(15:0)" />
        <port polarity="Input" name="ADDR(15:0)" />
        <port polarity="Input" name="WE" />
        <port polarity="Input" name="CLK" />
        <port polarity="Input" name="D_IN(15:0)" />
        <port polarity="Output" name="D_OUT(15:0)" />
        <blockdef name="blockram_14x16">
            <timestamp>2016-2-26T8:56:55</timestamp>
            <rect width="284" x="32" y="32" height="264" />
            <line x2="32" y1="80" y2="80" x1="0" />
            <line x2="32" y1="128" y2="128" style="linewidth:W" x1="0" />
            <line x2="32" y1="192" y2="192" style="linewidth:W" x1="0" />
            <line x2="32" y1="256" y2="256" style="linewidth:W" x1="0" />
            <line x2="320" y1="80" y2="80" style="linewidth:W" x1="352" />
        </blockdef>
        <block symbolname="blockram_14x16" name="XLXI_1">
            <blockpin signalname="CLK" name="clka" />
            <blockpin signalname="WE" name="wea(0:0)" />
            <blockpin signalname="ADDR(13:0)" name="addra(13:0)" />
            <blockpin signalname="D_IN(15:0)" name="dina(15:0)" />
            <blockpin signalname="D_OUT(15:0)" name="douta(15:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1360" y="736" name="XLXI_1" orien="R0">
        </instance>
        <bustap x2="1328" y1="928" y2="928" x1="1232" />
        <branch name="ADDR(15:0)">
            <wire x2="1232" y1="912" y2="912" x1="1120" />
            <wire x2="1232" y1="912" y2="928" x1="1232" />
            <wire x2="1232" y1="928" y2="944" x1="1232" />
        </branch>
        <branch name="ADDR(13:0)">
            <wire x2="1344" y1="928" y2="928" x1="1328" />
            <wire x2="1360" y1="928" y2="928" x1="1344" />
        </branch>
        <iomarker fontsize="28" x="1120" y="912" name="ADDR(15:0)" orien="R180" />
        <branch name="WE">
            <wire x2="1344" y1="864" y2="864" x1="1024" />
            <wire x2="1360" y1="864" y2="864" x1="1344" />
        </branch>
        <branch name="CLK">
            <wire x2="1344" y1="816" y2="816" x1="1024" />
            <wire x2="1360" y1="816" y2="816" x1="1344" />
        </branch>
        <branch name="D_IN(15:0)">
            <wire x2="1344" y1="992" y2="992" x1="1104" />
            <wire x2="1360" y1="992" y2="992" x1="1344" />
        </branch>
        <branch name="D_OUT(15:0)">
            <wire x2="1744" y1="816" y2="816" x1="1712" />
        </branch>
        <iomarker fontsize="28" x="1744" y="816" name="D_OUT(15:0)" orien="R0" />
        <iomarker fontsize="28" x="1104" y="992" name="D_IN(15:0)" orien="R180" />
        <iomarker fontsize="28" x="1024" y="864" name="WE" orien="R180" />
        <iomarker fontsize="28" x="1024" y="816" name="CLK" orien="R180" />
    </sheet>
</drawing>