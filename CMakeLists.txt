cmake_minimum_required(VERSION 3.17)
project(dstree C)

set(CMAKE_C_STANDARD 11)

set(LIBDSTREE src/pqueue.c src/dstree_file_loaders.c  src/dstree_index.c src/dstree_node.c src/dstree_node_split.c
        src/ts.c src/calc_utils.c src/dstree_query_engine.c  src/dstree_file_buffer.c src/dstree_file_buffer_manager.c)
add_library(libdstree STATIC "${LIBDSTREE}")

add_executable(dstree src/dstree.c )

target_link_libraries(dstree libdstree m  readline)