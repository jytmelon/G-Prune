alias python=python3
CKPT_PATH=$1
NAME=$(echo "$CKPT_PATH" | awk -F'/' '{print $NF}')
echo $NAME
##### set images path 
DATA_PATH=$2
EVAL_TYPE=$3
# JSON_PATH=$2/$3.json
JSON_PATH=/data/JYT-work/LLaVA/playground/data/eval/scienceqa/llava_test_CQM-A.json
############################### eval multi-image 
DATASET=$(echo "$DATASET" | awk -F'.' '{print $(NF - 1)}')
RESULT_NAME="logs/${NAME}/${DATASET}"
echo $RESULT_NAME

mkdir -p logs/${NAME}

file_path=${RESULT_NAME}/result.jsonl

bash scripts/interleave/eval_multiprocess.sh \
${CKPT_PATH} \
${JSON_PATH} \
${RESULT_NAME} \
${DATA_PATH} \
"" \
1 0

python3 llava/eval/evaluate_interleave.py --result-dir ${RESULT_NAME}



