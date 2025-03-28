#!/bin/bash

EXAMPLE="read-and-print"
VERSION="correct"

# ==== C ====
gcc examples/$EXAMPLE/$VERSION/main.c -o examples/$EXAMPLE/$VERSION/c
sudo ./qingdao-judge/output/libjudger.so \
    --max_cpu_time=1000 \
    --max_real_time=2000 \
    --max_memory=10000000 \
    --max_process_number=200 \
    --max_output_size=134217728 \
    --exe_path="examples/$EXAMPLE/$VERSION/c" \
    --input_path="testcases/$EXAMPLE/1.in" \
    --output_path="testcases/$EXAMPLE/$VERSION.out" \
    --error_path="testcases/$EXAMPLE/$VERSION.error" \
    --log_path="testcases/$EXAMPLE/$VERSION.log" \
    --uid=0 \
    --gid=0 \
    --seccomp_rule_name="general"

# ==== C++ ====
# g++ examples/$EXAMPLE/$VERSION/main.cpp -o examples/$EXAMPLE/$VERSION/cpp
# sudo ./qingdao-judge/output/libjudger.so \
#     --max_cpu_time=1000 \
#     --max_real_time=2000 \
#     --max_memory=10000000 \
#     --max_process_number=200 \
#     --max_output_size=134217728 \
#     --exe_path="examples/$EXAMPLE/$VERSION/cpp" \
#     --input_path="testcases/$EXAMPLE/1.in" \
#     --output_path="testcases/$EXAMPLE/$VERSION.out" \
#     --error_path="testcases/$EXAMPLE/$VERSION.error" \
#     --log_path="testcases/$EXAMPLE/$VERSION.log" \
#     --uid=0 \
#     --gid=0 \
#     --seccomp_rule_name="general"

# ==== Python ====
# sudo ./qingdao-judge/output/libjudger.so \
#     --max_cpu_time=1000 \
#     --max_real_time=2000 \
#     --max_memory=10000000 \
#     --max_process_number=200 \
#     --max_output_size=134217728 \
#     --exe_path="/usr/bin/python3" \
#     --args="examples/read-and-print/correct/main.py" \
#     --input_path="testcases/$EXAMPLE/1.in" \
#     --output_path="testcases/$EXAMPLE/$VERSION.out" \
#     --error_path="testcases/$EXAMPLE/$VERSION.error" \
#     --log_path="testcases/$EXAMPLE/$VERSION.log" \
#     --uid=0 \
#     --gid=0 \
#     --seccomp_rule_name="general"

# ==== JAVA ====
# sudo ./qingdao-judge/output/libjudger.so \
#     --max_cpu_time=1000 \
#     --max_real_time=2000 \
#     --max_memory=-1 \
#     --max_process_number=200 \
#     --max_output_size=134217728 \
#     --exe_path="/usr/bin/java" \
#     --args="-cp" \
#     --args="examples/read-and-print/correct" \
#     --args="-Dfile.encoding=UTF-8" \
#     --args="-Djava.awt.headless=true" \
#     --args="-Djava.security.policy==java-policy" \
#     --args="-XX:+UseSerialGC" \
#     --args="Main" \
#     --input_path="testcases/$EXAMPLE/1.in" \
#     --output_path="testcases/$EXAMPLE/$VERSION.out" \
#     --error_path="testcases/$EXAMPLE/$VERSION.error" \
#     --log_path="testcases/$EXAMPLE/$VERSION.log" \
#     --uid=0 \
#     --gid=0 \
#     --seccomp_rule_name="general"

# gcc examples/$EXAMPLE/$VERSION/main.c -o examples/$EXAMPLE/correct/c

# C: --exe_path="examples/$EXAMPLE/$VERSION/c" \
# JAVA: java -cp examples/read-and-print/correct/ -Dfile.encoding=UTF-8 -Djava.awt.headless=true -Djava.security.policy==java-policy -XX:+UseSerialGC -DBOJ Main
# 