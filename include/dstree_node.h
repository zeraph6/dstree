//
//  dstree_node.h
//  ds-tree C version
//
//  Created by Karima Echihabi on 18/12/2016
//  Copyright 2012 Paris Descartes University. All rights reserved.
//  
//  Based on isax code written by Zoumpatianos on 3/12/12.
//  Copyright 2012 University of Trento. All rights reserved.
//

#ifndef dstreelib_dstree_node_h
#define dstreelib_dstree_node_h


#include "../config.h"
#include "../globals.h"    
#include "dstree_node_split.h"
#include "dstree_file_buffer.h"
#include "pqueue.h"
#include "dstree_query_engine.h"

/** node_structure
    @param struct node_segment_split_policy * node_segment_split_policies;//split value and type(mean/std)
    @param short * node_points;//breakpoints of segments (ri)
    @param short * hs_node_points;//breakpoints of hs segments
    @param struct segment_sketch * node_segment_sketches;
    @param struct segment_sketch * hs_node_segment_sketches;
    @param struct node_split_policy * split_policy;//breakpoint of choosed segment/hs segment to split, value and type of split, sketch of segment,node_segment_split_policy

    @param struct dstree_node *left_child;
    @param struct dstree_node *right_child;
    @param struct dstree_node *parent;

    @param struct dstree_file_buffer * file_buffer;

    @param char * filename;

    @param mean_stdev_range range; //init by 0 and stay 0, no idea why

    @param int num_node_segment_split_policies; // Mean and std
    @param short num_node_points;  //number of vertical split points
    @param short num_hs_node_points;  //number of horizontal split points

    @param int max_segment_length;
    @param int max_value_length;

    @param unsigned int node_size;
    @param unsigned int level;

    @param unsigned char is_leaf;
    @param boolean is_left;
 * **/
static int n = 1;
struct dstree_node {

    struct node_segment_split_policy * node_segment_split_policies;
    short * node_points;
    short * hs_node_points;
    struct segment_sketch * node_segment_sketches;
    struct segment_sketch * hs_node_segment_sketches;
    struct node_split_policy * split_policy;

    struct dstree_node *left_child;
    struct dstree_node *right_child;
    struct dstree_node *parent;

    struct dstree_file_buffer * file_buffer;

    char * filename;

    mean_stdev_range range;
    int id;
    int num_node_segment_split_policies;
    short num_node_points;  //number of vertical split points
    short num_hs_node_points;  //number of horizontal split points

    int max_segment_length;
    int max_value_length;

    unsigned int node_size;
    unsigned int level;

    unsigned char is_leaf;
    boolean is_left;
};

struct dstree_node * dstree_root_node_init(struct dstree_index_settings * settings) ;
struct dstree_node * dstree_leaf_node_init();
enum response node_init_segments(struct dstree_node * node, short * split_points, int segment_size);
enum response append_ts_to_node(struct dstree_index * index,
                                struct dstree_node * node,
                                ts_type * timeseries);
enum response append_ts_to_child_node(struct dstree_index * index,
                                struct dstree_node * node,
                                ts_type * timeseries);

enum response update_node_statistics(struct dstree_node * node, ts_type * timeseries);

enum response create_dstree_node_filename(struct dstree_index_settings *settings,
                                          struct dstree_node * node, struct dstree_node * parent_node);

//ts_type calculate_ts_in_node_distance (struct dstree_index *index, struct dstree_node *node, ts_type *query);
//ts_type calculate_node_distance (struct dstree_index *index, struct dstree_node *node, ts_type *query);
ts_type calculate_node_min_distance (struct dstree_index *index, struct dstree_node *node, ts_type *query);
ts_type calculate_ts_in_node_distance (struct dstree_index *index,
				       struct dstree_node *node,
				       ts_type *query_ts_reordered,
				       int * query_order,
				       unsigned int offset,
				       ts_type bound);
ts_type calculate_node_distance (struct dstree_index *index, struct dstree_node *node, ts_type *query_ts_reordered, int *query_order, unsigned int offset, ts_type bsf);
int queue_bounded_sorted_insert(struct  query_result *q, struct query_result d, unsigned int *cur_size, unsigned int k);
void calculate_node_knn_distance (struct dstree_index *index, struct dstree_node *node,
				  ts_type *query_ts_reordered, int *query_order,
				  unsigned int offset, ts_type bsf,
				  unsigned int k,
				  struct query_result  *knn_results,
				  struct bsf_snapshot ** bsf_snapshots,
				  unsigned int *cur_bsf_snapshot,
				  unsigned int * cur_size);
#endif
