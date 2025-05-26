document.addEventListener("DOMContentLoaded", carregarCursos);

async function carregarCursos() {
    try {
        const response = await fetch('/api/cursos'); // Ajuste a URL depois
        const cursos = await response.json();

        cursos.forEach(curso => {
            const courseDiv = document.createElement("div");
            courseDiv.classList.add("curso-item");

            const courseTitle = document.createElement("h3");
            courseTitle.textContent = curso.nome;
            courseDiv.appendChild(courseTitle);

            const courseDesc = document.createElement("h5");
            courseDesc.textContent = curso.descricao;
            courseDiv.appendChild(courseDesc);

            const addDisciplineButton = document.createElement("button");
            addDisciplineButton.textContent = "Adicionar Disciplina";
            addDisciplineButton.classList.add("btn-disciplina");
            courseDiv.appendChild(addDisciplineButton);

            const disciplineList = document.createElement("div");
            disciplineList.classList.add("discipline-list");
            courseDiv.appendChild(disciplineList);

            if (curso.disciplinas) {
                curso.disciplinas.forEach(disciplina => {
                    const disciplineDiv = document.createElement("div");
                    disciplineDiv.classList.add("discipline-item");

                    const disciplineTitle = document.createElement("span");
                    disciplineTitle.textContent = disciplina.nome;
                    disciplineDiv.appendChild(disciplineTitle);
                    disciplineDiv.appendChild(document.createElement("br"));

                    disciplineDiv.appendChild(createDisciplineButtons(disciplineTitle));
                    disciplineList.appendChild(disciplineDiv);
                });
            }

            addDisciplineButton.addEventListener("click", function () {
                addDiscipline(disciplineList, curso.id); // passando ID do curso
            });

            document.getElementById("courses-container").appendChild(courseDiv);
        });
    } catch (error) {
        console.error("Erro ao carregar cursos:", error);
        alert("Erro ao carregar cursos");
    }
}
