#!/bin/bash
part_size=(0.25 0.3 0.4 0.5)
npoints=(1024 2048 4096)
steps=(2001 3001 4001)
for((i=0;i<=2;i++)); 
do
        for((j=0;j<=2;j++)); 
        do
                for((k=0;k<=2;k++)); 
                do
                        python reconstruct_geometry.py \
                        --input_ply demo_data/bunny.ply \
                        --part_size=${part_size[i]} --npoints=${npoints[j]} --steps=${steps[k]}

                        echo ${part_size[i]} ${npoints[j]} ${steps[k]}
                        mv bunny.reconstruct.ply bunny_${part_size[i]}_${npoints[j]}_${steps[k]}.ply
                done
        done
done