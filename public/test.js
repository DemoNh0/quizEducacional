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



// --------------------------------------------------- \\



async function addCourse() {
    const courseName = prompt("Digite o nome do curso:");
    const courseDesc = prompt("Digite a descrição do curso:");

    if (!courseName || !courseDesc) return;

    const courseObj = {
        nome: courseName,
        descricao: courseDesc,
        disciplinas: []
    };

    try {
        const response = await fetch('/api/curso', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(courseObj)
        });

        if (!response.ok) throw new Error("Erro ao salvar curso");

        const savedCourse = await response.json(); // deve conter o ID do curso salvo

        const courseDiv = document.createElement("div");
        courseDiv.classList.add("curso-item");
        courseDiv.dataset.courseId = savedCourse.id; // salvar o ID pra usar depois se necessário

        const courseTitle = document.createElement("h3");
        courseTitle.textContent = savedCourse.nome;
        courseDiv.appendChild(courseTitle);

        const courseTitleDesc = document.createElement("h5");
        courseTitleDesc.textContent = savedCourse.descricao;
        courseDiv.appendChild(courseTitleDesc);

        const addDisciplineButton = document.createElement("button");
        addDisciplineButton.textContent = "Adicionar Disciplina";
        addDisciplineButton.classList.add("btn-disciplina");
        courseDiv.appendChild(addDisciplineButton);

        const removeCourseButton = document.createElement("button");
        removeCourseButton.textContent = "Remover Curso";
        removeCourseButton.classList.add("btn-remove");
        courseDiv.appendChild(removeCourseButton);

        const editCourseButton = document.createElement("button");
        editCourseButton.textContent = "Editar Curso";
        editCourseButton.classList.add("btn-edit");
        courseDiv.appendChild(editCourseButton);

        const disciplineList = document.createElement("div");
        disciplineList.classList.add("discipline-list");
        courseDiv.appendChild(disciplineList);

        addDisciplineButton.addEventListener("click", function () {
            addDiscipline(disciplineList, savedCourse.id);
        });

        removeCourseButton.addEventListener("click", function () {
            courseDiv.remove();
            // (Opcional) Enviar DELETE para o backend
        });

        editCourseButton.addEventListener("click", function () {
            const newCourseName = prompt("Digite o novo nome do curso:", courseTitle.textContent);
            if (newCourseName) {
                courseTitle.textContent = newCourseName;
                // (Opcional) Atualizar o backend com o novo nome
            }
            const newDesc = prompt("Digite a nova descrição:", courseTitleDesc.textContent);
            if (newDesc) {
                courseTitleDesc.textContent = newDesc;
                // (Opcional) Atualizar o backend com a nova descrição
            }
        });

        document.getElementById("courses-container").appendChild(courseDiv);

        alert("Curso salvo com sucesso!");

    } catch (error) {
        console.error("Erro ao salvar curso: ", error);
        alert("Erro ao salvar curso.");
    }
}
