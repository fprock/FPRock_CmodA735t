<project xmlns="com.autoesl.autopilot.project" name="BME280_CompAccellerator" top="compensator">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim"/>
    </Simulation>
    <files xmlns="">
        <file name="hls_src/BME280_Compensation.c" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="hls_src/BME280_Compensation.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="hls_src/BME280_comp_vals_h.dat" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
        <solution name="solution2" status="inactive"/>
    </solutions>
</project>

