folder_name='Logs/Logs_split1'
mkdir $folder_name

screen -dm -L -Logfile 'Logs/Logs_split1/split 1' -S "split 1" sh -c "python3 train.py --dataset split1 \
                                            --gpu_id 0 \
                                            --num_workers 8 \
                                            --data_root SpatialCNN/Split_1 \
                                            --train_label Suturing/Split_1/train.txt \
                                            --test_label Suturing/Split_1/test.txt"


screen -dm -L -Logfile 'Logs/Logs_split1/split 2' -S "split 2" sh -c "python3 train.py --dataset split2 \
                                            --gpu_id 1 \
                                            --num_workers 8 \
                                            --data_root SpatialCNN/Split_1 \
                                            --train_label Suturing/Split_2/train.txt \
                                            --test_label Suturing/Split_2/test.txt"

screen -dm -L -Logfile 'Logs/Logs_split1/split 3' -S "split 3" sh -c "python3 train.py --dataset split3 \
                                            --gpu_id 0 \
                                            --num_workers 8 \
                                            --data_root SpatialCNN/Split_1 \
                                            --train_label Suturing/Split_3/train.txt \
                                            --test_label Suturing/Split_3/test.txt"

screen -dm -L -Logfile 'Logs/Logs_split1/split 4' -S "split 4" sh -c "python3 train.py --dataset split4 \
                                            --gpu_id 1 \
                                            --num_workers 8 \
                                            --data_root SpatialCNN/Split_1 \
                                            --train_label Suturing/Split_4/train.txt \
                                            --test_label Suturing/Split_4/test.txt"

screen -dm -L -Logfile 'Logs/Logs_split1/split 5' -S "split 5" sh -c "python3 train.py --dataset split5 \
                                            --gpu_id 0 \
                                            --num_workers 8 \
                                            --data_root SpatialCNN/Split_1 \
                                            --train_label Suturing/Split_5/train.txt \
                                            --test_label Suturing/Split_5/test.txt"

screen -dm -L -Logfile 'Logs/Logs_split1/split 6' -S "split 6" sh -c "python3 train.py --dataset split6 \
                                            --gpu_id 1 \
                                            --num_workers 8 \
                                            --data_root SpatialCNN/Split_1 \
                                            --train_label Suturing/Split_6/train.txt \
                                            --test_label Suturing/Split_6/test.txt"

screen -dm -L -Logfile 'Logs/Logs_split1/split 7' -S "split 7" sh -c "python3 train.py --dataset split7 \
                                            --gpu_id 0 \
                                            --num_workers 8 \
                                            --data_root SpatialCNN/Split_1 \
                                            --train_label Suturing/Split_7/train.txt \
                                            --test_label Suturing/Split_7/test.txt"

screen -dm -L -Logfile 'Logs/Logs_split1/split 8' -S "split 8" sh -c "python3 train.py --dataset split8 \
                                            --gpu_id 1 \
                                            --num_workers 8 \
                                            --data_root SpatialCNN/Split_1 \
                                            --train_label Suturing/Split_8/train.txt \
                                            --test_label Suturing/Split_8/test.txt"