from flask import Flask, render_template, request
from pipeline.prediction_pipeline import hybrid_recommendation

app = Flask(__name__)

# Defining route for home page. 
@app.route("/", methods=["GET", "POST"])
def home():
    recommendations = None # no recommendation right now. 

    if request.method == "POST":
        try:
            user_id = int(request.form["userID"])

            recommendations = hybrid_recommendation(user_id)

        except Exception as e:
            print("Error Occured.")
    
    return render_template("index.html", recommendations=recommendations)