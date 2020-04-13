import gdb
import os

ROOT_DIR = os.path.dirname(__file__)

SCRIPT_PATH = [ROOT_DIR, 'scripts', 'gdb-dashboard.gdb']


def _abs_path(path):
    return os.path.abspath(os.path.join(*path))


def gdbundle_load():
    gdb.execute("source {}".format(_abs_path(SCRIPT_PATH)))
