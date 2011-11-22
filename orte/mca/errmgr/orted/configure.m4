# -*- shell-script -*-
#
# Copyright (c) 2011      Los Alamos National Security, LLC.
#                         All rights reserved.
# $COPYRIGHT$
# 
# Additional copyrights may follow
# 
# $HEADER$
#
# MCA_errmgr_orted_CONFIG([action-if-found], [action-if-not-found])
# -----------------------------------------------------------
AC_DEFUN([MCA_orte_errmgr_orted_CONFIG], [
    AC_CONFIG_FILES([orte/mca/errmgr/orted/Makefile])

    AS_IF([test "$orte_enable_resilient_code" = 1 -a "$orte_without_full_support" = 0],
          [$1],
          [$2])
])
