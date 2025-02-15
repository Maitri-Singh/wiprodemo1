
import React from "react";
import { BrowserRouter as Router, Routes, Route, Link } from "react-router-dom";
import "./App.css";
import ListImages from "./ListImg";
import { Counter } from "./Counter";
import { Employee } from './Employee';

function App() {
  return (
    <Router>
      <nav>
      <Link to="/">CounterusingUseStaeHook</Link> | <Link to="/Employee">Employee</Link>
        <ul>
          <li><Link to="/">Counter</Link></li>
          <li><Link to="/images">List Images</Link></li>
          <li></li>
        </ul>
      </nav>

      <Routes>
        <Route path="/" element={<Counter />} />
        <Route path="/images" element={<ListImages />} />
        <Route path="/Employee" element={<Employee name="Wipro"/>}/>
      </Routes>
    </Router>
  );
}

export default App;