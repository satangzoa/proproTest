export function scroll() {
  const scrollTop = document.querySelector('#scrolltoTop')

  scrollTop.addEventListener('click', () => window.scroll({ top: 0, behavior: 'smooth' }))
  window.onscroll = () => scrollFunction()

  function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
      scrollTop.style.display = 'block'
      primaryNavbar.classList.remove('rgba-black-light')
    } else {
      scrollTop.style.display = 'none'
      primaryNavbar.classList.remove('rgba-black-strong')
    }
  }
}
