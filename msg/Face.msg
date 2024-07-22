# Contains information about a face detected by the face recognition system

std_msgs/Header header

# ID of the user or "Spoof" if spoofing has been detected.
string id

# Match score. A value between 0.0 and 1.0.
float64 score

# Whether the user has a facial mask or not
bool has_mask

# Bounding box with the face of the user
vision_msgs/BoundingBox2D bbox

# Constants
string SPOOF = Spoof