# Functional AI Metrics Analyzer (Haskell) 🧠

A data analysis tool built entirely in **Haskell** to process, evaluate, and generate reports on the performance metrics of various Artificial Intelligence models (such as CNNs, MLPs, and RNNs).

##  Overview
This project demonstrates the application of the **Functional Programming Paradigm** to solve data processing tasks. It reads raw experimental data from AI models (including precision, loss, and epochs), applies mathematical evaluations, and outputs a formatted summary report.

##  Functional Programming Concepts Applied
This system leverages core functional features to ensure immutable and efficient data processing:
* **Recursion:** Used for list traversal, summing epochs, and calculating average precision.
* **Guards:** Implemented to classify model performance into categories (Excellent, Good, Regular, Deficient) based on precision thresholds.
* **Pattern Matching:** Applied to elegantly separate list heads and tails during metric calculations.
* **List Comprehensions:** Used to dynamically parse lines from the input file and filter models that meet specific quality criteria.

## 📁 Project Architecture
The project is modularized into four main components:
* `TiposIA.hs`: Defines custom data structures (`Experimento` and `Desempeno`).
* `AnalisisIA.hs`: Contains the core mathematical and logical operations.
* `ArchivoIA.hs`: Handles pure File I/O operations (reading `experimentos.txt` and generating `reporte.txt`).
* `Main.hs`: The entry point that orchestrates the data pipeline.

##  Academic Context
Developed as part of the **Programming Paradigms** coursework for the Artificial Intelligence Engineering program at the **Instituto Tecnológico de La Paz**.
