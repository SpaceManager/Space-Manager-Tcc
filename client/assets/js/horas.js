const aasyn = async () => {
  const getHora = await fetch("http://localhost:1313/hora");
  const respHora = await getHora.json();

};
aasyn();
document.getElementById("space").addEventListener("change", async () => {
  document.querySelector(".containerDaReserva").innerHTML = "";
  document.querySelector(
    ".containerDaReserva"
  ).innerHTML += `<div class="selectHora">
    <select name="" id="horaIni">
      <option value="Início" disabled selected style="display: none;">De:</option>
    </select> 
    <select id="horaFim" disabled>
      <option value="Início" disabled selected style="display: none;">Até:</option>
    </select>
  </div> 
  <div class="atributosReserva"></div>
  `;

  const urlParams = new URLSearchParams(window.location.search);
  const idParam = urlParams.get("user");

  const log = {
    room: document.getElementById("space").value,
    day: document.querySelector(".event-header").textContent,
    idUser: idParam,
  };
  const init = {
    method: "POST",
    headers: {
      "content-type": "application/json",
    },
    body: JSON.stringify(log),
  };
  const getSpace = await fetch(`http://localhost:1313/spaceSeach`, init);
  const respSpace = await getSpace.json();


  const horariosL = respSpace["livre"];
  const horariosO = respSpace["reservado"];
  const { allHoras } = respSpace;

  if (horariosL.length > 1) {
    for (let index = 0; index < horariosL.length - 1; index++) {
      if (horariosL[index] != null) {
        document.getElementById(
          "horaIni"
        ).innerHTML += `<option value="${horariosL[index]}">${horariosL[index]}</option>`;
      }
    }
  } else {
    alert("Todas os horários estão indisponíveis para essa sala!");
  }

  document.getElementById("horaIni").addEventListener("change", async () => {
    document.getElementById("horaFim").innerHTML = ''
    document.querySelector(
      ".atributosReserva"
    ).innerHTML = ''
    document.getElementById("horaFim").disabled = false;

    document.querySelector(
      ".atributosReserva"
    ).innerHTML += `<select name="turma" id="turma">
              <option value="espaco" style="display: none;" disabled selected>
                Turmas
              </option>
            </select>
          
            <select name="materia" id="materia">
              <option value="espaco" style="display: none;" disabled selected>
              Matérias
              </option>
              </select>
              
              <div class="descricao">
              <h5>Descrição da Reserva</h5>
              <textarea name="" id="descri" cols="30" rows="3"></textarea>
              </div>
              
              <div class="controls">
              <button onclick="saveRes()" class="btn-reserva" >Reservar Sala</button>
              </div>`;

    const insertHora = async () => {
      const horaFim = document.getElementById("horaFim");
      const getHora = await fetch("http://localhost:1313/hora");
      const respHora = await getHora.json();
      const horarios = [];

      for (let index = 0; index < respHora.length; index++) {
        horarios.push(respHora[index].horsHora);
      }
      const newHora = document.getElementById("horaIni").value;
      for (
        let index = horarios.indexOf(newHora) + 1;
        index < horarios.length;
        index++
      ) {
        horaFim.innerHTML += `
                    <option value="${horarios[index]}" class="horaFim${index}" style="display: none;">
                    ${horarios[index]}
                    </option>
                    `;
      }
      const indexOF = []

      for (let index = horarios.indexOf(newHora); index < allHoras.length; index++) {
        if (document.querySelector(`.horaFim${index}`) != null) {
          document.querySelector(`.horaFim${index}`).style.display = 'block'
        }
        console.log(allHoras[index])
        console.log(horarios.indexOf(newHora))
        console.log(allHoras[horarios[index]])
        console.log(allHoras.indexOf(horarios[index]))
        console.log('------------------------------')
        indexOF.push(allHoras.indexOf(horarios[index]))
        console.log(indexOF[index])
        console.log('------------------------------')

        if (allHoras.indexOf(horarios[index]) == (-1)) break
      }
    };

    insertHora();
    loadTurma();
    loadMat();
  });
});
