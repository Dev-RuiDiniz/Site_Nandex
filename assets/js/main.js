const body = document.body;
const toggle = document.querySelector('[data-mobile-toggle]');
const navLinks = document.querySelectorAll('.nav-links a');

if (toggle) {
  toggle.addEventListener('click', () => {
    const expanded = toggle.getAttribute('aria-expanded') === 'true';
    toggle.setAttribute('aria-expanded', String(!expanded));
    body.classList.toggle('menu-open');
  });
}

navLinks.forEach((link) => {
  link.addEventListener('click', () => {
    body.classList.remove('menu-open');
    if (toggle) toggle.setAttribute('aria-expanded', 'false');
  });
});

const form = document.querySelector('[data-contact-form]');
if (form) {
  form.addEventListener('submit', (event) => {
    event.preventDefault();
    const data = new FormData(form);
    const name = data.get('nome') || '';
    const service = data.get('servico') || 'Atendimento';
    const message = data.get('mensagem') || '';
    const phone = '5518997930933';
    const text = `Olá, sou ${name}. Gostaria de solicitar: ${service}. ${message}`;
    window.open(`https://wa.me/${phone}?text=${encodeURIComponent(text)}`, '_blank');
  });
}
