// Este é o arquivo principal de JavaScript para o projeto Gestão de Condomínios.
// Aqui você pode adicionar comportamentos globais ou importar outros scripts.

// Importação do Turbo Drive (para navegação rápida no Rails)
import "@hotwired/turbo-rails";

// Importação do Stimulus (para adicionar interatividade)
import { Application } from "@hotwired/stimulus";
import { definitionsFromContext } from "@hotwired/stimulus-webpack-helpers";

// Configuração do Stimulus
const application = Application.start();
const context = require.context("../controllers", true, /\.js$/);
application.load(definitionsFromContext(context));

// Importação do Bootstrap (se estiver usando)
import "bootstrap";
import "bootstrap/dist/js/bootstrap.bundle";

// Comportamentos Globais
document.addEventListener("DOMContentLoaded", function () {
  console.log("Aplicação carregada!");

  // Exemplo: Adicionar um evento de clique a todos os botões com a classe .btn
  document.querySelectorAll(".btn").forEach((button) => {
    button.addEventListener("click", function (event) {
      event.preventDefault();
      alert("Botão clicado!");
    });
  });

  // Exemplo: Validação de formulários
  document.querySelectorAll("form").forEach((form) => {
    form.addEventListener("submit", function (event) {
      const inputs = form.querySelectorAll("input, select, textarea");
      let isValid = true;

      inputs.forEach((input) => {
        if (!input.value.trim()) {
          isValid = false;
          input.classList.add("is-invalid");
        } else {
          input.classList.remove("is-invalid");
        }
      });

      if (!isValid) {
        event.preventDefault();
        alert("Por favor, preencha todos os campos obrigatórios.");
      }
    });
  });

  // Exemplo: Máscara para campos de data
  document.querySelectorAll('input[type="date"]').forEach((input) => {
    input.addEventListener("input", function () {
      const value = input.value;
      if (value.length === 10) {
        console.log("Data selecionada:", value);
      }
    });
  });
});

// Exemplo: Função para exibir mensagens de alerta
function showAlert(message, type = "success") {
  const alertDiv = document.createElement("div");
  alertDiv.className = `alert alert-${type}`;
  alertDiv.textContent = message;

  document.body.prepend(alertDiv);

  setTimeout(() => {
    alertDiv.remove();
  }, 5000);
}

// Exemplo: Função para carregar dados via AJAX
function loadData(url, callback) {
  fetch(url)
    .then((response) => response.json())
    .then((data) => callback(data))
    .catch((error) => console.error("Erro ao carregar dados:", error));
}

// Exemplo: Uso da função loadData
document.addEventListener("DOMContentLoaded", function () {
  const loadButton = document.getElementById("load-data-button");
  if (loadButton) {
    loadButton.addEventListener("click", function () {
      loadData("/api/v1/faturas", function (data) {
        console.log("Dados carregados:", data);
        showAlert("Dados carregados com sucesso!", "success");
      });
    });
  }
});