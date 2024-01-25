#!/bin/bash
blobfuse /workspaces/PySpark/datatrainadls2/ --tmp-path=/workspaces/PySpark/blobfuse/cache  --config-file=/workspaces/PySpark/blobfuse/blobfuse.cfg