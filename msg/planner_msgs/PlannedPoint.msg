# A single point in the planning RESULT
# ── Cartesian (FK) ───────────────────────────────────────────────────────────
geometry_msgs/Point       position
geometry_msgs/Quaternion  orientation

# ── Joint (IK) ───────────────────────────────────────────────────────────────
string[]  joint_names
float64[] joint_positions   # same order as joint_names

# ── Passthrough parameters (from input ToolpathPoint) ────────────────────────
string[]  param_keys
float64[] param_values

# ── Diagnostics ──────────────────────────────────────────────────────────────
bool    in_collision
float64 manipulability      # Yoshikawa manipulability measure
