cmake_minimum_required(VERSION 3.17)
project(dstree C)

set(CMAKE_C_STANDARD 99)


add_executable(dstree src/pqueue.c src/dstree_file_loaders.c  src/dstree_index.c src/dstree_node.c src/dstree_node_split.c  src/ts.c src/calc_utils.c src/dstree_query_engine.c  src/dstree_file_buffer.c src/dstree_file_buffer_manager.c )
#install(TARGETS ucr_suite DESTINATION bin)

target_link_libraries(dstree m)