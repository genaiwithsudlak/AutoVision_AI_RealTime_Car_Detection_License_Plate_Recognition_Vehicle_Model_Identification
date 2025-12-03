# ------------------------------------------
# AutoVision-LPR Project Structure Generator
# ------------------------------------------

$root = "AutoVision-LPR"

# List of directories
$directories = @(
    "$root/docs",
    "$root/configs",
    "$root/configs/model",
    "$root/data",
    "$root/data/raw",
    "$root/data/processed",
    "$root/data/annotations",
    "$root/data/samples",

    "$root/src",
    "$root/src/utils",
    "$root/src/pipelines",
    "$root/src/models",
    "$root/src/models/detector",
    "$root/src/models/detector/model_weights",
    "$root/src/models/ocr",
    "$root/src/models/loaders",
    "$root/src/services",
    "$root/src/monitoring",

    "$root/app",
    "$root/app/static",
    "$root/app/static/css",
    "$root/app/static/images",

    "$root/deployment",
    "$root/deployment/docker",
    "$root/deployment/kubernetes",
    "$root/deployment/aws",
    "$root/deployment/triton",

    "$root/tests",
    "$root/tests/unit",
    "$root/tests/integration",
    "$root/tests/data",

    "$root/ci-cd",
    "$root/ci-cd/github",
    "$root/ci-cd/sonar",

    "$root/scripts"
)

# Create directories
foreach ($dir in $directories) {
    New-Item -ItemType Directory -Force -Path $dir | Out-Null
}

# ------------------------------------------
# Files to create
# ------------------------------------------

$files = @(
    "$root/README.md",
    "$root/LICENSE",
    "$root/.gitignore",
    "$root/pyproject.toml",
    "$root/requirements.txt",
    "$root/setup.cfg",

    "$root/docs/BRD.md",
    "$root/docs/TRD.md",
    "$root/docs/ARCHITECTURE.md",
    "$root/docs/DATASET_PLAN.md",
    "$root/docs/MILESTONES.md",
    "$root/docs/SYSTEM_DESIGN.md",
    "$root/docs/CHANGELOG.md",

    "$root/configs/config.yaml",
    "$root/configs/logging.yaml",
    "$root/configs/streamlit.yaml",
    "$root/configs/model/plate_detector.yaml",
    "$root/configs/model/ocr.yaml",
    "$root/configs/model/preprocessing.yaml",
    "$root/configs/model/postprocessing.yaml",

    "$root/src/__init__.py",
    "$root/src/utils/logger.py",
    "$root/src/utils/file_utils.py",
    "$root/src/utils/image_utils.py",
    "$root/src/utils/config_loader.py",
    "$root/src/utils/response_format.py",

    "$root/src/pipelines/detection_pipeline.py",
    "$root/src/pipelines/ocr_pipeline.py",
    "$root/src/pipelines/postprocess_pipeline.py",
    "$root/src/pipelines/pipeline_orchestrator.py",

    "$root/src/models/detector/yolo_plate_detector.py",
    "$root/src/models/ocr/trocr_ocr.py",
    "$root/src/models/ocr/tesseract_ocr.py",
    "$root/src/models/loaders/model_loader.py",
    "$root/src/models/loaders/preprocessing.py",

    "$root/src/services/inference_service.py",
    "$root/src/services/streamlit_service.py",
    "$root/src/services/api_service.py",

    "$root/src/monitoring/metrics.py",
    "$root/src/monitoring/tracing.py",
    "$root/src/monitoring/health_check.py",

    "$root/app/streamlit_app.py",

    "$root/deployment/docker/Dockerfile",
    "$root/deployment/docker/entrypoint.sh",

    "$root/deployment/kubernetes/deployment.yaml",
    "$root/deployment/kubernetes/service.yaml",
    "$root/deployment/kubernetes/ingress.yaml",

    "$root/deployment/aws/s3_structure.md",
    "$root/deployment/aws/ec2_setup.md",
    "$root/deployment/aws/ecr_push.ps1",
    "$root/deployment/aws/autoscaling_group.yaml",
    "$root/deployment/aws/cloudwatch_monitoring.md",

    "$root/deployment/triton/triton_config.pbtxt",

    "$root/tests/unit/test_detection.py",
    "$root/tests/unit/test_ocr.py",
    "$root/tests/unit/test_utils.py",
    "$root/tests/integration/test_full_pipeline.py",
    "$root/tests/integration/test_api.py",

    "$root/ci-cd/github/ci.yml",
    "$root/ci-cd/github/cd.yml",
    "$root/ci-cd/github/test.yml",
    "$root/ci-cd/github/codeql.yml",
    "$root/ci-cd/sonar/sonar-project.properties",

    "$root/scripts/download_weights.py",
    "$root/scripts/preprocess_dataset.py",
    "$root/scripts/train_detector.py",
    "$root/scripts/train_ocr.py",
    "$root/scripts/benchmark.py",
    "$root/scripts/gen_folder_structure.ps1"
)

# Create files
foreach ($file in $files) {
    New-Item -ItemType File -Force -Path $file | Out-Null
}

# ------------------------------------------
# Auto-create __init__.py for every Python folder
# ------------------------------------------

$pythonFolders = @(
    "$root/src",
    "$root/src/utils",
    "$root/src/pipelines",
    "$root/src/models",
    "$root/src/models/detector",
    "$root/src/models/ocr",
    "$root/src/models/loaders",
    "$root/src/services",
    "$root/src/monitoring"
)

foreach ($pf in $pythonFolders) {
    New-Item -ItemType File -Force -Path "$pf/__init__.py" | Out-Null
}

Write-Host "AutoVision-LPR project structure successfully generated!"
