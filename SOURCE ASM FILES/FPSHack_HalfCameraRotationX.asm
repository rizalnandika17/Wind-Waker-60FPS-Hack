#To be inserted at 80178cb4
###############################
##FPSHack_HalfCameraRotationX##
###############################

lis r17, 0x817F
stfs f17, 0x0010 (r17) #Store f17 in Temp01 because the game actually uses it here.
lfs f17, 0x0004 (r17) #Load FloatSlowdown

fmuls f0, f0, f17 #Multiply f0 (delta zoom) by FloatSlowdown

lfs f17, 0x0010 (r17) #Restore the f17 backup

fadds f0, f1, f0 #Vanilla