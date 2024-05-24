# 使用方式
```shell
docker run -d --restart=always --runtime=nvidia --gpus='"device=0"' -p 20000:11434 -v /data:/data -v /root/.ollama/:/root/.ollama/ --name ollama-code ollama:v1.0.0
```

# modelfile参考
```shell
FROM /data/llama3-chinese-alpaca.gguf

TEMPLATE """{{ if .System }}<|start_header_id|>system<|end_header_id|>
{{ .System }}<|eot_id|>{{ end }}{{ if .Prompt }}<|start_header_id|>user<|end_header_id|>
{{ .Prompt }}<|eot_id|>{{ end }}<|start_header_id|>assistant<|end_header_id|>
{{ .Response }}<|eot_id|>"""

PARAMETER num_keep 24
PARAMETER stop "<|start_header_id|>"
PARAMETER stop "<|end_header_id|>"
PARAMETER stop "<|eot_id|>"
```

# 模型导入
```shell
ollama create llama3_Q8:8b -f Q8_0-00001-of-00001.txt
```