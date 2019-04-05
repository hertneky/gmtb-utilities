#!/bin/sh
# Run MET pcp_combine tool on CERES data
# Data includes monthly means for both 2016-2017 in one file
# File times are the 15th of each month
# Time indicies are 0-11 (Jan-Dec 2016) and 12-23 (Jan-Dec 2017)
# Example:
#    Winter mean (DJF): indicies 0, 1, 11, 12, 13, 23
# Requires METv8.1 (or development branch)

pcp_combine=/glade/p/ral/jntp/MET/MET_development/trunk/met/bin/pcp_combine
ceres_file_sfc=/glade/p/ral/jntp/GMTB/data/ceres/CERES_EBAF-Surface_Ed4.0_Subset_201601-201712.nc
ceres_file_toa=/glade/p/ral/jntp/GMTB/data/ceres/CERES_EBAF-TOA_Ed4.0_Subset_201601-201712.nc
out_dir=/gpfs/u/home/hertneky/scripts/ceres/output

# SFC DSWRF
${pcp_combine} -derive mean ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(0,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(1,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(11,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(12,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(13,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(23,*,*)";' ${out_dir}/ceres_DSWRF_DJF.nc

${pcp_combine} -derive mean ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(2,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(3,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(4,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(14,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(15,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(16,*,*)";' ${out_dir}/ceres_DSWRF_MAM.nc

${pcp_combine} -derive mean ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(5,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(6,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(7,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(17,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(18,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(19,*,*)";' ${out_dir}/ceres_DSWRF_JJA.nc

${pcp_combine} -derive mean ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(8,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(9,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(10,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(20,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(21,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(22,*,*)";' ${out_dir}/ceres_DSWRF_SON.nc

${pcp_combine} -derive mean ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(0,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(1,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(2,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(3,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(4,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(5,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(6,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(7,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(8,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(9,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(10,*,*)";'  ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(11,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(12,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(13,*,*)";'  ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(14,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(15,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(16,*,*)";'  ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(17,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(18,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(19,*,*)";'  ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(20,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(21,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(22,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_down_all_mon";level="(23,*,*)";' ${out_dir}/ceres_DSWRF_YEAR.nc


# SFC DLWRF
${pcp_combine} -derive mean ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(0,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(1,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(11,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(12,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(13,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(23,*,*)";' ${out_dir}/ceres_DLWRF_DJF.nc

${pcp_combine} -derive mean ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(2,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(3,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(4,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(14,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(15,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(16,*,*)";' ${out_dir}/ceres_DLWRF_MAM.nc

${pcp_combine} -derive mean ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(5,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(6,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(7,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(17,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(18,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(19,*,*)";' ${out_dir}/ceres_DLWRF_JJA.nc

${pcp_combine} -derive mean ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(8,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(9,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(10,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(20,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(21,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(22,*,*)";' ${out_dir}/ceres_DLWRF_SON.nc

${pcp_combine} -derive mean ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(0,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(1,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(2,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(3,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(4,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(5,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(6,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(7,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(8,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(9,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(10,*,*)";'  ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(11,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(12,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(13,*,*)";'  ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(14,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(15,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(16,*,*)";'  ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(17,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(18,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(19,*,*)";'  ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(20,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(21,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(22,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_down_all_mon";level="(23,*,*)";' ${out_dir}/ceres_DLWRF_YEAR.nc


# SFC USWRF
${pcp_combine} -derive mean ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(0,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(1,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(11,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(12,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(13,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(23,*,*)";' ${out_dir}/ceres_USWRF_DJF.nc

${pcp_combine} -derive mean ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(2,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(3,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(4,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(14,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(15,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(16,*,*)";' ${out_dir}/ceres_USWRF_MAM.nc

${pcp_combine} -derive mean ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(5,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(6,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(7,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(17,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(18,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(19,*,*)";' ${out_dir}/ceres_USWRF_JJA.nc

${pcp_combine} -derive mean ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(8,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(9,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(10,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(20,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(21,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(22,*,*)";' ${out_dir}/ceres_USWRF_SON.nc

${pcp_combine} -derive mean ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(0,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(1,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(2,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(3,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(4,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(5,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(6,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(7,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(8,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(9,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(10,*,*)";'  ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(11,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(12,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(13,*,*)";'  ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(14,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(15,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(16,*,*)";'  ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(17,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(18,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(19,*,*)";'  ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(20,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(21,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(22,*,*)";' ${ceres_file_sfc} 'name="sfc_sw_up_all_mon";level="(23,*,*)";' ${out_dir}/ceres_USWRF_YEAR.nc


# SFC ULWRF
${pcp_combine} -derive mean ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(0,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(1,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(11,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(12,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(13,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(23,*,*)";' ${out_dir}/ceres_ULWRF_DJF.nc

${pcp_combine} -derive mean ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(2,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(3,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(4,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(14,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(15,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(16,*,*)";' ${out_dir}/ceres_ULWRF_MAM.nc

${pcp_combine} -derive mean ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(5,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(6,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(7,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(17,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(18,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(19,*,*)";' ${out_dir}/ceres_ULWRF_JJA.nc

${pcp_combine} -derive mean ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(8,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(9,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(10,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(20,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(21,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(22,*,*)";' ${out_dir}/ceres_ULWRF_SON.nc

${pcp_combine} -derive mean ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(0,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(1,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(2,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(3,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(4,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(5,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(6,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(7,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(8,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(9,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(10,*,*)";'  ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(11,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(12,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(13,*,*)";'  ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(14,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(15,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(16,*,*)";'  ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(17,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(18,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(19,*,*)";'  ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(20,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(21,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(22,*,*)";' ${ceres_file_sfc} 'name="sfc_lw_up_all_mon";level="(23,*,*)";' ${out_dir}/ceres_ULWRF_YEAR.nc


# TOA SW
${pcp_combine} -derive mean ${ceres_file_toa} 'name="toa_sw_all_mon";level="(0,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(1,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(11,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(12,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(13,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(23,*,*)";' ${out_dir}/ceres_USWRF_TOA_DJF.nc

${pcp_combine} -derive mean ${ceres_file_toa} 'name="toa_sw_all_mon";level="(2,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(3,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(4,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(14,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(15,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(16,*,*)";' ${out_dir}/ceres_USWRF_TOA_MAM.nc

${pcp_combine} -derive mean ${ceres_file_toa} 'name="toa_sw_all_mon";level="(5,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(6,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(7,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(17,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(18,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(19,*,*)";' ${out_dir}/ceres_USWRF_TOA_JJA.nc

${pcp_combine} -derive mean ${ceres_file_toa} 'name="toa_sw_all_mon";level="(8,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(9,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(10,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(20,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(21,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(22,*,*)";' ${out_dir}/ceres_USWRF_TOA_SON.nc

${pcp_combine} -derive mean ${ceres_file_toa} 'name="toa_sw_all_mon";level="(0,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(1,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(2,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(3,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(4,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(5,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(6,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(7,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(8,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(9,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(10,*,*)";'  ${ceres_file_toa} 'name="toa_sw_all_mon";level="(11,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(12,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(13,*,*)";'  ${ceres_file_toa} 'name="toa_sw_all_mon";level="(14,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(15,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(16,*,*)";'  ${ceres_file_toa} 'name="toa_sw_all_mon";level="(17,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(18,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(19,*,*)";'  ${ceres_file_toa} 'name="toa_sw_all_mon";level="(20,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(21,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(22,*,*)";' ${ceres_file_toa} 'name="toa_sw_all_mon";level="(23,*,*)";' ${out_dir}/ceres_USWRF_TOA_YEAR.nc


# TOA LW
${pcp_combine} -derive mean ${ceres_file_toa} 'name="toa_lw_all_mon";level="(0,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(1,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(11,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(12,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(13,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(23,*,*)";' ${out_dir}/ceres_ULWRF_TOA_DJF.nc

${pcp_combine} -derive mean ${ceres_file_toa} 'name="toa_lw_all_mon";level="(2,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(3,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(4,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(14,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(15,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(16,*,*)";' ${out_dir}/ceres_ULWRF_TOA_MAM.nc

${pcp_combine} -derive mean ${ceres_file_toa} 'name="toa_lw_all_mon";level="(5,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(6,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(7,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(17,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(18,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(19,*,*)";' ${out_dir}/ceres_ULWRF_TOA_JJA.nc

${pcp_combine} -derive mean ${ceres_file_toa} 'name="toa_lw_all_mon";level="(8,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(9,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(10,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(20,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(21,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(22,*,*)";' ${out_dir}/ceres_ULWRF_TOA_SON.nc

${pcp_combine} -derive mean ${ceres_file_toa} 'name="toa_lw_all_mon";level="(0,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(1,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(2,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(3,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(4,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(5,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(6,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(7,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(8,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(9,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(10,*,*)";'  ${ceres_file_toa} 'name="toa_lw_all_mon";level="(11,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(12,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(13,*,*)";'  ${ceres_file_toa} 'name="toa_lw_all_mon";level="(14,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(15,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(16,*,*)";'  ${ceres_file_toa} 'name="toa_lw_all_mon";level="(17,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(18,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(19,*,*)";'  ${ceres_file_toa} 'name="toa_lw_all_mon";level="(20,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(21,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(22,*,*)";' ${ceres_file_toa} 'name="toa_lw_all_mon";level="(23,*,*)";' ${out_dir}/ceres_ULWRF_TOA_YEAR.nc


# NET TOA
${pcp_combine} -derive mean ${ceres_file_toa} 'name="toa_net_all_mon";level="(0,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(1,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(11,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(12,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(13,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(23,*,*)";' ${out_dir}/ceres_NET_TOA_DJF.nc

${pcp_combine} -derive mean ${ceres_file_toa} 'name="toa_net_all_mon";level="(2,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(3,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(4,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(14,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(15,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(16,*,*)";' ${out_dir}/ceres_NET_TOA_MAM.nc

${pcp_combine} -derive mean ${ceres_file_toa} 'name="toa_net_all_mon";level="(5,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(6,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(7,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(17,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(18,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(19,*,*)";' ${out_dir}/ceres_NET_TOA_JJA.nc

${pcp_combine} -derive mean ${ceres_file_toa} 'name="toa_net_all_mon";level="(8,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(9,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(10,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(20,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(21,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(22,*,*)";' ${out_dir}/ceres_NET_TOA_SON.nc

${pcp_combine} -derive mean ${ceres_file_toa} 'name="toa_net_all_mon";level="(0,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(1,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(2,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(3,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(4,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(5,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(6,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(7,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(8,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(9,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(10,*,*)";'  ${ceres_file_toa} 'name="toa_net_all_mon";level="(11,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(12,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(13,*,*)";'  ${ceres_file_toa} 'name="toa_net_all_mon";level="(14,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(15,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(16,*,*)";'  ${ceres_file_toa} 'name="toa_net_all_mon";level="(17,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(18,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(19,*,*)";'  ${ceres_file_toa} 'name="toa_net_all_mon";level="(20,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(21,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(22,*,*)";' ${ceres_file_toa} 'name="toa_net_all_mon";level="(23,*,*)";' ${out_dir}/ceres_NET_TOA_YEAR.nc


# SOLAR
${pcp_combine} -derive mean ${ceres_file_toa} 'name="solar_mon";level="(0,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(1,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(11,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(12,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(13,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(23,*,*)";' ${out_dir}/ceres_SOLAR_DJF.nc

${pcp_combine} -derive mean ${ceres_file_toa} 'name="solar_mon";level="(2,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(3,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(4,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(14,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(15,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(16,*,*)";' ${out_dir}/ceres_SOLAR_MAM.nc

${pcp_combine} -derive mean ${ceres_file_toa} 'name="solar_mon";level="(5,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(6,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(7,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(17,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(18,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(19,*,*)";' ${out_dir}/ceres_SOLAR_JJA.nc

${pcp_combine} -derive mean ${ceres_file_toa} 'name="solar_mon";level="(8,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(9,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(10,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(20,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(21,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(22,*,*)";' ${out_dir}/ceres_SOLAR_SON.nc

${pcp_combine} -derive mean ${ceres_file_toa} 'name="solar_mon";level="(0,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(1,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(2,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(3,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(4,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(5,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(6,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(7,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(8,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(9,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(10,*,*)";'  ${ceres_file_toa} 'name="solar_mon";level="(11,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(12,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(13,*,*)";'  ${ceres_file_toa} 'name="solar_mon";level="(14,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(15,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(16,*,*)";'  ${ceres_file_toa} 'name="solar_mon";level="(17,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(18,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(19,*,*)";'  ${ceres_file_toa} 'name="solar_mon";level="(20,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(21,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(22,*,*)";' ${ceres_file_toa} 'name="solar_mon";level="(23,*,*)";' ${out_dir}/ceres_SOLAR_YEAR.nc