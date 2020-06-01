<project xmlns="com.autoesl.autopilot.project" name="fir" top="fir_filter">
    <files>
        <file name="../fir_test.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" blackbox="false" csimflags=" -Wno-unknown-pragmas"/>
        <file name="fir/fir_filter.cpp" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
        <file name="fir/fir_filter.h" sc="0" tb="false" cflags="" blackbox="false" csimflags=""/>
    </files>
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" clean="true" csimMode="2" lastCsimMode="2"/>
    </Simulation>
    <solutions xmlns="">
        <solution name="solution1" status="inactive"/>
        <solution name="solution2" status="active"/>
    </solutions>
</project>

