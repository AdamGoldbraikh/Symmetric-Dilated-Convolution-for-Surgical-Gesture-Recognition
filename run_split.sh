split_features="mix"
output_folder="Logs/Logs_split$split_features/"
mkdir "$output_folder"
for i in {1..8} 
do
    command="python3 train.py --dataset split$i \
                                                --gpu_id $((($i+1)%2)) \
                                                --num_workers 8 \
                                                --data_root SpatialCNN/Split_$split_features \
                                                --train_label Suturing/Split_$i/train.txt \
                                                --test_label Suturing/Split_$i/test.txt"
    echo "$command"
    screen -dm -L -Logfile "$output_folder/split $i" -S "split $i" sh -c "$command"

    if !((i % 2));
    then
        sleep 2m
    fi
done
