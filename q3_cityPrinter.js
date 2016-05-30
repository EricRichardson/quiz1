var majorCities = {
  BC: ["Vancouver", "Victoria", "Prince George"],
   AB: ["Edmonton", "Calgary"]
 };

 for (key in majorCities){
   console.log("%s has %d main cities", key, majorCities[key].length)
 }
