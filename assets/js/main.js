const body = document.body;
const toggle = document.querySelector('[data-mobile-toggle]');
const navLinks = document.querySelectorAll('.nav-links a');

if (toggle) {
  toggle.addEventListener('click', () => {
    const willOpen = toggle.getAttribute('aria-expanded') !== 'true';
    toggle.setAttribute('aria-expanded', String(willOpen));
    toggle.setAttribute('aria-label', willOpen ? 'Fechar menu' : 'Abrir menu');
    body.classList.toggle('menu-open', willOpen);
  });
}

navLinks.forEach((link) => link.addEventListener('click', () => {
  body.classList.remove('menu-open');
  if (toggle) {
    toggle.setAttribute('aria-expanded', 'false');
    toggle.setAttribute('aria-label', 'Abrir menu');
  }
}));

const form = document.querySelector('[data-contact-form]');
if (form) {
  const feedback = form.querySelector('[data-form-feedback]');
  form.addEventListener('submit', (event) => {
    event.preventDefault();
    const data = new FormData(form);
    const name = String(data.get('nome') || '').trim();
    if (!name) {
      feedback.textContent = 'Informe seu nome para continuar.';
      form.elements.nome.focus();
      return;
    }
    feedback.textContent = '';
    const phone = String(data.get('telefone') || '').trim();
    const service = String(data.get('servico') || 'Atendimento');
    const message = String(data.get('mensagem') || '').trim();
    const parts = ['Olá, sou ' + name + '.', phone ? 'Meu telefone é ' + phone + '.' : '', 'Gostaria de solicitar: ' + service + '.', message].filter(Boolean);
    window.open('https://wa.me/5518997930933?text=' + encodeURIComponent(parts.join(' ')), '_blank', 'noopener');
  });
}
