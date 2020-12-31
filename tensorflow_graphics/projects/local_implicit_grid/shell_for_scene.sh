#!/bin/bash
part_size=(0.25 0.3 0.4 0.5)
points=(678862 339431 169715 67886)
for((i=0;i<=3;i++)); 
do
    for((j=0;j<=3;j++));
    do
        python reconstruct_geometry.py \
        --input_ply demo_data/interior_room_${points[j]}.ply \
        --part_size=${part_size[i]}

        echo ${part_size[i]} ${points[j]}
        mv interior_room_${points[j]}.reconstruct.ply interior_room_${points[j]}_${part_size[i]}.reconstruct.ply 
    done
done