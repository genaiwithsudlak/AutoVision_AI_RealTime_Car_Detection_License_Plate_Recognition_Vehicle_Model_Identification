📌 AutoVision LPR — License Plate Recognition using YOLO + TrOCR
🚗 Upload Image → Get License Plate Text

A simple, modular, and production-ready LPR (License Plate Recognition) system built with:

YOLOv8/YOLOv10 for plate detection

TrOCR OCR for text extraction

Streamlit UI for user interaction

This repo is designed to be simple now, but fully expandable later into a full ANPR system.

⭐ Features

✔ Upload an image
✔ Automatically detect license plates
✔ Extract text using OCR
✔ Show annotated output
✔ Modular architecture (easy to add: car model, color, type)

🏗️ Project Architecture
Streamlit UI
   ↓
YOLOv8/YOLOv10 (Plate Detection)
   ↓
Plate Cropper
   ↓
TrOCR OCR Model
   ↓
Result Renderer (Text + Bounding Boxes)
   ↓
Streamlit Output

🔧 Installation
git clone https://github.com/yourusername/AutoVision-LPR.git
cd AutoVision-LPR
pip install -r requirements.txt

▶️ Run Streamlit App
streamlit run app/ui/streamlit_app.py

🧠 Models Used

YOLOv8/YOLOv10 — License Plate Detection

TrOCR-base — OCR

Optional Future Models:

ViT/CLIP (car model)

CNN (color)

CompCars (vehicle type)

📦 Future Expansion Roadmap
Phase	Feature
Phase-2	Car model recognition
Phase-2	Vehicle color classification
Phase-2	Vehicle type classification
Phase-3	Video processing
Phase-3	Real-time camera
Phase-3	Vehicle tracking
📝 License

MIT License

👨‍💻 Author

Sudarshan Lakshate
AutoVision AI Project Lead