document.getElementById('space').addEventListener('change', async () => {
    document.querySelector('.containerDaReserva').innerHTML += `<div class="selectHora">
    <select name="" id="horaIni">
      <option value="Início" disabled selected style="display: none;">De:</option>
    </select> 
    <select class="clear" id="horaFim">
      <option value="Início" disabled selected style="display: none;">Até:</option>
    </select>
  </div>

  <select name="turma" id="turma">
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
    <textarea name="" id="descri" cols="30" rows="10"></textarea>
  </div>

  <div class="controls">
    <button onclick="saveRes()" class="btn-reserva" >Reservar Sala</button>
  </div>`
    
  const urlParams = new URLSearchParams(window.location.search);
  const idParam = urlParams.get('user')

    const log = {
        room: document.getElementById('space').value,
        day: document.querySelector('.event-header').textContent,
        idUser: idParam
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

    console.log(respSpace)

    // if (respSpace.mensage == 'Não há reserva para essa sala') {
    //     loadHora1()
    // }
    // else {
    //     const { disponivel } = respSpace
    //     for (let index = 0; index < disponivel.length; index++) {
    //         document.getElementById('horaIni').innerHTML += `<option value="${disponivel[index]}">${disponivel[index]}</option>`
    //     }
    //     document.getElementById('horaIni').addEventListener('change', async () => {
    //         const newHora = document.getElementById('horaIni').value
    //         document.getElementById('horaFim').classList.remove('clear')
    //         loadHora2(newHora)
    //     })
    // }
})

const loadHora1 = async () => {
    const getHora = await fetch("http://localhost:1313/hora");
    const respHora = await getHora.json();
    const theResp = respHora.length
    let loop = theResp - 1

    for (let index = 0; index < loop; index++) {
        document.getElementById('horaIni').innerHTML += `<option value="${respHora[index].horsHora}">${respHora[index].horsHora}</option>`
    }

    document.getElementById('horaIni').addEventListener('change', async () => {
        const newHora = document.getElementById('horaIni').value
        document.getElementById('horaFim').classList.remove('clear')
        loadHora2(newHora)
    })
}

const loadHora2 = async (horaIni) => {
    const getHora = await fetch("http://localhost:1313/hora");
    const respHora = await getHora.json();
    const theHora = []    
    for (let index = 0; index < respHora.length; index++) {
        theHora.push(respHora[index].horsHora)
    }
    insertHora(theHora.indexOf(String(horaIni)))
}

const insertHora = async (positionOfArray) => {
    // document.getElementById('horaFim').innerHTML = ""
    const getHora = await fetch("http://localhost:1313/hora");
    const respHora = await getHora.json();
    for (let i = positionOfArray + 1; i < respHora.length; i++) {
        document.getElementById('horaFim').innerHTML += `<option value="${respHora[i].horsHora}">${respHora[i].horsHora}</option>`    
    }
}