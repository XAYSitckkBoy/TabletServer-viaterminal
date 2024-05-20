import subprocess

# Prevent the system from entering sleep mode
subprocess.run(["xset", "s", "off"])
subprocess.run(["xset", "s", "reset"])
