#!/bin/bash

: '
this script will iterate over two arrays and create a custom output file
in this example we are looping over two arrays; one containing roi numbers and one containing roi labels
we are using the arrays in a loop to create individual ROIs from the Yeo functional connectivity atlas using AFNI 3dcalc
option 1 is to manually define the arrays
option 2 (preferred) is to call separate .txt files
'

: 'manually define arrays'
# array=(
#   1
#   2
#   3
#   4
#   5
#   6
#   7
#   8
#   9
#   10
#   11
#   12
#   13
#   14
#   15
#   16
#   17
#   18
#   19
#   20
#   21
#   22
#   23
#   24
#   25
#   26
#   27
#   28
#   29
#   30
#   31
#   32
#   33
#   34
#   35
#   36
#   37
#   38
#   39
#   40
#   41
#   42
#   43
#   44
#   45
#   46
#   47
#   48
#   49
#   50
#   51
#   52
#   53
#   54
#   55
#   56
#   57
#   58
#   59
#   60
#   61
#   62
#   63
#   64
#   65
#   66
#   67
#   68
#   69
#   70
#   71
#   72
#   73
#   74
#   75
#   76
#   77
#   78
#   79
#   80
#   81
#   82
#   83
#   84
#   85
#   86
#   87
#   88
#   89
#   90
#   91
#   92
#   93
#   94
#   95
#   96
#   97
#   98
#   99
#   100
#   101
#   102
#   103
#   104
#   105
#   106
#   107
#   108
#   109
#   110
#   111
#   112
#   113
#   114
# )
# array2=(
#   LH_VisCent_Striate
#   LH_VisCent_ExStr
#   LH_VisPeri_StriCal
#   LH_VisPeri_ExStrInf
#   LH_VisPeri_ExStrSup
#   LH_SomMotA
#   LH_SomMotB_Cent
#   LH_SomMotB_S2
#   LH_SomMotB_Ins
#   LH_SomMotB_Aud
#   LH_DorsAttnA_TempOcc
#   LH_DorsAttnA_ParOcc
#   LH_DorsAttnA_SPL
#   LH_DorsAttnB_TempOcc
#   LH_DorsAttnB_PostC
#   LH_DorsAttnB_FEF
#   LH_DorsAttnB_PrCv
#   LH_SalVentAttnA_ParOper
#   LH_SalVentAttnA_FrOper
#   LH_SalVentAttnA_Ins
#   LH_SalVentAttnA_ParMed
#   LH_SalVentAttnA_FrMed
#   LH_SalVentAttnB_IPL
#   LH_SalVentAttnB_PFCd
#   LH_SalVentAttnB_PFCl
#   LH_SalVentAttnB_Ins
#   LH_SalVentAttnB_OFC
#   LH_SalVentAttnB_PFCmp
#   LH_LimbicA_TempPole
#   LH_LimbicB_OFC
#   LH_ContA_Temp
#   LH_ContA_IPS
#   LH_ContA_PFCd
#   LH_ContA_PFCl
#   LH_ContA_PFClv
#   LH_ContA_Cingm
#   LH_ContB_Temp
#   LH_ContB_IPL
#   LH_ContB_PFCd
#   LH_ContB_PFCl
#   LH_ContB_PFClv
#   LH_ContB_PFCmp
#   LH_ContC_pCun
#   LH_ContC_Cingp
#   LH_DefaultA_IPL
#   LH_DefaultA_PFCd
#   LH_DefaultA_pCunPCC
#   LH_DefaultA_PFCm
#   LH_DefaultB_Temp
#   LH_DefaultB_IPL
#   LH_DefaultB_PFCd
#   LH_DefaultB_PFCl
#   LH_DefaultB_PFCv
#   LH_DefaultC_IPL
#   LH_DefaultC_Rsp
#   LH_DefaultC_PHC
#   LH_TempPar
#   RH_VisCent_Striate
#   RH_VisCent_ExStr
#   RH_VisPeri_StriCal
#   RH_VisPeri_ExStrInf
#   RH_VisPeri_ExStrSup
#   RH_SomMotA
#   RH_SomMotB_Cent
#   RH_SomMotB_S2
#   RH_SomMotB_Ins
#   RH_SomMotB_Aud
#   RH_DorsAttnA_TempOcc
#   RH_DorsAttnA_ParOcc
#   RH_DorsAttnA_SPL
#   RH_DorsAttnB_TempOcc
#   RH_DorsAttnB_PostC
#   RH_DorsAttnB_FEF
#   RH_DorsAttnB_PrCv
#   RH_SalVentAttnA_ParOper
#   RH_SalVentAttnA_PrC
#   RH_SalVentAttnA_FrOper
#   RH_SalVentAttnA_Ins
#   RH_SalVentAttnA_ParMed
#   RH_SalVentAttnA_FrMed
#   RH_SalVentAttnB_IPL
#   RH_SalVentAttnB_PFCd
#   RH_SalVentAttnB_PFCl
#   RH_SalVentAttnB_PFClv
#   RH_SalVentAttnB_Ins
#   RH_SalVentAttnB_PFCmp
#   RH_SalVentAttnB_Cinga
#   RH_LimbicA_TempPole
#   RH_LimbicB_OFC
#   RH_ContA_Temp
#   RH_ContA_IPS
#   RH_ContA_PFCd
#   RH_ContA_PFCl
#   RH_ContA_Cingm
#   RH_ContB_Temp
#   RH_ContB_IPL
#   RH_ContB_PFCld
#   RH_ContB_PFClv
#   RH_ContB_PFCmp
#   RH_ContC_pCun
#   RH_ContC_Cingp
#   RH_DefaultA_Temp
#   RH_DefaultA_IPL
#   RH_DefaultA_PFCd
#   RH_DefaultA_pCunPCC
#   RH_DefaultA_PFCm
#   RH_DefaultB_Temp
#   RH_DefaultB_AntTemp
#   RH_DefaultB_PFCd
#   RH_DefaultB_PFCv
#   RH_DefaultC_IPL
#   RH_DefaultC_Rsp
#   RH_DefaultC_PHC
#   RH_TempPar
# )

: 'delcare arrays and read text files'
declare -a array
array=(`cat roi_id.txt`)

declare -a array2
array2=(`cat roi_label.txt`)

: 'loop through both arrays'
for index in ${!array[*]}; do
  : 'index arrays'
  roi_num="${array[$index]}"
  roi_lab="${array2[$index]}"
  outfile="${roi_num}_${roi_lab}.nii"
  
  : 'print statement'
  echo "++ roi number is: ${roi_num}"
  echo "++ roi label is: ${roi_lab}"
  echo "++ output file is: ${outfile}"
  
  : 'afni function to create ROI'
  3dcalc -a yeo_1mm_norm.nii -expr 'equals(a,'$roi_num')' -prefix roi/${outfile}
done


