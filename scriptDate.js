

const ZoneDate = document.querySelector(".ZoneDate");
console.log(ZoneDate);


function GetHier(date = new Date()) {
    const hier = new Date(date.getTime());
    hier.setDate(date.getDate() - 1);

    const JourTab = ["dimanche","lundi","mardi","mercredi","jeudi","vendredi","samedi"];
    let jourSem = JourTab[hier.getDay()];

    let numJour = hier.getDate();

    const MoisTab = ["janvier","février","mars","avril","mai","juin","juillet","août","septembre","octobre","novembre","décembre"];
    let moisJour = MoisTab[hier.getMonth()];

    let anneeJour = hier.getFullYear();

    // console.log(hier);

    let datelib = "Chronogrammes du " + jourSem + " " + numJour + " " + moisJour + " " + anneeJour;
    
    // console.log(datelib);
    return [hier,datelib];
  }

// date d'hier dans les 2 formats
console.log(GetHier()[0]); 
console.log(GetHier()[1]); 


window.addEventListener("load", (event) => {
    console.log("page complètement chargée, insertion date d'hier...");
    ZoneDate.innerText = GetHier()[1];
});