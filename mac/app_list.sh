#!/bin/bash

ls -lh /Applications | grep torapture | awk '{print $9}' | sed 's/\.app//g'
