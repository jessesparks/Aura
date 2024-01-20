#!/bin/bash

Dependencies/Premake/Linux/premake5 --cc=clang --file=ProjectSetup.lua gmake2
popd
