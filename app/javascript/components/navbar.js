const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lausol');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-lausol-white');
      } else {
        navbar.classList.remove('navbar-lausol-white');
      }
    });
  }
}



export { initUpdateNavbarOnScroll };
