# A single Cartesian waypoint fed INTO the planner
# ── Pose ─────────────────────────────────────────────────────────────────────
geometry_msgs/Point       position        # XYZ in working frame
geometry_msgs/Quaternion  orientation     # tool orientation

uint8 interpolation_type

# ── Tolerances (all in the toolpath frame) ───────────────────────────────────
# "O" – tolerance around the trajectory direction vector (A→B)
# "A" – tilt of the tool relative to that vector
# "T" – rotation of the tool around its own axis
float64 tol_o           # [rad] tolerance around path direction
float64 tol_a           # [rad] tilt tolerance
float64 tol_t           # [rad] tool-axis rotation tolerance
float64 tol_x           # [m]   translational X tolerance
float64 tol_y           # [m]   translational Y tolerance
float64 tol_z           # [m]   translational Z tolerance

# ── User-defined passthrough parameters ──────────────────────────────────────
# Key/value pairs that survive interpolation and are forwarded to the
# postprocessor unchanged (e.g. speed, process flags, laser power …)
string[]  param_keys
float64[] param_values
