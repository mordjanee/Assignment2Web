function generateRandomColor() {
    var color = "#" + Math.random().toString(16).slice(-3);
    document.body.style.backgroundColor.setProperty("background-color", color);
  }