#!/usr/bin/env bash
set -euo pipefail

# Static site — no package install. Verify Python tooling for Screen 3 generators.
python3 -c "import json, re, pathlib"
python3 -c "import sys; sys.path.insert(0, 'tools'); from s3_conversational_templates import FLOWS; assert FLOWS"
