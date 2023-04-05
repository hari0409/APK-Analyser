import os
import sys
import subprocess

path=sys.argv[1]

def decompile_apk(path):
    decompiled_dir = "./output/apk_decompiled"
    os.mkdir(decompiled_dir)
    subprocess.call(["apktool", "d", "-f", path, "-o", decompiled_dir])

decompile_apk(path)