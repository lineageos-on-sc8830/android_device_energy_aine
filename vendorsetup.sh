#!/bin/bash
#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

for var in eng user userdebug; do
  add_lunch_combo cm_aine-$var
done
