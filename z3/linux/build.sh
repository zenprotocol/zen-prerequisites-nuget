#!/bin/bash

set -u

mono nuget.exe pack zen_z3_linux.nuspec
mono nuget.exe push -Source https://www.nuget.org/api/v2/package/ -ApiKey $nugetkey *.nupkg
