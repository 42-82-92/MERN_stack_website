import React from 'react';

import { About, Footer, Header, Skills, Testimonial, Work } from './container';
import { NavBar } from './components';

const App = () => {
  return (
    <div className="App">
      <NavBar />
      <Header />
      <About />
      <Work />
      <Skills />
      <Testimonial />
      <Footer />
    </div>
  );
}

export default App;
