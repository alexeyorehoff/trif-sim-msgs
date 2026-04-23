# Full planning result for a set of toolpaths
bool             success
string           message         # error info if success==false

PlannedPoint[]   points          # flat ordered sequence of all result points
string[]         segment_names   # which toolpath each contiguous block belongs to
uint32[]         segment_sizes   # number of points per segment (parallel with segment_names)
