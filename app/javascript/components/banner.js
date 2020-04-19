import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Life is short", "Pick your poison"],
    typeSpeed: 150,
    loop: true
  });
}

export { loadDynamicBannerText };
